.class public Landroid/database/sqlite/SQLiteQuery;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteQuery"


# instance fields
.field private mClosed:Z

.field private mOffsetIndex:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQuery;)V
    .registers 5
    .parameter "db"
    .parameter "query"

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p2, Landroid/database/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 34
    iput v1, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    .line 36
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    .line 61
    iget-object v0, p2, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:Ljava/util/HashMap;

    .line 62
    iget v0, p2, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    iput v0, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 6
    .parameter "db"
    .parameter "query"
    .parameter "offsetIndex"
    .parameter "bindArgs"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 34
    iput v0, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    .line 36
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    .line 47
    iput p3, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    .line 48
    invoke-virtual {p0, p4}, Landroid/database/sqlite/SQLiteQuery;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private final native native_column_count()I
.end method

.method private final native native_column_name(I)Ljava/lang/String;
.end method

.method private final native native_fill_window(Landroid/database/CursorWindow;IIII)I
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/database/sqlite/SQLiteProgram;->close()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    .line 146
    return-void
.end method

.method columnCountLocked()I
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    .line 115
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteQuery;->native_column_count()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    move-result v0

    .line 117
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    return v0

    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    throw v0
.end method

.method columnNameLocked(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    .line 131
    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQuery;->native_column_name(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    return-object v0

    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    throw v0
.end method

.method fillWindow(Landroid/database/CursorWindow;II)I
    .registers 14
    .parameter "window"
    .parameter "maxRead"
    .parameter "lastPos"

    .prologue
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 74
    .local v8, timeStart:J
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 75
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    const-string v2, "GETLOCK:"

    invoke-virtual {v0, v1, v8, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 77
    :try_start_12
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_56

    .line 79
    :try_start_15
    invoke-virtual {p1}, Landroid/database/CursorWindow;->acquireReference()V

    .line 83
    invoke-virtual {p1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    iget v3, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteQuery;->native_fill_window(Landroid/database/CursorWindow;IIII)I

    move-result v7

    .line 85
    .local v7, numRows:I
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_51
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_2d} :catch_3a
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_15 .. :try_end_2d} :catch_49
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_2d} :catch_60

    .line 97
    :try_start_2d
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_56

    .line 100
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 101
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    move v0, v7

    .end local v7           #numRows:I
    :goto_39
    return v0

    .line 87
    :catch_3a
    move-exception v0

    move-object v6, v0

    .line 89
    .local v6, e:Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    .line 97
    :try_start_3d
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_56

    .line 100
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 101
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_39

    .line 90
    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catch_49
    move-exception v0

    move-object v6, v0

    .line 91
    .local v6, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_4b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 92
    throw v6
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    .line 97
    .end local v6           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_51
    move-exception v0

    :try_start_52
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    .line 100
    :catchall_56
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 101
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0

    .line 93
    :catch_60
    move-exception v0

    move-object v6, v0

    .line 94
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_62
    const-string v0, "SQLiteQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    throw v6
    :try_end_8b
    .catchall {:try_start_62 .. :try_end_8b} :catchall_51
.end method

.method requery()V
    .registers 3

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    if-eqz v0, :cond_d

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "requerying a closed cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->compileAndbindAllArgs()V

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteQuery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
