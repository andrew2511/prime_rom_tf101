.class public Landroid/database/sqlite/SQLiteCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;,
        Landroid/database/sqlite/SQLiteCursor$QueryThread;
    }
.end annotation


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "SQLiteCursor"


# instance fields
.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumns:[Ljava/lang/String;

.field private volatile mCount:I

.field private mCursorState:I

.field private final mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

.field private final mEditTable:Ljava/lang/String;

.field private mInitialRead:I

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxRead:I

.field protected mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

.field private mPendingData:Z

.field private mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private final mStackTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .registers 11
    .parameter "driver"
    .parameter "editTable"
    .parameter "query"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7fffffff

    const/4 v4, 0x0

    .line 231
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 57
    const/4 v3, -0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 69
    iput v5, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    .line 70
    iput v5, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    .line 71
    iput v4, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 72
    iput-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 73
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z

    .line 232
    if-nez p3, :cond_20

    .line 233
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "query object cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_20
    iget-object v3, p3, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_2d

    .line 236
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "query.mDatabase cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 238
    :cond_2d
    new-instance v3, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v3}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v3}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    iput-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    .line 239
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    .line 240
    iput-object p2, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    .line 241
    iput-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 242
    iput-object p3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    .line 244
    iget-object v3, p3, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 247
    :try_start_45
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->columnCountLocked()I

    move-result v0

    .line 248
    .local v0, columnCount:I
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 251
    const/4 v2, 0x0

    .local v2, i:I
    :goto_50
    if-ge v2, v0, :cond_70

    .line 252
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQuery;->columnNameLocked(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, columnName:Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    aput-object v1, v3, v2

    .line 260
    const-string v3, "_id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 261
    iput v2, p0, Landroid/database/sqlite/SQLiteCursor;->mRowIdColumnIndex:I
    :try_end_66
    .catchall {:try_start_45 .. :try_end_66} :catchall_69

    .line 251
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 265
    .end local v0           #columnCount:I
    .end local v1           #columnName:Ljava/lang/String;
    .end local v2           #i:I
    :catchall_69
    move-exception v3

    iget-object v4, p3, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v3

    .restart local v0       #columnCount:I
    .restart local v2       #i:I
    :cond_70
    iget-object v3, p3, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .registers 5
    .parameter "db"
    .parameter "driver"
    .parameter "editTable"
    .parameter "query"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 216
    return-void
.end method

.method static synthetic access$002(Landroid/database/sqlite/SQLiteCursor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z

    return p1
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/CursorWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    return-object v0
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteCursor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    return v0
.end method

.method static synthetic access$400(Landroid/database/sqlite/SQLiteCursor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    return v0
.end method

.method static synthetic access$500(Landroid/database/sqlite/SQLiteCursor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$512(Landroid/database/sqlite/SQLiteCursor;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/sqlite/SQLiteQuery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->getQuery()Landroid/database/sqlite/SQLiteQuery;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/database/sqlite/SQLiteCursor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->notifyDataSetChange()V

    return-void
.end method

.method private deactivateCommon()V
    .registers 2

    .prologue
    .line 370
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 371
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_f

    .line 372
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    .line 376
    :cond_f
    return-void
.end method

.method private fillWindow(I)V
    .registers 9
    .parameter "startPos"

    .prologue
    const/4 v6, 0x3

    .line 298
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v2, :cond_63

    .line 300
    new-instance v2, Landroid/database/CursorWindow;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/database/CursorWindow;-><init>(Z)V

    iput-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    .line 310
    :goto_d
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 311
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->getQuery()Landroid/database/sqlite/SQLiteQuery;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    iget v4, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;II)I

    move-result v0

    .line 313
    .local v0, count:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_7a

    .line 314
    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 315
    const-string v2, "SQLiteCursor"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 316
    const-string v2, "SQLiteCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received -1 from native_fill_window. read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows so far"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_50
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/database/sqlite/SQLiteCursor$QueryThread;

    iget v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    invoke-direct {v2, p0, v3}, Landroid/database/sqlite/SQLiteCursor$QueryThread;-><init>(Landroid/database/sqlite/SQLiteCursor;I)V

    const-string/jumbo v3, "query thread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 319
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 328
    .end local v1           #t:Ljava/lang/Thread;
    :cond_62
    :goto_62
    return-void

    .line 302
    .end local v0           #count:I
    :cond_63
    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 303
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V

    .line 305
    :try_start_6c
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->clear()V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_75

    .line 307
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    goto :goto_d

    :catchall_75
    move-exception v2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v2

    .line 320
    .restart local v0       #count:I
    :cond_7a
    if-nez p1, :cond_a0

    .line 321
    const-string v2, "SQLiteCursor"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 322
    const-string v2, "SQLiteCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received count(*) from native_fill_window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_9d
    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    goto :goto_62

    .line 325
    :cond_a0
    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    if-gtz v2, :cond_62

    .line 326
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "count should never be non-zero negative number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private declared-synchronized getQuery()Landroid/database/sqlite/SQLiteQuery;
    .registers 2

    .prologue
    .line 331
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private queryThreadLock()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_9

    .line 93
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 95
    :cond_9
    return-void
.end method

.method private queryThreadUnlock()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 101
    :cond_9
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 387
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 388
    monitor-enter p0

    .line 389
    :try_start_4
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->deactivateCommon()V

    .line 390
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->close()V

    .line 391
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorClosed()V

    .line 392
    monitor-exit p0

    .line 393
    return-void

    .line 392
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public deactivate()V
    .registers 2

    .prologue
    .line 380
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    .line 381
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->deactivateCommon()V

    .line 382
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    .line 383
    return-void
.end method

.method protected finalize()V
    .registers 6

    .prologue
    const/16 v4, 0x3e8

    .line 504
    :try_start_2
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v1, :cond_5b

    .line 505
    invoke-static {}, Landroid/os/StrictMode;->vmSqliteObjectLeaksEnabled()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 506
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 507
    .local v0, len:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalizing a Cursor that has not been deactivated or closed. database = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", table = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", query = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    const/4 v3, 0x0

    if-le v0, v4, :cond_5f

    :goto_44
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    .end local v0           #len:I
    :cond_55
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 514
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->notifyActiveCursorFinalized()V
    :try_end_5b
    .catchall {:try_start_2 .. :try_end_5b} :catchall_61

    .line 522
    :cond_5b
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    .line 524
    return-void

    .restart local v0       #len:I
    :cond_5f
    move v4, v0

    .line 507
    goto :goto_44

    .line 522
    .end local v0           #len:I
    :catchall_61
    move-exception v1

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    throw v1
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 12
    .parameter "columnName"

    .prologue
    const/4 v9, -0x1

    .line 337
    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v6, :cond_20

    .line 338
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 339
    .local v1, columns:[Ljava/lang/String;
    array-length v0, v1

    .line 340
    .local v0, columnCount:I
    new-instance v4, Ljava/util/HashMap;

    const/high16 v6, 0x3f80

    invoke-direct {v4, v0, v6}, Ljava/util/HashMap;-><init>(IF)V

    .line 341
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v0, :cond_1e

    .line 342
    aget-object v6, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 344
    :cond_1e
    iput-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 348
    .end local v0           #columnCount:I
    .end local v1           #columns:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_20
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 349
    .local v5, periodIndex:I
    if-eq v5, v9, :cond_4c

    .line 350
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 351
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "SQLiteCursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requesting column name with table name -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 355
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4c
    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 356
    .local v3, i:Ljava/lang/Integer;
    if-eqz v3, :cond_5b

    .line 357
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 359
    :goto_5a
    return v6

    :cond_5b
    move v6, v9

    goto :goto_5a
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 291
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 294
    :cond_9
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 273
    monitor-enter p0

    .line 274
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit p0

    return-object v0

    .line 275
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method getMCount()I
    .registers 2

    .prologue
    .line 530
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method public onMove(II)Z
    .registers 5
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 281
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_1b

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1e

    .line 283
    :cond_1b
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 286
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 4
    .parameter "observer"

    .prologue
    const v1, 0x7fffffff

    .line 180
    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 181
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    if-ne v1, v0, :cond_e

    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    if-eq v1, v0, :cond_29

    :cond_e
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    if-nez v0, :cond_29

    .line 183
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V

    .line 185
    :try_start_15
    new-instance v0, Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;-><init>(Landroid/database/sqlite/SQLiteCursor;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    .line 186
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z

    if-eqz v0, :cond_26

    .line 187
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->notifyDataSetChange()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_2a

    .line 191
    :cond_26
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 195
    :cond_29
    return-void

    .line 191
    :catchall_2a
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method public requery()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 397
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v8

    .line 472
    :goto_8
    return v5

    .line 400
    :cond_9
    const-wide/16 v3, 0x0

    .line 405
    .local v3, timeStart:J
    monitor-enter p0

    .line 406
    :try_start_c
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v5, :cond_15

    .line 407
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v5}, Landroid/database/CursorWindow;->clear()V

    .line 409
    :cond_15
    const/4 v5, -0x1

    iput v5, p0, Landroid/database/sqlite/SQLiteCursor;->mPos:I
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_d3

    .line 410
    const/4 v0, 0x0

    .line 412
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_19
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->getDatabaseHandle(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_d3
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_24} :catch_64

    move-result-object v0

    .line 418
    :try_start_25
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_d3

    move-result v5

    if-nez v5, :cond_43

    .line 422
    :try_start_2f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_d3
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_32} :catch_86

    .line 430
    :try_start_32
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteQuery;->close()V

    .line 431
    new-instance v5, Landroid/database/sqlite/SQLiteQuery;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-direct {v5, v0, v6}, Landroid/database/sqlite/SQLiteQuery;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQuery;)V

    iput-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_ce
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_40} :catch_a8

    .line 437
    :try_start_40
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 441
    :cond_43
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v5, p0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    .line 442
    const/4 v5, -0x1

    iput v5, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 443
    iget v5, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 444
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_d3

    .line 446
    :try_start_54
    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteQuery;->requery()V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_fc
    .catch Ljava/lang/IllegalStateException; {:try_start_54 .. :try_end_59} :catch_d6

    .line 452
    :try_start_59
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 454
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_d3

    .line 461
    const/4 v2, 0x0

    .line 463
    .local v2, result:Z
    :try_start_5e
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z
    :try_end_61
    .catch Ljava/lang/IllegalStateException; {:try_start_5e .. :try_end_61} :catch_101

    move-result v2

    :goto_62
    move v5, v2

    .line 472
    goto :goto_8

    .line 413
    .end local v2           #result:Z
    :catch_64
    move-exception v5

    move-object v1, v5

    .line 415
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_66
    const-string v5, "SQLiteCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requery() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    monitor-exit p0

    move v5, v8

    goto :goto_8

    .line 423
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_86
    move-exception v1

    .line 425
    .restart local v1       #e:Ljava/lang/IllegalStateException;
    const-string v5, "SQLiteCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requery() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    monitor-exit p0
    :try_end_a5
    .catchall {:try_start_66 .. :try_end_a5} :catchall_d3

    move v5, v8

    goto/16 :goto_8

    .line 432
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_a8
    move-exception v5

    move-object v1, v5

    .line 434
    .restart local v1       #e:Ljava/lang/IllegalStateException;
    :try_start_aa
    const-string v5, "SQLiteCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requery() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c7
    .catchall {:try_start_aa .. :try_end_c7} :catchall_ce

    .line 437
    :try_start_c7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 435
    monitor-exit p0

    move v5, v8

    goto/16 :goto_8

    .line 437
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_ce
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v5

    .line 454
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_d3
    move-exception v5

    monitor-exit p0
    :try_end_d5
    .catchall {:try_start_c7 .. :try_end_d5} :catchall_d3

    throw v5

    .line 447
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_d6
    move-exception v5

    move-object v1, v5

    .line 449
    .restart local v1       #e:Ljava/lang/IllegalStateException;
    :try_start_d8
    const-string v5, "SQLiteCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requery() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f5
    .catchall {:try_start_d8 .. :try_end_f5} :catchall_fc

    .line 452
    :try_start_f5
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 450
    monitor-exit p0

    move v5, v8

    goto/16 :goto_8

    .line 452
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_fc
    move-exception v5

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v5
    :try_end_101
    .catchall {:try_start_f5 .. :try_end_101} :catchall_d3

    .line 464
    .restart local v2       #result:Z
    :catch_101
    move-exception v1

    .line 466
    .restart local v1       #e:Ljava/lang/IllegalStateException;
    const-string v5, "SQLiteCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requery() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_62
.end method

.method public setLoadStyle(II)V
    .registers 5
    .parameter "initialRead"
    .parameter "maxRead"

    .prologue
    .line 86
    iput p2, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    .line 87
    iput p1, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    .line 88
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 89
    return-void
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .registers 3
    .parameter "selectionArgs"

    .prologue
    .line 494
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .registers 3
    .parameter "window"

    .prologue
    .line 477
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_18

    .line 478
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 479
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V

    .line 481
    :try_start_d
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 483
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 485
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 487
    :cond_18
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    .line 488
    return-void

    .line 483
    :catchall_1b
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method
