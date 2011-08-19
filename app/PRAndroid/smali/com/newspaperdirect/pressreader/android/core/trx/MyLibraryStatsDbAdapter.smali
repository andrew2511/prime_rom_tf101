.class public Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter;
.super Ljava/lang/Object;
.source "MyLibraryStatsDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter$Columns;
    }
.end annotation


# static fields
.field public static CREATE_TABLE:Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "my_library_stats"

.field private static final TAG:Ljava/lang/String; = "MyLibraryStatsDbAdapter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "CREATE TABLE my_library_stats (issue_id TEXT NOT NULL,open_time TEXT NOT NULL,reported INTEGER NOT NULL);CREATE INDEX idx_by_issue_id ON my_library_stats(issue_id);"

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter;->CREATE_TABLE:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteReported(Ljava/lang/String;)V
    .locals 6
    .parameter "issueId"

    .prologue
    .line 120
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 121
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 123
    :cond_0
    :try_start_0
    const-string v2, "issue_id=? AND reported=1"

    .line 124
    .local v2, selection:Ljava/lang/String;
    const-string v3, "my_library_stats"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 126
    .end local v2           #selection:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 127
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "MyLibraryStatsDbAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleting statistics for issue "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from DB failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 129
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 130
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 132
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 133
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 134
    throw v3
.end method

.method public static getItemOpenDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 14
    .parameter "issueId"

    .prologue
    const/4 v13, 0x0

    .line 62
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 63
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 64
    .local v8, cur:Landroid/database/Cursor;
    if-nez v0, :cond_0

    move-object v1, v13

    .line 83
    :goto_0
    return-object v1

    .line 66
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "open_time"

    aput-object v4, v2, v1

    .line 67
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "issue_id=?"

    .line 68
    .local v3, selection:Ljava/lang/String;
    const-string v1, "my_library_stats"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 69
    if-nez v8, :cond_3

    .line 86
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_2
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v13

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 75
    .local v10, formattedDate:Ljava/lang/String;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v12, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 76
    .local v12, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v12, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 86
    .local v11, openDate:Ljava/util/Date;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_4
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v11

    .line 77
    goto :goto_0

    .line 81
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v10           #formattedDate:Ljava/lang/String;
    .end local v11           #openDate:Ljava/util/Date;
    .end local v12           #sdf:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 82
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_5
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v13

    .line 83
    goto :goto_0

    .line 85
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 86
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_6
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 88
    throw v1
.end method

.method public static getReportedItems()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 32
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 33
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v1, v9

    .line 42
    :goto_0
    return-object v1

    .line 35
    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "issue_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "open_time"

    aput-object v4, v2, v1

    .line 36
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "reported=1"

    .line 37
    .local v3, selection:Ljava/lang/String;
    const-string v1, "my_library_stats"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 39
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 40
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v9

    .line 42
    goto :goto_0
.end method

.method public static getUnreportedItems()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 47
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v1, v9

    .line 57
    :goto_0
    return-object v1

    .line 50
    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "issue_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "open_time"

    aput-object v4, v2, v1

    .line 51
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "reported=0"

    .line 52
    .local v3, selection:Ljava/lang/String;
    const-string v1, "my_library_stats"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 54
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 55
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v9

    .line 57
    goto :goto_0
.end method

.method public static insert(Ljava/lang/String;Ljava/util/Date;)J
    .locals 9
    .parameter "issueId"
    .parameter "openTime"

    .prologue
    .line 92
    const-wide/16 v1, -0x1

    .line 93
    .local v1, defaultValue:J
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter;->getItemOpenDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_0

    move-wide v6, v1

    .line 112
    :goto_0
    return-wide v6

    .line 95
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "issue_id"

    invoke-virtual {v5, v6, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 98
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    const-string v6, "open_time"

    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v6, "reported"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 102
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    move-wide v6, v1

    goto :goto_0

    .line 104
    :cond_1
    :try_start_0
    const-string v6, "my_library_stats"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    .line 115
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 106
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 107
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v6, "MyLibraryStatsDbAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Inserting statistics for issue "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " into DB failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-wide v6, v1

    .line 108
    goto :goto_0

    .line 110
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 111
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-wide v6, v1

    .line 112
    goto :goto_0

    .line 114
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 115
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 116
    throw v6
.end method

.method public static markReported(Ljava/lang/String;)Z
    .locals 9
    .parameter "issueId"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 138
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "reported"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 141
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move v4, v7

    .line 152
    :goto_0
    return v4

    .line 143
    :cond_0
    :try_start_0
    const-string v2, "issue_id=?"

    .line 144
    .local v2, selection:Ljava/lang/String;
    const-string v4, "my_library_stats"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v4, v3, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v8

    .line 155
    :goto_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    :cond_1
    move v4, v7

    .line 144
    goto :goto_1

    .line 146
    .end local v2           #selection:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 147
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "MyLibraryStatsDbAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Updating statistics for issue "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in DB failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v4, v7

    .line 148
    goto :goto_0

    .line 150
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 151
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v4, v7

    .line 152
    goto :goto_0

    .line 154
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 155
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 156
    throw v4
.end method
