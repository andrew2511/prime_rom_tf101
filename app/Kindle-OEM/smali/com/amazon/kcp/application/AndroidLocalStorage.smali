.class public Lcom/amazon/kcp/application/AndroidLocalStorage;
.super Ljava/lang/Object;
.source "AndroidLocalStorage.java"

# interfaces
.implements Lcom/amazon/kcp/application/ILocalStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/AndroidLocalStorage$ReddingDBHelper;
    }
.end annotation


# static fields
.field static final COL_ARTICLE_INDEX:Ljava/lang/String; = "article_index"

.field static final COL_ARTICLE_READ:Ljava/lang/String; = "article_read"

.field static final COL_BOOK_ID:Ljava/lang/String; = "book_id"

.field static final COL_BOOK_KEPT:Ljava/lang/String; = "book_kept"

.field static final COL_BOOK_READ:Ljava/lang/String; = "book_read"

.field private static final CREATE_STMNTS:[[Ljava/lang/String; = null

.field private static final METRICS_TAG:Ljava/lang/String; = "AndroidLocalStorage"

.field private static final OPEN_DB_ATTEMPTS:I = 0x2

.field static final REDDING_DB_NAME:Ljava/lang/String; = "kindle.db"

.field private static final REDDING_DB_VERSION:I = 0x1

.field static final TABLE_ARTICLE_STATE:Ljava/lang/String; = "article_state"

.field private static final TABLE_ARTICLE_STATE_CREATE_STMNTS:[Ljava/lang/String; = null

.field static final TABLE_BOOK_STATE:Ljava/lang/String; = "book_state"

.field private static final TABLE_BOOK_STATE_CREATE_STMNTS:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final dbName:Ljava/lang/String;

.field private unavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "CREATE TABLE book_state ( book_id TEXT PRIMARY KEY, book_read INTEGER, book_kept INTEGER )"

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_BOOK_STATE_CREATE_STMNTS:[Ljava/lang/String;

    .line 85
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "CREATE TABLE article_state ( book_id TEXT, article_index INTEGER, article_read INTEGER,  PRIMARY KEY ( book_id,article_index) )"

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_ARTICLE_STATE_CREATE_STMNTS:[Ljava/lang/String;

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    sget-object v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_BOOK_STATE_CREATE_STMNTS:[Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/application/AndroidLocalStorage;->TABLE_ARTICLE_STATE_CREATE_STMNTS:[Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->CREATE_STMNTS:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 154
    const-string v0, "kindle.db"

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/application/AndroidLocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "dbName"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/amazon/kcp/application/AndroidLocalStorage$ReddingDBHelper;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/application/AndroidLocalStorage$ReddingDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 167
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->context:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    .line 169
    return-void
.end method

.method static synthetic access$000()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->CREATE_STMNTS:[[Ljava/lang/String;

    return-object v0
.end method

.method private issueDelete(Lcom/amazon/kcp/library/models/LocalBookState;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 399
    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/LocalBookState;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "book_state"

    const-string v3, "book_id = ?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 401
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "article_state"

    const-string v3, "book_id = ?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 402
    return-void
.end method

.method private issueInsert(Lcom/amazon/kcp/library/models/LocalBookState;)V
    .locals 12
    .parameter "localBookState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookRead()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 410
    .local v4, bookRead:Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookKept()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 411
    .local v3, bookKept:Ljava/lang/Integer;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 412
    .local v5, bookValue:Landroid/content/ContentValues;
    const-string v8, "book_id"

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/LocalBookState;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v9

    invoke-interface {v9}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v8, "book_read"

    invoke-virtual {v5, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v8, "book_kept"

    invoke-virtual {v5, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    iget-object v8, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "book_state"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 417
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Insert into book_state failed"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 409
    .end local v3           #bookKept:Ljava/lang/Integer;
    .end local v4           #bookRead:Ljava/lang/Integer;
    .end local v5           #bookValue:Landroid/content/ContentValues;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 410
    .restart local v4       #bookRead:Ljava/lang/Integer;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 420
    .restart local v3       #bookKept:Ljava/lang/Integer;
    .restart local v5       #bookValue:Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/LocalBookState;->getArticlesReadMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 421
    .local v7, it:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 423
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 427
    .local v6, entry:Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 428
    .local v0, articleIndex:Ljava/lang/Integer;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 429
    .local v1, articleRead:Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 434
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 435
    .local v2, articleValue:Landroid/content/ContentValues;
    const-string v8, "book_id"

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/LocalBookState;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v9

    invoke-interface {v9}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v8, "article_index"

    invoke-virtual {v2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v8, "article_read"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    iget-object v8, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "article_state"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 440
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Insert into article_state failed"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 437
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 443
    .end local v0           #articleIndex:Ljava/lang/Integer;
    .end local v1           #articleRead:Ljava/lang/Boolean;
    .end local v2           #articleValue:Landroid/content/ContentValues;
    .end local v6           #entry:Ljava/util/Map$Entry;
    :cond_5
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidLocalStorage;->deleteDB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    monitor-exit p0

    return-void

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB already closed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :goto_0
    monitor-exit p0

    return-void

    .line 462
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing DB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Lcom/amazon/kcp/library/models/LocalBookState;)V
    .locals 5
    .parameter "localBookState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidLocalStorage;->ensureDBOpen()V

    .line 346
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 349
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidLocalStorage;->issueDelete(Lcom/amazon/kcp/library/models/LocalBookState;)V

    .line 350
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    :try_start_2
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 362
    monitor-exit p0

    return-void

    .line 352
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 354
    .local v0, se:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "AndroidLocalStorage"

    const-string v3, "DeleteLocalBookStateFailed"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 355
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    .end local v0           #se:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 344
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method deleteDB()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 243
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->unavailable:Z

    .line 245
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Database \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' deleted successfully."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Database \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' was not deleted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method ensureDBOpen()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    .line 186
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->unavailable:Z

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Database is unavailable."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move v2, v7

    .line 198
    :goto_1
    if-gt v2, v5, :cond_3

    .line 202
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_3
    iget-object v3, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_4

    .line 215
    iput-boolean v7, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->unavailable:Z

    .line 216
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "AndroidLocalStorage"

    const-string v2, "UnableToOpenDB"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 217
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Database is unavailable."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open database \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' (attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidLocalStorage;->deleteDB()V

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 221
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    .line 222
    const-string v3, "Opened DB: %s, took: %d millis"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->dbName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 223
    if-le v2, v7, :cond_1

    .line 225
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "AndroidLocalStorage"

    const-string v2, "OpenDBAfterInitialFailure"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    goto :goto_0
.end method

.method getDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->unavailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadLocalBookState(Lcom/amazon/kcp/library/models/IBookID;)Lcom/amazon/kcp/library/models/LocalBookState;
    .locals 19
    .parameter "bookID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/application/AndroidLocalStorage;->ensureDBOpen()V

    .line 269
    new-instance v17, Lcom/amazon/kcp/library/models/LocalBookState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/LocalBookState;-><init>(Lcom/amazon/kcp/library/models/IBookID;Lcom/amazon/kcp/application/ILocalStorage;)V

    .line 270
    .local v17, result:Lcom/amazon/kcp/library/models/LocalBookState;
    const/16 v16, 0x0

    .local v16, bookStateCursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 273
    .local v13, articleStateCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "book_state"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "book_read"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "book_kept"

    aput-object v7, v5, v6

    const-string v6, "book_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 284
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    const/4 v3, 0x0

    .line 325
    if-eqz v16, :cond_0

    .line 327
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_0
    if-eqz v13, :cond_1

    .line 331
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit p0

    return-object v3

    .line 293
    :cond_2
    const/4 v3, 0x0

    :try_start_3
    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 294
    .local v15, bookRead:I
    if-eqz v15, :cond_5

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/LocalBookState;->setBookRead(Z)V

    .line 296
    const/4 v3, 0x1

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 297
    .local v14, bookKept:I
    if-eqz v14, :cond_6

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/LocalBookState;->setBookKept(Z)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "article_state"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "article_index"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "article_read"

    aput-object v7, v5, v6

    const-string v6, "book_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 306
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 308
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 309
    .local v11, articleIndex:I
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 310
    .local v12, articleRead:I
    if-eqz v12, :cond_7

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, v17

    move v1, v11

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/models/LocalBookState;->setArticleRead(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 318
    .end local v11           #articleIndex:I
    .end local v12           #articleRead:I
    .end local v14           #bookKept:I
    .end local v15           #bookRead:I
    :catch_0
    move-exception v3

    move-object/from16 v18, v3

    .line 320
    .local v18, se:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "AndroidLocalStorage"

    const-string v5, "LoadLocalBookStateFailed"

    sget-object v6, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v3, v4, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 321
    new-instance v3, Ljava/io/IOException;

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 325
    .end local v18           #se:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    if-eqz v16, :cond_3

    .line 327
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_3
    if-eqz v13, :cond_4

    .line 331
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 267
    .end local v13           #articleStateCursor:Landroid/database/Cursor;
    .end local v16           #bookStateCursor:Landroid/database/Cursor;
    .end local v17           #result:Lcom/amazon/kcp/library/models/LocalBookState;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 294
    .restart local v13       #articleStateCursor:Landroid/database/Cursor;
    .restart local v15       #bookRead:I
    .restart local v16       #bookStateCursor:Landroid/database/Cursor;
    .restart local v17       #result:Lcom/amazon/kcp/library/models/LocalBookState;
    .restart local p1
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 297
    .restart local v14       #bookKept:I
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 310
    .restart local v11       #articleIndex:I
    .restart local v12       #articleRead:I
    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    .line 314
    .end local v11           #articleIndex:I
    .end local v12           #articleRead:I
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 325
    if-eqz v16, :cond_9

    .line 327
    :try_start_7
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_9
    if-eqz v13, :cond_a

    .line 331
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v3, v17

    goto/16 :goto_0
.end method

.method public declared-synchronized save(Lcom/amazon/kcp/library/models/LocalBookState;)V
    .locals 5
    .parameter "localBookState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidLocalStorage;->ensureDBOpen()V

    .line 373
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 376
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidLocalStorage;->issueDelete(Lcom/amazon/kcp/library/models/LocalBookState;)V

    .line 377
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidLocalStorage;->issueInsert(Lcom/amazon/kcp/library/models/LocalBookState;)V

    .line 380
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 390
    :try_start_2
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 392
    monitor-exit p0

    return-void

    .line 382
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 384
    .local v0, se:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "AndroidLocalStorage"

    const-string v3, "SaveLocalBookStateFailed"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 385
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    .end local v0           #se:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 370
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method
