.class public Lcom/google/android/music/store/Store;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/Store$DowngradeException;,
        Lcom/google/android/music/store/Store$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x1f

.field static final GENERATED_CANONICAL_NAMES_ARRAY_SIZE:I = 0x4

.field static final GENERATED_IDS_ARRAY_SIZE:I = 0x4

.field public static final IGNORE_ARTIST_KEEP_ON_STATUS:Z = false

#the value of this static final field might be set in the static constructor
.field static final LOGV:Z = false

.field static final OPERATIONS_PER_TXN:I = 0x200

.field static final OPERATIONS_PER_TXN_AS_STRING:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "MusicStore"

.field static final TXN_YIELD_TIME_IN_MILLISEC:J = 0xc8L

.field public static final USE_ARTIST_KEEP_ON_STATUS:Z = true

.field private static sDownloadQueueProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/google/android/music/store/Store;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

.field private final mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

.field private mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/music/store/Store;

    invoke-direct {v0}, Lcom/google/android/music/store/Store;-><init>()V

    sput-object v0, Lcom/google/android/music/store/Store;->sInstance:Lcom/google/android/music/store/Store;

    .line 56
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/Store;->OPERATIONS_PER_TXN_AS_STRING:Ljava/lang/String;

    .line 67
    const-string v0, "MusicStore"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/store/Store;->LOGV:Z

    .line 2367
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    .line 2369
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "MUSIC.Id"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "reason"

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "Album"

    const-string v2, "Album"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "Artist"

    const-string v2, "Artist"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "AlbumArtist"

    const-string v2, "AlbumArtist"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "Title"

    const-string v2, "Title"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "DownloadStatus"

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    sget-object v0, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    const-string v1, "Size"

    const-string v2, "Size"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/music/store/Store;->mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    new-instance v0, Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-direct {v0}, Lcom/android/common/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/store/Store;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    .line 82
    new-instance v0, Lcom/google/android/music/store/MediaStoreImporter;

    invoke-direct {v0}, Lcom/google/android/music/store/MediaStoreImporter;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    .line 2031
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/store/Store;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/store/Store;)Lcom/android/common/content/SyncStateContentProviderHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/store/Store;)Lcom/google/android/music/store/MediaStoreImporter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    return-object v0
.end method

.method static canonicalizeAndGenerateId(Lcom/google/android/music/store/TagNormalizer;Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .parameter "normalizer"
    .parameter "originalValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/store/TagNormalizer;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1523
    const-wide/16 v1, 0x0

    .line 1524
    .local v1, id:J
    const/4 v0, 0x0

    .line 1526
    .local v0, canonicalValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1527
    invoke-virtual {p0, p1}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1530
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1531
    move-object v0, p1

    .line 1533
    :cond_0
    invoke-static {v0}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v1

    .line 1536
    :cond_1
    new-instance v3, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public static computeAccountHash(Landroid/accounts/Account;)I
    .locals 2
    .parameter "account"

    .prologue
    .line 1410
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/music/store/Store;->computeAccountHash(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static computeAccountHash(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "accountName"
    .parameter "accountType"

    .prologue
    .line 1423
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1424
    .local v3, hashInput:Ljava/lang/String;
    new-instance v1, Lcom/google/android/music/utils/BobJenkinsLookup3;

    invoke-direct {v1}, Lcom/google/android/music/utils/BobJenkinsLookup3;-><init>()V

    .line 1427
    .local v1, hash:Lcom/google/android/music/utils/BobJenkinsLookup3;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/music/utils/BobJenkinsLookup3;->hashbig([B)J

    move-result-wide v4

    long-to-int v2, v4

    .line 1428
    .local v2, hashCode:I
    if-nez v2, :cond_0

    .line 1429
    const-string v4, "MusicStore"

    const-string v5, "Hash collision with media store value"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    const/4 v2, 0x1

    .line 1432
    :cond_0
    return v2

    .line 1433
    .end local v2           #hashCode:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1434
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "MusicStore"

    const-string v5, "UTF-8 is not supported?"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed to convert to UTF-8"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static countLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 10
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 318
    const/4 v8, 0x0

    .line 319
    .local v8, count:I
    const-string v1, "MUSIC"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(1)"

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SourceAccount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 325
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 331
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 334
    return v8

    .line 328
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to count local media"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static deleteFromMediaStore(Landroid/content/Context;J)Z
    .locals 8
    .parameter "context"
    .parameter "mediaStoreId"

    .prologue
    .line 1231
    const/4 v0, 0x0

    .line 1232
    .local v0, success:Z
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .end local v0           #success:Z
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1237
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1238
    .local v6, file:Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1243
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1244
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    .end local v6           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 1246
    const/4 v3, 0x1

    .line 1263
    :goto_0
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v0, v2

    .end local v2           #file:Ljava/io/File;
    .local v0, file:Ljava/io/File;
    move v2, v3

    .line 1266
    :goto_1
    if-eqz v2, :cond_0

    .line 1267
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v0           #file:Ljava/io/File;
    move-result p0

    .line 1268
    .local p0, deleted:I
    if-nez p0, :cond_4

    .line 1272
    const-string p0, "MusicStore"

    .end local p0           #deleted:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio file with id "

    .end local v1           #uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string p2, " is not found in the media store"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_0
    :goto_2
    return v2

    .line 1248
    .local v0, c:Landroid/database/Cursor;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #file:Ljava/io/File;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    .local v3, success:Z
    :goto_3
    goto :goto_0

    .end local v3           #success:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 1251
    .end local v2           #file:Ljava/io/File;
    .restart local v6       #file:Ljava/io/File;
    :cond_3
    :try_start_3
    const-string v2, "MusicStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to locate audio file in media store. Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1256
    const/4 v2, 0x1

    .local v2, success:Z
    move v3, v2

    .local v3, success:I
    move-object v2, v6

    .end local v6           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    goto :goto_0

    .line 1258
    .end local v2           #file:Ljava/io/File;
    .end local v3           #success:I
    .restart local v6       #file:Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v3, v6

    .line 1259
    .end local v6           #file:Ljava/io/File;
    .local v2, e:Ljava/lang/SecurityException;
    .local v3, file:Ljava/io/File;
    :goto_4
    :try_start_4
    const-string v4, "MusicStore"

    const-string v5, "Failed to delete music file due to security exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1261
    const/4 v2, 0x0

    .line 1263
    .local v2, success:Z
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v0, v3

    .line 1264
    .end local v3           #file:Ljava/io/File;
    .local v0, file:Ljava/io/File;
    goto :goto_1

    .line 1263
    .end local v2           #success:Z
    .local v0, c:Landroid/database/Cursor;
    .restart local v6       #file:Ljava/io/File;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #file:Ljava/io/File;
    .end local p1
    .local p0, file:Ljava/io/File;
    :goto_5
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw p1

    .line 1274
    .end local v0           #c:Landroid/database/Cursor;
    .local p0, deleted:I
    .restart local p1
    :cond_4
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1275
    const-string v0, "MusicStore"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #uri:Landroid/net/Uri;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected return value of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #deleted:I
    const-string v1, " when deleting media store audio file + "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1263
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #uri:Landroid/net/Uri;
    .local v2, file:Ljava/io/File;
    .local p0, context:Landroid/content/Context;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .end local v2           #file:Ljava/io/File;
    .local p0, file:Ljava/io/File;
    goto :goto_5

    .local v2, e:Ljava/lang/SecurityException;
    .restart local v3       #file:Ljava/io/File;
    .local p0, context:Landroid/content/Context;
    :catchall_2
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .end local v3           #file:Ljava/io/File;
    .local p0, file:Ljava/io/File;
    goto :goto_5

    .line 1258
    .local v2, file:Ljava/io/File;
    .local p0, context:Landroid/content/Context;
    :catch_1
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    move-object v2, v7

    goto :goto_4
.end method

.method public static deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 382
    const-string v0, "MUSIC"

    const-string v1, "SourceAccount = 0"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method public static deleteLocalMusicAndPlaylists(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 396
    invoke-static {p0}, Lcom/google/android/music/store/Store;->deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 397
    invoke-static {p0}, Lcom/google/android/music/store/PlayList;->deleteMediaStorePlaylists(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 398
    return-void
.end method

.method public static deleteRemoteMusicAndPlaylists(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4
    .parameter "context"
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 409
    const/4 v0, 0x0

    .line 411
    .local v0, count:I
    const-string v1, "MUSIC"

    const-string v2, "SourceAccount != 0"

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    invoke-static {p1}, Lcom/google/android/music/store/PlayList;->deleteSyncedPlaylists(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    if-lez v0, :cond_0

    .line 423
    invoke-static {p0, p1}, Lcom/google/android/music/store/RecentItemsManager;->update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 431
    :cond_0
    const-string v1, "LISTITEMS"

    const-string v2, "MusicSourceAccount != 0"

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    const-string v1, "LIST_TOMBSTONES"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    const-string v1, "LISTITEM_TOMBSTONES"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    const-string v1, "_sync_state"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    const-string v1, "KEEPON"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    const-string v1, "SHOULDKEEPON"

    invoke-virtual {p1, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private downgrade(Ljava/lang/String;Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .parameter "path"
    .parameter "readable"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/store/Store;->mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store$DatabaseHelper;->close()V

    .line 148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, dbFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    const-string v2, "MusicStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sucessfully deleted old database file at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    iget-object v2, p0, Lcom/google/android/music/store/Store;->mDowngraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    .end local v0           #dbFile:Ljava/io/File;
    :cond_0
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    :goto_1
    monitor-exit v1

    return-object v2

    .line 152
    .restart local v0       #dbFile:Ljava/io/File;
    :cond_1
    const-string v2, "MusicStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete old database file at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    .end local v0           #dbFile:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 157
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1
.end method

.method public static generateId(Ljava/lang/String;)J
    .locals 4
    .parameter "string"

    .prologue
    .line 2049
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 2050
    :cond_0
    const-wide/16 v2, 0x0

    .line 2054
    :goto_0
    return-wide v2

    .line 2052
    :cond_1
    new-instance v1, Lcom/google/android/music/utils/BobJenkinsLookup3;

    invoke-direct {v1}, Lcom/google/android/music/utils/BobJenkinsLookup3;-><init>()V

    .line 2054
    .local v1, hash:Lcom/google/android/music/utils/BobJenkinsLookup3;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/utils/BobJenkinsLookup3;->hashbig([B)J
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 2055
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2056
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "MusicStore"

    const-string v3, "UTF-8 is not supported?"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to convert to UTF-8"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .parameter "readable"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    const-string v2, "db access on main thread"

    invoke-static {v1, v2}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Lcom/google/android/music/store/Store$DowngradeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 139
    .local v0, e:Lcom/google/android/music/store/Store$DowngradeException;
    invoke-virtual {v0}, Lcom/google/android/music/store/Store$DowngradeException;->getFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/android/music/store/Store;->downgrade(Ljava/lang/String;Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/music/store/Store;->sInstance:Lcom/google/android/music/store/Store;

    invoke-direct {v0, p0}, Lcom/google/android/music/store/Store;->init(Landroid/content/Context;)V

    .line 92
    sget-object v0, Lcom/google/android/music/store/Store;->sInstance:Lcom/google/android/music/store/Store;

    return-object v0
.end method

.method public static getPreferredMusicIdForSongId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 19
    .parameter "db"
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 514
    const-wide/16 v13, 0x0

    .line 515
    .local v13, fileId:J
    const/4 v15, -0x1

    .line 516
    .local v15, localCopyType:I
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MUSIC.Id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "LocalCopyType"

    aput-object v4, v5, v3

    .line 520
    .local v5, projection:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 522
    .local v12, c:Landroid/database/Cursor;
    :try_start_0
    const-string v4, "MUSIC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MUSIC.SongId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "20"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    .end local v12           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    move v8, v15

    .end local v15           #localCopyType:I
    .local v8, localCopyType:I
    move-wide v6, v13

    .line 527
    .end local v5           #projection:[Ljava/lang/String;
    .end local v13           #fileId:J
    .local v6, fileId:J
    :goto_0
    :try_start_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 528
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 529
    .local v4, currentFileId:J
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 530
    .local v3, currentCopyType:I
    if-le v3, v8, :cond_2

    .line 532
    move-wide v4, v4

    .line 533
    .end local v6           #fileId:J
    .local v4, fileId:J
    move v3, v3

    .line 535
    .end local v8           #localCopyType:I
    .local v3, localCopyType:I
    const/16 v6, 0x12c

    if-ne v3, v6, :cond_0

    move/from16 v16, v3

    .end local v3           #localCopyType:I
    .local v16, localCopyType:I
    move-wide/from16 v17, v4

    .end local v4           #fileId:J
    .local v17, fileId:J
    move-wide/from16 v3, v17

    .end local v17           #fileId:J
    .local v3, fileId:J
    move/from16 v5, v16

    .line 543
    .end local v16           #localCopyType:I
    .local v5, localCopyType:I
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 546
    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_1

    .line 547
    .end local v5           #localCopyType:I
    .end local p0           #c:Landroid/database/Cursor;
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #fileId:J
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find file for song id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .local v3, localCopyType:I
    .restart local v4       #fileId:J
    .restart local p0       #c:Landroid/database/Cursor;
    .restart local p1
    :cond_0
    move/from16 v16, v3

    .end local v3           #localCopyType:I
    .restart local v16       #localCopyType:I
    move-wide/from16 v17, v4

    .end local v4           #fileId:J
    .restart local v17       #fileId:J
    move-wide/from16 v3, v17

    .end local v17           #fileId:J
    .local v3, fileId:J
    move/from16 v5, v16

    .end local v16           #localCopyType:I
    .restart local v5       #localCopyType:I
    :goto_2
    move v8, v5

    .end local v5           #localCopyType:I
    .restart local v8       #localCopyType:I
    move-wide v6, v3

    .line 540
    .end local v3           #fileId:J
    .restart local v6       #fileId:J
    goto :goto_0

    .line 543
    .end local v6           #fileId:J
    .end local v8           #localCopyType:I
    .local v5, projection:[Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v13       #fileId:J
    .restart local v15       #localCopyType:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception p0

    move-object/from16 v4, p0

    move v3, v15

    .end local v15           #localCopyType:I
    .local v3, localCopyType:I
    move-wide/from16 p1, v13

    .end local v13           #fileId:J
    .local p1, fileId:J
    move-object/from16 p0, v12

    .end local v5           #projection:[Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v4

    .line 549
    .end local p0           #c:Landroid/database/Cursor;
    .local v3, fileId:J
    .local p1, songId:J
    :cond_1
    return-wide v3

    .line 543
    .end local v3           #fileId:J
    .restart local v6       #fileId:J
    .restart local v8       #localCopyType:I
    .restart local p0       #c:Landroid/database/Cursor;
    :catchall_1
    move-exception p1

    move-object/from16 v4, p1

    move v3, v8

    .end local v8           #localCopyType:I
    .local v3, localCopyType:I
    move-wide/from16 p1, v6

    .end local v6           #fileId:J
    .local p1, fileId:J
    goto :goto_3

    .local v3, currentCopyType:I
    .local v4, currentFileId:J
    .restart local v6       #fileId:J
    .restart local v8       #localCopyType:I
    .local p1, songId:J
    :cond_2
    move v5, v8

    .end local v4           #currentFileId:J
    .end local v8           #localCopyType:I
    .local v5, localCopyType:I
    move-wide v3, v6

    .end local v6           #fileId:J
    .local v3, fileId:J
    goto :goto_2

    .end local v3           #fileId:J
    .end local v5           #localCopyType:I
    .restart local v6       #fileId:J
    .restart local v8       #localCopyType:I
    :cond_3
    move v5, v8

    .end local v8           #localCopyType:I
    .restart local v5       #localCopyType:I
    move-wide v3, v6

    .end local v6           #fileId:J
    .restart local v3       #fileId:J
    goto :goto_1
.end method

.method public static getSongId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 12
    .parameter "db"
    .parameter "musicId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 492
    const-wide/16 v9, 0x0

    .line 493
    .local v9, songId:J
    const/4 v8, 0x0

    .line 495
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "MUSIC"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "SongId"

    aput-object v3, v2, v0

    const-string v3, "Id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 500
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v11, :cond_1

    .line 501
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 503
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 504
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    .line 506
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 509
    return-wide v9
.end method

.method private static getTotalNewKeeponSize(Landroid/database/Cursor;)J
    .locals 6
    .parameter "c"

    .prologue
    .line 1022
    const-wide/16 v2, 0x0

    .line 1023
    .local v2, total:J
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1024
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1025
    const/4 v4, 0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1026
    .local v1, localLocation:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1027
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1029
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_0

    .line 1033
    .end local v0           #f:Ljava/io/File;
    .end local v1           #localLocation:Ljava/lang/String;
    :cond_1
    return-wide v2
.end method

.method private declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;

    if-nez v0, :cond_0

    .line 100
    iput-object p1, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    .line 101
    const-string v0, "MusicStore"

    const-string v1, "Database version: 31"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Lcom/google/android/music/store/Store$DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/google/android/music/store/Store$DatabaseHelper;-><init>(Lcom/google/android/music/store/Store;)V

    iput-object v0, p0, Lcom/google/android/music/store/Store;->mDbOpener:Lcom/google/android/music/store/Store$DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private lock()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method static resetLocalCopyForOrphanedShouldKeepOnMusic(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .parameter "db"

    .prologue
    .line 1314
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1315
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "LocalCopyPath"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1316
    const-string v1, "LocalCopyType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1318
    const-string v1, "MUSIC"

    const-string v2, "LocalCopyType=200 AND Id NOT IN (SELECT DISTINCT MusicId FROM SHOULDKEEPON)"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static safeClose(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 236
    if-eqz p0, :cond_0

    .line 238
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MusicStore"

    const-string v2, "Failed to close cursor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static safeClose(Landroid/database/sqlite/SQLiteProgram;)V
    .locals 3
    .parameter "program"

    .prologue
    .line 253
    if-eqz p0, :cond_0

    .line 255
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MusicStore"

    const-string v2, "Failed to close SQLiteProgram"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unlock()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method


# virtual methods
.method public appendAlbumToPlaylist(JJ)I
    .locals 4
    .parameter "playlistId"
    .parameter "albumId"

    .prologue
    .line 2163
    const/4 v1, 0x0

    .line 2164
    .local v1, result:I
    const/4 v2, 0x0

    .line 2165
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2170
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2171
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendAlbum(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2172
    const/4 v2, 0x1

    .line 2174
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2177
    return v1

    .line 2174
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public appendArtistToPlaylist(JJ)I
    .locals 4
    .parameter "playlistId"
    .parameter "artistId"

    .prologue
    .line 2187
    const/4 v1, 0x0

    .line 2188
    .local v1, result:I
    const/4 v2, 0x0

    .line 2189
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2194
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2195
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendArtist(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2196
    const/4 v2, 0x1

    .line 2198
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2201
    return v1

    .line 2198
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public appendGenreToPlaylist(JJ)I
    .locals 4
    .parameter "playlistId"
    .parameter "genreId"

    .prologue
    .line 2211
    const/4 v1, 0x0

    .line 2212
    .local v1, result:I
    const/4 v2, 0x0

    .line 2213
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2218
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2219
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendGenre(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2220
    const/4 v2, 0x1

    .line 2222
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2225
    return v1

    .line 2222
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public appendGenreToPlaylist(JJJ)I
    .locals 9
    .parameter "playlistId"
    .parameter "genreId"
    .parameter "albumId"

    .prologue
    .line 2235
    const/4 v7, 0x0

    .line 2236
    .local v7, result:I
    const/4 v8, 0x0

    .line 2237
    .local v8, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2242
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 2243
    invoke-static/range {v0 .. v6}, Lcom/google/android/music/store/PlayList;->appendGenre(Landroid/database/sqlite/SQLiteDatabase;JJJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 2244
    const/4 v8, 0x1

    .line 2246
    invoke-virtual {p0, v0, v8}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2249
    return v7

    .line 2246
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0, v8}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v1
.end method

.method public appendPlaylistItem(JJ)J
    .locals 6
    .parameter "playlistId"
    .parameter "musicId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 2143
    const-wide/16 v1, 0x0

    .line 2144
    .local v1, newItemId:J
    const/4 v3, 0x0

    .line 2145
    .local v3, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2150
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2151
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendItem(Landroid/database/sqlite/SQLiteDatabase;JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 2152
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v3, v4

    .line 2154
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2156
    return-wide v1

    .line 2152
    :cond_0
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    .line 2154
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v4
.end method

.method public appendPlaylistToPlaylist(JJ)I
    .locals 4
    .parameter "playlistId"
    .parameter "sourcePlaylistId"

    .prologue
    .line 2259
    const/4 v1, 0x0

    .line 2260
    .local v1, result:I
    const/4 v2, 0x0

    .line 2261
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2266
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2267
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->appendPlaylist(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2268
    const/4 v2, 0x1

    .line 2270
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2273
    return v1

    .line 2270
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public beginRead()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->lock()V

    .line 170
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/music/store/Store;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    .line 176
    :cond_0
    return-object v0

    .line 172
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    :cond_1
    throw v1
.end method

.method public beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 197
    .local v1, success:Z
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->lock()V

    .line 199
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/google/android/music/store/Store;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    const/4 v1, 0x1

    .line 203
    if-nez v1, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    .line 207
    :cond_0
    return-object v0

    .line 203
    :catchall_0
    move-exception v2

    if-nez v1, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    :cond_1
    throw v2
.end method

.method public clearOrphanedArtwork()V
    .locals 5

    .prologue
    .line 1354
    const/4 v1, 0x0

    .line 1355
    .local v1, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1357
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "ARTWORK"

    const-string v3, "ARTWORK.AlbumId NOT IN (SELECT DISTINCT MUSIC.AlbumId FROM MUSIC)"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    const/4 v1, 0x1

    .line 1364
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1367
    return-void

    .line 1364
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method public countLocalMusic()I
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 311
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0}, Lcom/google/android/music/store/Store;->countLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 313
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method createDatabase()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    return-void
.end method

.method public createPlaylist(Ljava/lang/String;)J
    .locals 5
    .parameter "name"

    .prologue
    .line 2063
    const-wide/16 v1, 0x0

    .line 2064
    .local v1, newPlaylistId:J
    const/4 v3, 0x0

    .line 2065
    .local v3, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2067
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1}, Lcom/google/android/music/store/PlayList;->createPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/google/android/music/store/PlayList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/store/PlayList;->getId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 2068
    const/4 v3, 0x1

    .line 2070
    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2072
    return-wide v1

    .line 2070
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v4
.end method

.method public deleteAllMatchingLocalMusicFiles(Landroid/content/Context;J)I
    .locals 20
    .parameter "context"
    .parameter "musicId"

    .prologue
    .line 1146
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v16, idsToDelete:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v13, 0x0

    .line 1148
    .local v13, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1150
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    move-object v0, v4

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/Store;->getSongId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v18

    .line 1151
    .local v18, songId:J
    const-string v5, "MUSIC"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Id"

    aput-object v8, v6, v7

    const-string v7, "SongId=? AND LocalCopyType=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x12c

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1164
    if-eqz v13, :cond_1

    .line 1165
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1166
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1169
    .end local v18           #songId:J
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 1170
    .local v14, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v5, "MusicStore"

    const-string v6, "File not found"

    invoke-static {v5, v6, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1172
    invoke-static {v13}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1173
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1176
    .end local v14           #e:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v12, 0x0

    .line 1177
    .local v12, count:I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    .line 1178
    .local v17, localMusicId:Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/store/Store;->deleteLocalMusicFile(Landroid/content/Context;J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1179
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1172
    .end local v12           #count:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #localMusicId:Ljava/lang/Long;
    .restart local v18       #songId:J
    :cond_1
    invoke-static {v13}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1173
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 1172
    .end local v18           #songId:J
    :catchall_0
    move-exception v5

    invoke-static {v13}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1173
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5

    .line 1182
    .restart local v12       #count:I
    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_2
    return v12
.end method

.method public declared-synchronized deleteEverything()V
    .locals 8
    .annotation build Lcom/google/android/music/VisibleForTesting;
    .end annotation

    .prologue
    .line 111
    monitor-enter p0

    const/4 v4, 0x0

    .line 112
    .local v4, success:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 114
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    sget-object v0, Lcom/google/android/music/store/Schema;->ALL_TABLES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 115
    .local v5, table:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v5           #table:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    .line 119
    :try_start_2
    invoke-virtual {p0, v1, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    monitor-exit p0

    return-void

    .line 119
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {p0, v1, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public deleteLocalMusic()V
    .locals 3

    .prologue
    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 341
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0}, Lcom/google/android/music/store/Store;->deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    const/4 v1, 0x1

    .line 344
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 346
    return-void

    .line 344
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method public deleteLocalMusicFile(Landroid/content/Context;J)Z
    .locals 11
    .parameter "context"
    .parameter "musicId"

    .prologue
    .line 1196
    const/4 v5, 0x0

    .line 1198
    .local v5, success:Z
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p0, v6, p2, p3}, Lcom/google/android/music/store/MusicFile;->getSummaryMusicFile(Lcom/google/android/music/store/Store;Lcom/google/android/music/store/MusicFile;J)Lcom/google/android/music/store/MusicFile;

    move-result-object v4

    .line 1200
    .local v4, music:Lcom/google/android/music/store/MusicFile;
    invoke-virtual {v4}, Lcom/google/android/music/store/MusicFile;->getLocalCopyType()I

    move-result v6

    const/16 v7, 0x12c

    if-ne v6, v7, :cond_0

    .line 1201
    invoke-virtual {v4}, Lcom/google/android/music/store/MusicFile;->getSourceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1202
    .local v2, mediaStoreId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 1203
    invoke-static {p1, v2, v3}, Lcom/google/android/music/store/Store;->deleteFromMediaStore(Landroid/content/Context;J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1204
    const/4 v5, 0x0

    .line 1205
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1207
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v6, "MUSIC"

    const-string v7, "Id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1213
    invoke-virtual {v4}, Lcom/google/android/music/store/MusicFile;->getSourceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/android/music/store/PlayList;->deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1214
    const/4 v5, 0x1

    .line 1216
    :try_start_2
    invoke-virtual {p0, v0, v5}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1226
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #mediaStoreId:J
    .end local v4           #music:Lcom/google/android/music/store/MusicFile;
    :cond_0
    :goto_0
    return v5

    .line 1216
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #mediaStoreId:J
    .restart local v4       #music:Lcom/google/android/music/store/MusicFile;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v0, v5}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v6
    :try_end_2
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1221
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #mediaStoreId:J
    .end local v4           #music:Lcom/google/android/music/store/MusicFile;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1223
    .local v1, e:Lcom/google/android/music/store/DataNotFoundException;
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public deletePlaylist(Landroid/content/Context;J)Z
    .locals 10
    .parameter "context"
    .parameter "playlistId"

    .prologue
    const/4 v9, 0x0

    .line 2076
    const/4 v2, 0x0

    .line 2077
    .local v2, list:Lcom/google/android/music/store/PlayList;
    const/4 v4, 0x0

    .line 2078
    .local v4, success:Z
    const/4 v1, 0x0

    .line 2079
    .local v1, deleted:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2081
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v0, p2, p3, v5}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v2

    .line 2082
    if-nez v2, :cond_0

    .line 2083
    const-string v5, "MusicStore"

    const-string v6, "Requested playlist is not found"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2084
    const/4 v5, 0x0

    .line 2090
    invoke-virtual {p0, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2100
    :goto_0
    return v5

    .line 2086
    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v2, v0, v5, v6}, Lcom/google/android/music/store/PlayList;->delete(Landroid/database/sqlite/SQLiteDatabase;ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 2087
    const/4 v4, 0x1

    .line 2090
    invoke-virtual {p0, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2093
    invoke-virtual {v2}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 2096
    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2098
    .local v3, playlistUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v3           #playlistUri:Landroid/net/Uri;
    :cond_1
    move v5, v1

    .line 2100
    goto :goto_0

    .line 2090
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v5
.end method

.method public deletePlaylistItem(JJ)Z
    .locals 4
    .parameter "playlistId"
    .parameter "itemId"

    .prologue
    .line 2277
    const/4 v2, 0x0

    .line 2278
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2282
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2283
    const/4 v3, 0x0

    invoke-static {v0, p3, p4, v3}, Lcom/google/android/music/store/PlayList$Item;->readItem(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    move-result-object v1

    .line 2284
    .local v1, item:Lcom/google/android/music/store/PlayList$Item;
    if-eqz v1, :cond_0

    .line 2285
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/google/android/music/store/PlayList$Item;->delete(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2287
    :cond_0
    const/4 v2, 0x1

    .line 2289
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2291
    return v2

    .line 2289
    .end local v1           #item:Lcom/google/android/music/store/PlayList$Item;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public deleteRemoteMusicAndPlaylists(Landroid/content/Context;Z)Z
    .locals 6
    .parameter "context"
    .parameter "sync"

    .prologue
    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, somethingChanged:Z
    const/4 v2, 0x0

    .line 360
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 362
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p1, v0}, Lcom/google/android/music/store/Store;->deleteRemoteMusicAndPlaylists(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    const/4 v2, 0x1

    .line 365
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 370
    if-nez v1, :cond_0

    if-eqz p2, :cond_1

    .line 371
    :cond_0
    iget-object v3, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 374
    :cond_1
    return v1

    .line 365
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public endRead(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    .line 186
    return-void
.end method

.method public endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .parameter "db"
    .parameter "success"

    .prologue
    .line 219
    if-eqz p2, :cond_0

    .line 220
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    .line 226
    return-void

    .line 224
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/music/store/Store;->unlock()V

    throw v0
.end method

.method public executeDelete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 935
    const/4 v2, 0x0

    .line 936
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 938
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 939
    .local v1, result:I
    const/4 v2, 0x1

    .line 942
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return v1

    .end local v1           #result:I
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public executeInsert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 5
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 903
    const/4 v3, 0x0

    .line 904
    .local v3, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 906
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 907
    .local v1, result:J
    const/4 v3, 0x1

    .line 910
    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-wide v1

    .end local v1           #result:J
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v4
.end method

.method public executeQuery(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 863
    const/4 v11, 0x0

    .line 864
    .local v11, success:Z
    const/4 v10, 0x0

    .line 865
    .local v10, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 867
    :try_start_0
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 869
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    const/4 v11, 0x1

    .line 872
    if-nez v11, :cond_0

    .line 873
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 874
    const/4 v10, 0x0

    .line 876
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 879
    return-object v10

    .line 872
    :catchall_0
    move-exception v1

    if-nez v11, :cond_1

    .line 873
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 874
    const/4 v10, 0x0

    .line 876
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "query"

    .prologue
    .line 853
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/store/Store;->executeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public executeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "query"
    .parameter "selectionArgs"

    .prologue
    .line 830
    const/4 v2, 0x0

    .line 831
    .local v2, success:Z
    const/4 v0, 0x0

    .line 832
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 834
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 835
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    const/4 v2, 0x1

    .line 838
    if-nez v2, :cond_0

    .line 839
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 840
    const/4 v0, 0x0

    .line 842
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 845
    return-object v0

    .line 838
    :catchall_0
    move-exception v3

    if-nez v2, :cond_1

    .line 839
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 840
    const/4 v0, 0x0

    .line 842
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method public executeStatement(Ljava/lang/String;)V
    .locals 3
    .parameter "sql"

    .prologue
    .line 888
    const/4 v1, 0x0

    .line 889
    .local v1, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 891
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    const/4 v1, 0x1

    .line 894
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 896
    return-void

    .line 894
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method public executeUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 919
    const/4 v2, 0x0

    .line 920
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 922
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 923
    .local v1, result:I
    const/4 v2, 0x1

    .line 926
    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return v1

    .end local v1           #result:I
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public getAlbumIdsAndAlbumKeepOnIdsForArtist(J)Landroid/database/Cursor;
    .locals 12
    .parameter "artistId"

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 753
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 757
    .local v10, artistIdStr:Ljava/lang/String;
    const/4 v1, 0x1

    const-string v2, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "MUSIC.AlbumId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "KEEPON.KeepOnId"

    aput-object v5, v3, v4

    const-string v4, "MUSIC.AlbumArtistId=? OR MUSIC.ArtistId=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    const/4 v6, 0x1

    aput-object v10, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 763
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 764
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v11

    .end local v10           #artistIdStr:Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public getAlbumsRequiringArtworkDownload(Ljava/util/Set;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1440
    .local p1, topChoices:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1441
    .local v4, strTopChoices:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1442
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1443
    .local v0, albumId:Ljava/lang/Long;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1446
    .end local v0           #albumId:Ljava/lang/Long;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1448
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v2, "MUSIC.AlbumId"

    .line 1449
    .local v2, musicAlbumId:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT DISTINCT MUSIC.AlbumId FROM MUSIC WHERE AlbumArtLocation IS NOT NULL AND SourceAccount <> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MUSIC.AlbumId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NOT IN (SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ARTWORK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AlbumId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ARTWORK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "LocalLocation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IS NOT NULL)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND MUSIC.AlbumId IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1463
    .local v3, query:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/android/music/store/Store;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5

    .line 1449
    .end local v3           #query:Ljava/lang/String;
    :cond_2
    const-string v6, " LIMIT 10"

    goto :goto_1
.end method

.method public getArtLocationForAlbum(J)Ljava/lang/String;
    .locals 11
    .parameter "albumId"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1496
    const-string v2, "MUSIC"

    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "AlbumArtLocation"

    aput-object v0, v3, v1

    const-string v4, "AlbumId=? AND AlbumArtLocation IS NOT NULL"

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v8, "LocalCopyType DESC"

    const-string v9, "1"

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/music/store/Store;->executeQuery(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1505
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1506
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1509
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1511
    :goto_0
    return-object v0

    .line 1509
    :cond_0
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v0, v6

    .line 1511
    goto :goto_0

    .line 1509
    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getArtistIdsForAlbum(J)Landroid/database/Cursor;
    .locals 6
    .parameter "albumId"

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 782
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, albumIdStr:Ljava/lang/String;
    const-string v3, "SELECT _artistId FROM ( SELECT DISTINCT AlbumArtistId as _artistId FROM MUSIC WHERE AlbumId=? UNION  SELECT DISTINCT ArtistId as _artistId FROM MUSIC WHERE AlbumId=?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 791
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 792
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v1

    .end local v0           #albumIdStr:Ljava/lang/String;
    .end local v1           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method public getArtwork(J)Ljava/lang/String;
    .locals 10
    .parameter "albumId"

    .prologue
    const/4 v9, 0x0

    .line 1389
    const/4 v8, 0x0

    .line 1390
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1392
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "ARTWORK"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LocalLocation"

    aput-object v4, v2, v3

    const-string v3, "AlbumId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1396
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1397
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1401
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1402
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-object v1

    .line 1401
    :cond_0
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1402
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v1, v9

    goto :goto_0

    .line 1401
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1402
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public getDeletableFiles(Ljava/io/File;)Landroid/database/Cursor;
    .locals 5
    .parameter "location"

    .prologue
    .line 951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT Id, LocalCopyPath\nFROM MUSIC\nWHERE LocalCopyPath IS NOT NULL\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AND LocalCopyPath LIKE \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x21

    invoke-static {v3, v4}, Lcom/google/android/music/utils/DbUtils;->escapeForLikeOperator(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' ESCAPE \'!\'\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT IN (SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MusicId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SHOULDKEEPON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, query:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 951
    .end local v0           #query:Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public getKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;Z)Landroid/database/Cursor;
    .locals 13
    .parameter "limit"
    .parameter "inColumns"
    .parameter
    .parameter "includeAlreadyKeptOn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 620
    .local p3, doNotIncludeIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 621
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "SHOULDKEEPON JOIN MUSIC ON (SHOULDKEEPON.MusicId = MUSIC.Id)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 624
    sget-object v2, Lcom/google/android/music/store/Store;->sDownloadQueueProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 626
    const/4 v12, 0x0

    .line 627
    .local v12, excludeIds:Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 628
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 629
    .local v10, currentMusicIds:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .local v11, currentMusicIdsCSV:Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 634
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id NOT IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 638
    .end local v10           #currentMusicIds:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v11           #currentMusicIdsCSV:Ljava/lang/StringBuilder;
    :cond_1
    const-string v3, ""

    .line 639
    .local v3, where:Ljava/lang/String;
    if-nez p4, :cond_2

    .line 640
    const-string v3, "LocalCopyPath IS NULL OR LocalCopyType <> 200"

    .line 644
    :cond_2
    if-eqz v12, :cond_4

    .line 645
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    .end local v3           #where:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 648
    .restart local v3       #where:Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    .end local v3           #where:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 650
    .restart local v3       #where:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 651
    const/4 v3, 0x0

    .line 654
    :cond_5
    const/4 v9, 0x0

    .line 655
    .local v9, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 657
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "MusicId"

    const/4 v6, 0x0

    const-string v7, "MUSIC.AlbumArtistId ASC, MUSIC.AlbumId ASC, MUSIC.TrackNumber ASC"

    move-object v2, p2

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 668
    if-eqz v9, :cond_6

    .line 669
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    :cond_6
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v9

    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method public getLastUsedCacheFiles(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "directory"

    .prologue
    const/4 v10, 0x0

    .line 1106
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v10

    .line 1128
    :goto_0
    return-object v1

    .line 1110
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1114
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "MUSIC"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "LocalCopyPath"

    aput-object v4, v2, v3

    const-string v3, "LocalCopyPath LIKE ? AND LocalCopyType=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "10"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1121
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 1122
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v1, v9

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v1, v10

    .line 1128
    goto :goto_0

    .line 1126
    .end local v9           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public getLocalIdFromRemoteIdForPlaylist(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/Long;
    .locals 10
    .parameter "account"
    .parameter "sourceId"

    .prologue
    const/4 v9, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 453
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 455
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "LISTS"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Id"

    aput-object v4, v2, v3

    const-string v3, "SourceAccount=? AND SourceId=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/google/android/music/store/Store;->computeAccountHash(Landroid/accounts/Account;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 459
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 464
    :cond_0
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 465
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v1, v9

    :goto_0
    return-object v1

    .line 462
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 464
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 465
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 465
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public getMusicFile(J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "id"
    .parameter "colums"

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 601
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "MUSIC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 603
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 604
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v8

    .end local v8           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public getMusicIdForSystemMediaStoreId(JZ)J
    .locals 12
    .parameter "mediaStoreId"
    .parameter "importIfMissing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 2322
    const-wide/16 v9, 0x0

    .line 2323
    .local v9, musicId:J
    const/4 v8, 0x0

    .line 2324
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2330
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "MUSIC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Id"

    aput-object v4, v2, v3

    const-string v3, "SourceAccount=? AND SourceId=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2337
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2338
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    .line 2341
    :cond_0
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 2342
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2345
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-nez v1, :cond_2

    .line 2348
    if-eqz p3, :cond_1

    .line 2350
    iget-object v1, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    iget-object v2, p0, Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/MediaStoreImporter;->doImport(Landroid/content/Context;)Z

    .line 2351
    invoke-virtual {p0, p1, p2, v11}, Lcom/google/android/music/store/Store;->getMusicIdForSystemMediaStoreId(JZ)J

    move-result-wide v1

    .line 2358
    :goto_0
    return-wide v1

    .line 2341
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 2342
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 2353
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not found in the media store."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-wide v1, v9

    .line 2358
    goto :goto_0
.end method

.method public getNeedToKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;
    .locals 1
    .parameter "limit"
    .parameter "inColumns"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 614
    .local p3, doNotIncludeIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/music/store/Store;->getKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getOrphanedArtwork()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 1343
    const-string v0, "SELECT ARTWORK.AlbumId,LocalLocation\nFROM ARTWORK\nWHERE ARTWORK.AlbumId NOT IN (SELECT DISTINCT MUSIC.AlbumId FROM MUSIC)"

    .line 1349
    .local v0, query:Ljava/lang/String;
    const-string v1, "SELECT ARTWORK.AlbumId,LocalLocation\nFROM ARTWORK\nWHERE ARTWORK.AlbumId NOT IN (SELECT DISTINCT MUSIC.AlbumId FROM MUSIC)"

    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getPreferredMusicId(J)J
    .locals 8
    .parameter "musicId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 479
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/Store;->getSongId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v3

    .line 480
    .local v3, songId:J
    invoke-static {v0, v3, v4}, Lcom/google/android/music/store/Store;->getPreferredMusicIdForSongId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v1

    .line 481
    .local v1, newMusicId:J
    sget-boolean v5, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v5, :cond_0

    cmp-long v5, v1, p1

    if-eqz v5, :cond_0

    .line 482
    const-string v5, "MusicStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using preferred file id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for file id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-wide v1

    .end local v1           #newMusicId:J
    .end local v3           #songId:J
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5
.end method

.method public getRemoteArtLocationForAlbum(J)Ljava/lang/String;
    .locals 11
    .parameter "albumId"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1473
    const-string v2, "MUSIC"

    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "AlbumArtLocation"

    aput-object v0, v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlbumId=? AND SourceAccount <> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "AlbumArtLocation"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " IS NOT NULL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v9, "1"

    move-object v0, p0

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/music/store/Store;->executeQuery(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1481
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1485
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1487
    :goto_0
    return-object v0

    .line 1485
    :cond_0
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v0, v6

    .line 1487
    goto :goto_0

    .line 1485
    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getSizeOfUndownloadedKeepOnFiles()J
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 967
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Size"

    aput-object v4, v3, v5

    invoke-virtual {p0, v6, v3, v6}, Lcom/google/android/music/store/Store;->getNeedToKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object v0

    .line 968
    .local v0, c:Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .line 970
    .local v1, totalSize:J
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 971
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 975
    :cond_0
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return-wide v1

    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v3
.end method

.method public getSizeToDownloadAlbum(J)J
    .locals 11
    .parameter "albumId"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 984
    const-string v2, "MUSIC"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "Size"

    aput-object v0, v3, v1

    const-string v0, "LocalCopyPath"

    aput-object v0, v3, v5

    const-string v4, "AlbumId= ? AND LocalCopyType <> 300"

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    move-object v0, p0

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/music/store/Store;->executeQuery(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 992
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {v10}, Lcom/google/android/music/store/Store;->getTotalNewKeeponSize(Landroid/database/Cursor;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 994
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getSizeToDownloadPlaylist(J)J
    .locals 11
    .parameter "playlistId"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 1003
    const-string v2, "LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "Size"

    aput-object v0, v3, v1

    const-string v0, "LocalCopyPath"

    aput-object v0, v3, v5

    const-string v4, "LISTITEMS.ListId=? AND LocalCopyType <> 300"

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v6, "MUSIC.Id"

    move-object v0, p0

    move-object v8, v7

    move-object v9, v7

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/music/store/Store;->executeQuery(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1010
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {v10}, Lcom/google/android/music/store/Store;->getTotalNewKeeponSize(Landroid/database/Cursor;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1012
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getSourceAccountAndId(J[I[Ljava/lang/String;)V
    .locals 11
    .parameter "musicId"
    .parameter "outSourceType"
    .parameter "outSourceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v10, 0x0

    .line 277
    .local v10, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 279
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "MUSIC"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SourceAccount"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "SourceId"

    aput-object v5, v3, v4

    const-string v4, "MUSIC.Id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 294
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p3, v1

    .line 296
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 304
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 306
    return-void

    .line 299
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find file with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :catchall_0
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 304
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public getTotalCachedSize(I)J
    .locals 11
    .parameter "type"

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 806
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 808
    .local v10, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "MUSIC"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sum(LocalCopySize)"

    aput-object v5, v3, v4

    const-string v4, "LocalCopyPath IS NOT NULL AND LocalCopyType=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 814
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 820
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 821
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-wide v1

    .line 817
    :cond_0
    const-wide/16 v1, 0x0

    .line 820
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 821
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 820
    :catchall_0
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 821
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public hasLocalArtwork()Z
    .locals 9

    .prologue
    .line 1329
    const/4 v8, 0x0

    .line 1330
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1332
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "ARTWORK"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1334
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1336
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1337
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return v1

    .line 1336
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1337
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public importMediaStore(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/store/MediaStoreImporter;->doImport(Landroid/content/Context;)Z

    .line 2363
    return-void
.end method

.method public isAlbumSelectedAsKeepOn(JZ)Z
    .locals 11
    .parameter "albumId"
    .parameter "useArtistKeepOn"

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 702
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 704
    .local v10, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 706
    .local v5, strAlbumIdArgs:[Ljava/lang/String;
    const/4 v1, 0x1

    const-string v2, "KEEPON"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "KeepOnId"

    aput-object v6, v3, v4

    const-string v4, "AlbumId=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 708
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    const/4 v1, 0x1

    .line 723
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 724
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return v1

    .line 711
    :cond_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 713
    if-nez p3, :cond_1

    .line 714
    const/4 v1, 0x0

    .line 723
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 724
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 717
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "MUSIC JOIN KEEPON ON (MUSIC.AlbumArtistId = KEEPON.ArtistId) "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "KEEPON.KeepOnId"

    aput-object v6, v3, v4

    const-string v4, "MUSIC.AlbumId=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 721
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 723
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 724
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 723
    .end local v5           #strAlbumIdArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 724
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public isArtistSelectedAsKeepOn(J)Z
    .locals 11
    .parameter "artistId"

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 681
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 683
    .local v10, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "KEEPON"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "KeepOnId"

    aput-object v5, v3, v4

    const-string v4, "ArtistId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 686
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 688
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 689
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return v1

    .line 688
    :catchall_0
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 689
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public isPlaylistSelectedAsKeepOn(J)Z
    .locals 11
    .parameter "playlistId"

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 730
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 732
    .local v10, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "KEEPON"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "KeepOnId"

    aput-object v5, v3, v4

    const-string v4, "ListId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 735
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 737
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 738
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return v1

    .line 737
    :catchall_0
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 738
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public markSongPlayed(J)V
    .locals 14
    .parameter "xId"

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1079
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 1080
    .local v11, success:Z
    const/4 v8, 0x0

    .line 1082
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v13, "Id=?"

    .line 1083
    .local v13, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1084
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v1, "MUSIC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "PlayCount"

    aput-object v5, v2, v3

    const-string v3, "Id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1086
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1088
    .local v9, playCount:J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1089
    .local v12, values:Landroid/content/ContentValues;
    const-string v1, "PlayCount"

    const-wide/16 v2, 0x1

    add-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1090
    const-string v1, "LastPlayDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1091
    const-string v1, "MUSIC"

    const-string v2, "Id=?"

    invoke-virtual {v0, v1, v12, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    move v11, v1

    .line 1094
    .end local v9           #playCount:J
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1095
    invoke-virtual {p0, v0, v11}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1097
    return-void

    .line 1091
    .restart local v9       #playCount:J
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v1, 0x0

    move v11, v1

    goto :goto_0

    .line 1094
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v9           #playCount:J
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v13           #where:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1095
    invoke-virtual {p0, v0, v11}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v1
.end method

.method public movePlaylistItem(JJJ)V
    .locals 9
    .parameter "playlistId"
    .parameter "itemToMove"
    .parameter "desiredPreviousItem"

    .prologue
    .line 2303
    const/4 v8, 0x0

    .line 2304
    .local v8, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2308
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2309
    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-nez v1, :cond_0

    .line 2310
    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/store/PlayList;->moveItemToTop(Landroid/database/sqlite/SQLiteDatabase;JJZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 2315
    :goto_0
    invoke-virtual {p0, v0, v8}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2317
    return-void

    .line 2312
    :cond_0
    const/4 v7, 0x1

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    :try_start_1
    invoke-static/range {v0 .. v7}, Lcom/google/android/music/store/PlayList;->moveItem(Landroid/database/sqlite/SQLiteDatabase;JJJZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    goto :goto_0

    .line 2315
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0, v8}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v1
.end method

.method public removeFileLocation(J)V
    .locals 9
    .parameter "xid"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1285
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1286
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "LocalCopyPath"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1287
    const-string v3, "LocalCopyType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1289
    const/4 v1, 0x0

    .line 1290
    .local v1, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1292
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "MUSIC"

    const-string v4, "Id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_0

    .line 1294
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Music.Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1298
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3

    .line 1296
    :cond_0
    const/4 v1, 0x1

    .line 1298
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1300
    return-void
.end method

.method public renamePlaylist(Landroid/content/Context;JLjava/lang/String;)I
    .locals 10
    .parameter "context"
    .parameter "playlistId"
    .parameter "newName"

    .prologue
    .line 2104
    const/4 v2, 0x0

    .line 2105
    .local v2, list:Lcom/google/android/music/store/PlayList;
    const/4 v4, 0x0

    .line 2106
    .local v4, success:Z
    const/4 v1, 0x0

    .line 2107
    .local v1, foundAndRenamed:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2109
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v0, p2, p3, v6}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v2

    .line 2110
    if-nez v2, :cond_0

    .line 2111
    const-string v6, "MusicStore"

    const-string v7, "Requested playlist is not found"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2112
    const/4 v6, 0x0

    .line 2118
    invoke-virtual {p0, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2131
    :goto_0
    return v6

    .line 2114
    :cond_0
    :try_start_1
    invoke-static {v0, p2, p3, p4}, Lcom/google/android/music/store/PlayList;->rename(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 2115
    const/4 v4, 0x1

    .line 2118
    invoke-virtual {p0, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2121
    invoke-virtual {v2}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 2124
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 2125
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {v5, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    sget-object v6, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2128
    .local v3, playlistUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2131
    .end local v3           #playlistUri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_1
    if-eqz v1, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    .line 2118
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v6

    .line 2131
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public requiresDownloadManager([J)[J
    .locals 14
    .parameter "ids"

    .prologue
    const/4 v4, 0x1

    const/4 v13, 0x0

    .line 561
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 562
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "MUSIC"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 563
    const-string v2, "SourceAccount != 0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 565
    new-instance v10, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 566
    .local v10, csv:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v2, p1

    if-ge v11, v2, :cond_1

    .line 567
    aget-wide v2, p1, v11

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 568
    array-length v2, p1

    sub-int/2addr v2, v4

    if-eq v11, v2, :cond_0

    .line 569
    const-string v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 572
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND MUSIC.Id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 574
    const/4 v8, 0x0

    .line 575
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 577
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MUSIC.Id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 580
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 581
    .local v9, count:I
    if-nez v9, :cond_2

    .line 592
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 593
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v2, v13

    :goto_1
    return-object v2

    .line 584
    :cond_2
    :try_start_1
    new-array v12, v9, [J

    .line 585
    .local v12, ret:[J
    const/4 v11, 0x0

    .line 586
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 587
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v12, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 592
    :cond_3
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 593
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v2, v12

    goto :goto_1

    .line 592
    .end local v9           #count:I
    .end local v12           #ret:[J
    :catchall_0
    move-exception v2

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 593
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method public saveArtwork(JLjava/io/File;)V
    .locals 3
    .parameter "albumId"
    .parameter "location"

    .prologue
    .line 1371
    const/4 v1, 0x0

    .line 1372
    .local v1, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1374
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/google/android/music/store/Store;->saveArtworkLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1376
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1378
    return-void

    .line 1376
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method protected saveArtworkLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z
    .locals 4
    .parameter "db"
    .parameter "albumId"
    .parameter "location"

    .prologue
    .line 1381
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1382
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "AlbumId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1383
    const-string v1, "LocalLocation"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    const-string v1, "ARTWORK"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1385
    const/4 v1, 0x1

    return v1
.end method

.method public saveFileLocation(JLjava/lang/String;I)V
    .locals 9
    .parameter "musicId"
    .parameter "localPath"
    .parameter "localCopyType"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1044
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1045
    .local v2, values:Landroid/content/ContentValues;
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1046
    const-string v3, "LocalCopyPath"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const/16 v3, 0x64

    if-eq p4, v3, :cond_0

    const/16 v3, 0xc8

    if-eq p4, v3, :cond_0

    .line 1049
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for localCopyStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1053
    :cond_0
    const-string v3, "LocalCopyType"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1060
    :goto_0
    const/4 v1, 0x0

    .line 1061
    .local v1, success:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1063
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "MUSIC"

    const-string v4, "Id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_2

    .line 1067
    const-string v3, "MusicStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to save music location for unknown Music.Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1075
    :goto_1
    return-void

    .line 1056
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #success:Z
    :cond_1
    const-string v3, "LocalCopyPath"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1057
    const-string v3, "LocalCopyType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1070
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #success:Z
    :cond_2
    const/4 v1, 0x1

    .line 1073
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method
