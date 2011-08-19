.class public final Lcom/android/email/provider/ContentCache;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/ContentCache$Statistics;,
        Lcom/android/email/provider/ContentCache$CacheCounter;,
        Lcom/android/email/provider/ContentCache$CachedCursor;,
        Lcom/android/email/provider/ContentCache$CacheToken;,
        Lcom/android/email/provider/ContentCache$TokenList;,
        Lcom/android/email/provider/ContentCache$CounterMap;
    }
.end annotation


# static fields
.field static sActiveCursors:Lcom/android/email/provider/ContentCache$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCache$CounterMap",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sContentCaches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/ContentCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotCacheable:I

.field private static final sNotCacheableMap:Lcom/android/email/provider/ContentCache$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCache$CounterMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseProjection:[Ljava/lang/String;

.field private final mLockMap:Lcom/android/email/provider/ContentCache$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCache$CounterMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogTag:Ljava/lang/String;

.field private final mLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mStats:Lcom/android/email/provider/ContentCache$Statistics;

.field mTokenList:Lcom/android/email/provider/ContentCache$TokenList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/android/email/provider/ContentCache;->sNotCacheable:I

    .line 84
    new-instance v0, Lcom/android/email/provider/ContentCache$CounterMap;

    invoke-direct {v0}, Lcom/android/email/provider/ContentCache$CounterMap;-><init>()V

    sput-object v0, Lcom/android/email/provider/ContentCache;->sNotCacheableMap:Lcom/android/email/provider/ContentCache$CounterMap;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/provider/ContentCache;->sContentCaches:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "baseProjection"
    .parameter "maxSize"

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/android/email/provider/ContentCache$CounterMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/email/provider/ContentCache$CounterMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache;->mLockMap:Lcom/android/email/provider/ContentCache$CounterMap;

    .line 390
    iput-object p1, p0, Lcom/android/email/provider/ContentCache;->mName:Ljava/lang/String;

    .line 391
    new-instance v0, Lcom/android/email/provider/ContentCache$1;

    invoke-direct {v0, p0, p3}, Lcom/android/email/provider/ContentCache$1;-><init>(Lcom/android/email/provider/ContentCache;I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    .line 401
    iput-object p2, p0, Lcom/android/email/provider/ContentCache;->mBaseProjection:[Ljava/lang/String;

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentCache-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/ContentCache;->mLogTag:Ljava/lang/String;

    .line 403
    sget-object v0, Lcom/android/email/provider/ContentCache;->sContentCaches:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v0, Lcom/android/email/provider/ContentCache$TokenList;

    iget-object v1, p0, Lcom/android/email/provider/ContentCache;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/email/provider/ContentCache$TokenList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache;->mTokenList:Lcom/android/email/provider/ContentCache$TokenList;

    .line 405
    new-instance v0, Lcom/android/email/provider/ContentCache$CounterMap;

    invoke-direct {v0, p3}, Lcom/android/email/provider/ContentCache$CounterMap;-><init>(I)V

    sput-object v0, Lcom/android/email/provider/ContentCache;->sActiveCursors:Lcom/android/email/provider/ContentCache$CounterMap;

    .line 406
    new-instance v0, Lcom/android/email/provider/ContentCache$Statistics;

    invoke-direct {v0, p0}, Lcom/android/email/provider/ContentCache$Statistics;-><init>(Lcom/android/email/provider/ContentCache;)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache;->mStats:Lcom/android/email/provider/ContentCache$Statistics;

    .line 407
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/provider/ContentCache;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/provider/ContentCache;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private get(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "id"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method private getCachedCursorImpl(Ljava/lang/String;)Lcom/android/email/provider/ContentCache$CachedCursor;
    .locals 2
    .parameter "id"

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/android/email/provider/ContentCache;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 506
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/email/provider/ContentCache;->mStats:Lcom/android/email/provider/ContentCache$Statistics;

    invoke-static {v1}, Lcom/android/email/provider/ContentCache$Statistics;->access$308(Lcom/android/email/provider/ContentCache$Statistics;)I

    .line 508
    new-instance v1, Lcom/android/email/provider/ContentCache$CachedCursor;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/email/provider/ContentCache$CachedCursor;-><init>(Landroid/database/Cursor;Lcom/android/email/provider/ContentCache;Ljava/lang/String;)V

    .line 511
    :goto_0
    return-object v1

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCache;->mStats:Lcom/android/email/provider/ContentCache$Statistics;

    invoke-static {v1}, Lcom/android/email/provider/ContentCache$Statistics;->access$408(Lcom/android/email/provider/ContentCache$Statistics;)I

    .line 511
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "id"
    .parameter "projection"

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/provider/ContentCache;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method private getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;
    .locals 17
    .parameter "id"
    .parameter "projection"
    .parameter "values"

    .prologue
    .line 520
    invoke-direct/range {p0 .. p1}, Lcom/android/email/provider/ContentCache;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 521
    .local v4, c:Landroid/database/Cursor;
    if-eqz v4, :cond_8

    .line 523
    new-instance v11, Landroid/database/MatrixCursor;

    const/16 v16, 0x1

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 524
    .local v11, mc:Landroid/database/MatrixCursor;
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v16, v11

    .line 562
    .end local v11           #mc:Landroid/database/MatrixCursor;
    :goto_0
    return-object v16

    .line 527
    .restart local v11       #mc:Landroid/database/MatrixCursor;
    :cond_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object v12, v0

    .line 528
    .local v12, row:[Ljava/lang/Object;
    if-eqz p3, :cond_1

    .line 530
    new-instance v15, Landroid/content/ContentValues;

    move-object v0, v15

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .end local p3
    .local v15, values:Landroid/content/ContentValues;
    move-object/from16 p3, v15

    .line 532
    .end local v15           #values:Landroid/content/ContentValues;
    .restart local p3
    :cond_1
    const/4 v7, 0x0

    .line 533
    .local v7, i:I
    move-object/from16 v3, p2

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v8, v7

    .end local v7           #i:I
    .local v8, i:I
    :goto_1
    if-ge v9, v10, :cond_6

    aget-object v5, v3, v9

    .line 534
    .local v5, column:Ljava/lang/String;
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 535
    .local v6, columnIndex:I
    if-gez v6, :cond_2

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/ContentCache;->mStats:Lcom/android/email/provider/ContentCache$Statistics;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/email/provider/ContentCache$Statistics;->access$508(Lcom/android/email/provider/ContentCache$Statistics;)I

    .line 537
    const/16 v16, 0x0

    goto :goto_0

    .line 540
    :cond_2
    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 541
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 542
    .local v13, val:Ljava/lang/Object;
    move-object v0, v13

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 543
    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v13

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_3

    const-string v16, "1"

    move-object/from16 v14, v16

    .line 547
    .local v14, value:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 551
    .end local v13           #val:Ljava/lang/Object;
    :goto_3
    add-int/lit8 v7, v8, 0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    aput-object v14, v12, v8

    .line 533
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    .end local v7           #i:I
    .restart local v8       #i:I
    goto :goto_1

    .line 543
    .end local v14           #value:Ljava/lang/String;
    .restart local v13       #val:Ljava/lang/Object;
    :cond_3
    const-string v16, "0"

    move-object/from16 v14, v16

    goto :goto_2

    .line 545
    :cond_4
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #value:Ljava/lang/String;
    goto :goto_2

    .line 549
    .end local v13           #val:Ljava/lang/Object;
    .end local v14           #value:Ljava/lang/String;
    :cond_5
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #value:Ljava/lang/String;
    goto :goto_3

    .line 554
    .end local v5           #column:Ljava/lang/String;
    .end local v6           #columnIndex:I
    .end local v14           #value:Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v16

    if-eqz v16, :cond_7

    .line 555
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 557
    :cond_7
    invoke-virtual {v11, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/ContentCache;->mStats:Lcom/android/email/provider/ContentCache$Statistics;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/email/provider/ContentCache$Statistics;->access$308(Lcom/android/email/provider/ContentCache$Statistics;)I

    move-object/from16 v16, v11

    .line 559
    goto/16 :goto_0

    .line 561
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #mc:Landroid/database/MatrixCursor;
    .end local v12           #row:[Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/ContentCache;->mStats:Lcom/android/email/provider/ContentCache$Statistics;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/email/provider/ContentCache$Statistics;->access$408(Lcom/android/email/provider/ContentCache$Statistics;)I

    .line 562
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public static invalidateAllCachesForTest()V
    .locals 3

    .prologue
    .line 725
    sget-object v2, Lcom/android/email/provider/ContentCache;->sContentCaches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/ContentCache;

    .line 726
    .local v0, cache:Lcom/android/email/provider/ContentCache;
    invoke-virtual {v0}, Lcom/android/email/provider/ContentCache;->invalidate()V

    goto :goto_0

    .line 728
    .end local v0           #cache:Lcom/android/email/provider/ContentCache;
    :cond_0
    return-void
.end method

.method public static declared-synchronized notCacheable(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 692
    const-class v0, Lcom/android/email/provider/ContentCache;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 3
    .parameter "id"
    .parameter "values"
    .parameter "wasLocked"

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/android/email/provider/ContentCache;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 610
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 611
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 614
    :cond_0
    if-eqz p2, :cond_5

    .line 615
    iget-object v2, p0, Lcom/android/email/provider/ContentCache;->mBaseProjection:[Ljava/lang/String;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/email/provider/ContentCache;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;

    move-result-object v1

    .line 616
    .local v1, cursor:Landroid/database/MatrixCursor;
    if-eqz v1, :cond_4

    .line 617
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 620
    :cond_1
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 621
    iget-object v2, p0, Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    :goto_0
    sget-object v2, Lcom/android/email/provider/ContentCache;->sActiveCursors:Lcom/android/email/provider/ContentCache$CounterMap;

    invoke-virtual {v2, v0}, Lcom/android/email/provider/ContentCache$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 630
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 633
    :cond_2
    if-eqz p3, :cond_3

    .line 634
    iget-object v2, p0, Lcom/android/email/provider/ContentCache;->mLockMap:Lcom/android/email/provider/ContentCache$CounterMap;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/ContentCache$CounterMap;->subtract(Ljava/lang/Object;)I

    .line 636
    :cond_3
    return-void

    .line 623
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    :cond_4
    iget-object v2, p0, Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 626
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    :cond_5
    iget-object v2, p0, Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getCacheToken(Ljava/lang/String;)Lcom/android/email/provider/ContentCache$CacheToken;
    .locals 2
    .parameter "id"

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCache;->mTokenList:Lcom/android/email/provider/ContentCache$TokenList;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCache$TokenList;->add(Ljava/lang/String;)Lcom/android/email/provider/ContentCache$CacheToken;

    move-result-object v0

    .line 427
    .local v0, token:Lcom/android/email/provider/ContentCache$CacheToken;
    iget-object v1, p0, Lcom/android/email/provider/ContentCache;->mLockMap:Lcom/android/email/provider/ContentCache$CounterMap;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCache$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/android/email/provider/ContentCache$CacheToken;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_0
    monitor-exit p0

    return-object v0

    .line 426
    .end local v0           #token:Lcom/android/email/provider/ContentCache$CacheToken;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "id"
    .parameter "projection"

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mBaseProjection:[Ljava/lang/String;

    if-ne p2, v0, :cond_1

    .line 498
    invoke-direct {p0, p1}, Lcom/android/email/provider/ContentCache;->getCachedCursorImpl(Ljava/lang/String;)Lcom/android/email/provider/ContentCache$CachedCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 500
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/email/provider/ContentCache;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .locals 3

    .prologue
    .line 642
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    monitor-exit p0

    return-void

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "operation"
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 658
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mStats:Lcom/android/email/provider/ContentCache$Statistics;

    invoke-static {v0}, Lcom/android/email/provider/ContentCache$Statistics;->access$708(Lcom/android/email/provider/ContentCache$Statistics;)I

    .line 660
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 662
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mTokenList:Lcom/android/email/provider/ContentCache$TokenList;

    invoke-virtual {v0}, Lcom/android/email/provider/ContentCache$TokenList;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lock(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCache;->mLockMap:Lcom/android/email/provider/ContentCache$CounterMap;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCache$CounterMap;->add(Ljava/lang/Object;)V

    .line 573
    iget-object v1, p0, Lcom/android/email/provider/ContentCache;->mTokenList:Lcom/android/email/provider/ContentCache$TokenList;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCache$TokenList;->invalidateTokens(Ljava/lang/String;)I

    move-result v0

    .line 574
    .local v0, count:I
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 578
    :cond_0
    monitor-exit p0

    return-void

    .line 571
    .end local v0           #count:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCache$CacheToken;)Landroid/database/Cursor;
    .locals 1
    .parameter "c"
    .parameter "id"
    .parameter "projection"
    .parameter "token"

    .prologue
    .line 454
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 455
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/provider/ContentCache;->putCursorImpl(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCache$CacheToken;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized putCursorImpl(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCache$CacheToken;)Landroid/database/Cursor;
    .locals 3
    .parameter "c"
    .parameter "id"
    .parameter "projection"
    .parameter "token"

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Lcom/android/email/provider/ContentCache$CacheToken;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCache;->mStats:Lcom/android/email/provider/ContentCache$Statistics;

    invoke-static {v1}, Lcom/android/email/provider/ContentCache$Statistics;->access$208(Lcom/android/email/provider/ContentCache$Statistics;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 482
    :try_start_1
    iget-object v1, p0, Lcom/android/email/provider/ContentCache;->mTokenList:Lcom/android/email/provider/ContentCache$TokenList;

    invoke-virtual {v1, p4}, Lcom/android/email/provider/ContentCache$TokenList;->remove(Lcom/android/email/provider/ContentCache$CacheToken;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p1

    :goto_0
    monitor-exit p0

    return-object v1

    .line 468
    :cond_1
    if-eqz p1, :cond_4

    :try_start_2
    iget-object v1, p0, Lcom/android/email/provider/ContentCache;->mBaseProjection:[Ljava/lang/String;

    if-ne p3, v1, :cond_4

    .line 469
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 473
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/email/provider/ContentCache;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 474
    .local v0, existingCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 475
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Lcom/android/email/provider/ContentCache;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V

    .line 477
    :cond_3
    iget-object v1, p0, Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    new-instance v1, Lcom/android/email/provider/ContentCache$CachedCursor;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/email/provider/ContentCache$CachedCursor;-><init>(Landroid/database/Cursor;Lcom/android/email/provider/ContentCache;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 482
    :try_start_3
    iget-object v2, p0, Lcom/android/email/provider/ContentCache;->mTokenList:Lcom/android/email/provider/ContentCache$TokenList;

    invoke-virtual {v2, p4}, Lcom/android/email/provider/ContentCache$TokenList;->remove(Lcom/android/email/provider/ContentCache$CacheToken;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 461
    .end local v0           #existingCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 482
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/android/email/provider/ContentCache;->mTokenList:Lcom/android/email/provider/ContentCache$TokenList;

    invoke-virtual {v1, p4}, Lcom/android/email/provider/ContentCache$TokenList;->remove(Lcom/android/email/provider/ContentCache$CacheToken;)Z

    move-object v1, p1

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/android/email/provider/ContentCache;->mTokenList:Lcom/android/email/provider/ContentCache$TokenList;

    invoke-virtual {v2, p4}, Lcom/android/email/provider/ContentCache$TokenList;->remove(Lcom/android/email/provider/ContentCache$CacheToken;)Z

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method recordQueryTime(Landroid/database/Cursor;J)V
    .locals 2
    .parameter "c"
    .parameter "nanoTime"

    .prologue
    .line 675
    instance-of v0, p1, Lcom/android/email/provider/ContentCache$CachedCursor;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mStats:Lcom/android/email/provider/ContentCache$Statistics;

    invoke-static {v0, p2, p3}, Lcom/android/email/provider/ContentCache$Statistics;->access$914(Lcom/android/email/provider/ContentCache$Statistics;J)J

    .line 677
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mStats:Lcom/android/email/provider/ContentCache$Statistics;

    invoke-static {v0}, Lcom/android/email/provider/ContentCache$Statistics;->access$1008(Lcom/android/email/provider/ContentCache$Statistics;)J

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mStats:Lcom/android/email/provider/ContentCache$Statistics;

    invoke-static {v0, p2, p3}, Lcom/android/email/provider/ContentCache$Statistics;->access$1114(Lcom/android/email/provider/ContentCache$Statistics;J)J

    .line 681
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mStats:Lcom/android/email/provider/ContentCache$Statistics;

    invoke-static {v0}, Lcom/android/email/provider/ContentCache$Statistics;->access$1208(Lcom/android/email/provider/ContentCache$Statistics;)J

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized unlock(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 585
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/ContentCache;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    monitor-exit p0

    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlock(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "id"
    .parameter "values"

    .prologue
    .line 596
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/provider/ContentCache;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    monitor-exit p0

    return-void

    .line 596
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
