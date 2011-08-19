.class public Lcom/android/vending/model/DownloadProgressManager;
.super Ljava/lang/Object;
.source "DownloadProgressManager.java"


# static fields
.field private static volatile sDownloadProgressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/model/DownloadProgress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContentObservable:Landroid/database/ContentObservable;

.field private volatile mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mDownloadObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHandlerThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/model/DownloadProgressManager;->sDownloadProgressMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    .line 56
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 58
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mContentObservable:Landroid/database/ContentObservable;

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Download progress manager runner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 62
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mHandlerThreadId:J

    .line 64
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vending/model/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/android/vending/model/DownloadProgressManager$1;

    iget-object v1, p0, Lcom/android/vending/model/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/model/DownloadProgressManager$1;-><init>(Lcom/android/vending/model/DownloadProgressManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mDownloadObserver:Landroid/database/ContentObserver;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/model/DownloadProgressManager;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/vending/model/DownloadProgressManager;->makeCursorIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/model/DownloadProgressManager;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/vending/model/DownloadProgressManager;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/vending/model/DownloadProgressManager;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private assertOnHandlerThread()V
    .locals 6

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 102
    .local v0, curThreadId:J
    iget-wide v2, p0, Lcom/android/vending/model/DownloadProgressManager;->mHandlerThreadId:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 103
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This should only be run on DownloadProgressManager\'s handler thread ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/vending/model/DownloadProgressManager;->mHandlerThreadId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Instead we\'re on thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_0
    return-void
.end method

.method private generateDownloadProgressFromCursor()Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/model/DownloadProgress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct/range {p0 .. p0}, Lcom/android/vending/model/DownloadProgressManager;->assertOnHandlerThread()V

    .line 216
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v11, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/vending/model/DownloadProgress;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->requery()Z

    move-result v18

    if-nez v18, :cond_0

    .line 219
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/DownloadProgressManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/vending/model/DownloadProgressManager;->makeCursorIfNeeded(Landroid/content/Context;)V

    .line 223
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-lez v18, :cond_2

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const-string v19, "_id"

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 226
    .local v9, indexId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const-string v19, "current_bytes"

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 228
    .local v5, currentBytesColumnId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const-string v19, "total_bytes"

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 230
    .local v16, totalBytesColumnId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const-string v19, "status"

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 233
    .local v13, statusColumnId:I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 236
    .local v7, id:J
    sget-object v18, Lcom/android/vending/compat/Downloads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-wide v1, v7

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 237
    .local v17, uri:Landroid/net/Uri;
    invoke-static/range {v17 .. v17}, Lcom/android/vending/model/LocalAsset;->getByUri(Landroid/net/Uri;)Lcom/android/vending/model/LocalAsset;

    move-result-object v10

    .line 239
    .local v10, localAsset:Lcom/android/vending/model/LocalAsset;
    if-eqz v10, :cond_1

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 244
    .local v12, status:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 245
    .local v14, totalBytes:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 247
    .local v3, currentBytes:J
    new-instance v6, Lcom/android/vending/model/DownloadProgress;

    invoke-direct {v6, v10}, Lcom/android/vending/model/DownloadProgress;-><init>(Lcom/android/vending/model/LocalAsset;)V

    .line 248
    .local v6, downloadProgress:Lcom/android/vending/model/DownloadProgress;
    iput-wide v14, v6, Lcom/android/vending/model/DownloadProgress;->mBytesTotal:J

    .line 249
    iput-wide v3, v6, Lcom/android/vending/model/DownloadProgress;->mBytesComplete:J

    .line 250
    iput v12, v6, Lcom/android/vending/model/DownloadProgress;->mStatusId:I

    .line 252
    invoke-virtual {v10}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object v0, v11

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 256
    .end local v3           #currentBytes:J
    .end local v5           #currentBytesColumnId:I
    .end local v6           #downloadProgress:Lcom/android/vending/model/DownloadProgress;
    .end local v7           #id:J
    .end local v9           #indexId:I
    .end local v10           #localAsset:Lcom/android/vending/model/LocalAsset;
    .end local v12           #status:I
    .end local v13           #statusColumnId:I
    .end local v14           #totalBytes:J
    .end local v16           #totalBytesColumnId:I
    .end local v17           #uri:Landroid/net/Uri;
    :cond_2
    return-object v11
.end method

.method private static getAssetIds()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 203
    .local v0, assetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/vending/model/DownloadProgressManager;->getCachedProgress()Ljava/util/Map;

    move-result-object v2

    .line 204
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/vending/model/DownloadProgress;>;"
    if-eqz v2, :cond_0

    .line 205
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/model/DownloadProgress;

    .line 206
    .local v3, p:Lcom/android/vending/model/DownloadProgress;
    iget-object v4, v3, Lcom/android/vending/model/DownloadProgress;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #p:Lcom/android/vending/model/DownloadProgress;
    :cond_0
    return-object v0
.end method

.method public static getCachedProgress(Lcom/android/vending/model/Asset;)Lcom/android/vending/model/DownloadProgress;
    .locals 2
    .parameter "asset"

    .prologue
    .line 194
    invoke-static {}, Lcom/android/vending/model/DownloadProgressManager;->getCachedProgress()Ljava/util/Map;

    move-result-object v0

    .line 195
    .local v0, progress:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/vending/model/DownloadProgress;>;"
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/model/DownloadProgress;

    move-object v1, p0

    .line 198
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getCachedProgress()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/model/DownloadProgress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    sget-object v0, Lcom/android/vending/model/DownloadProgressManager;->sDownloadProgressMap:Ljava/util/Map;

    return-object v0
.end method

.method private static makeCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/vending/compat/Downloads;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download progress cursor null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/vending/compat/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    move-object v0, v2

    .line 266
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method private makeCursorIfNeeded(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/vending/model/DownloadProgressManager;->assertOnHandlerThread()V

    .line 94
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 95
    invoke-static {p1}, Lcom/android/vending/model/DownloadProgressManager;->makeCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    .line 96
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/vending/model/DownloadProgressManager;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 122
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/model/DownloadProgressManager$4;

    invoke-direct {v1, p0}, Lcom/android/vending/model/DownloadProgressManager$4;-><init>(Lcom/android/vending/model/DownloadProgressManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 138
    return-void
.end method

.method public onDownloadProgress()V
    .locals 7

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/vending/model/DownloadProgressManager;->assertOnHandlerThread()V

    .line 144
    invoke-static {}, Lcom/android/vending/model/DownloadProgressManager;->getAssetIds()Ljava/util/Set;

    move-result-object v1

    .line 146
    .local v1, assetIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/vending/model/DownloadProgressManager;->generateDownloadProgressFromCursor()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 151
    .local v2, downloadProgressMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/vending/model/DownloadProgress;>;"
    invoke-static {}, Lcom/android/vending/model/DownloadProgressManager;->getCachedProgress()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/vending/model/DownloadProgressManager;->getCachedProgress()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 152
    :cond_0
    sput-object v2, Lcom/android/vending/model/DownloadProgressManager;->sDownloadProgressMap:Ljava/util/Map;

    .line 156
    invoke-static {}, Lcom/android/vending/model/DownloadProgressManager;->getAssetIds()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 157
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    .local v0, assetId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v4

    .line 159
    .local v4, localAsset:Lcom/android/vending/model/LocalAsset;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v5

    sget-object v6, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v5, v6, :cond_1

    .line 160
    sget-object v5, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCELLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v4, v5}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    goto :goto_0

    .line 165
    .end local v0           #assetId:Ljava/lang/String;
    .end local v4           #localAsset:Lcom/android/vending/model/LocalAsset;
    :cond_2
    iget-object v5, p0, Lcom/android/vending/model/DownloadProgressManager;->mContentObservable:Landroid/database/ContentObservable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 167
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 112
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/model/DownloadProgressManager$3;

    invoke-direct {v1, p0}, Lcom/android/vending/model/DownloadProgressManager$3;-><init>(Lcom/android/vending/model/DownloadProgressManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/vending/model/DownloadProgressManager;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/model/DownloadProgressManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/model/DownloadProgressManager$2;-><init>(Lcom/android/vending/model/DownloadProgressManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method public registerObserverOnce(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 175
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 184
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 186
    iget-object v0, p0, Lcom/android/vending/model/DownloadProgressManager;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 187
    return-void
.end method
