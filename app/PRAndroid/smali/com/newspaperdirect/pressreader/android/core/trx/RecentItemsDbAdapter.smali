.class public Lcom/newspaperdirect/pressreader/android/core/trx/RecentItemsDbAdapter;
.super Ljava/lang/Object;
.source "RecentItemsDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/trx/RecentItemsDbAdapter$Columns;
    }
.end annotation


# static fields
.field public static CREATE_TABLE:Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "my_library_recent_orders"

.field private static final TAG:Ljava/lang/String; = "RecentItemsDbAdapter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "CREATE TABLE my_library_recent_orders (issue_id TEXT NOT NULL,CID TEXT NOT NULL,order_date TEXT NOT NULL,order_with_supplements INTEGER,parent_issue_id TEXT);"

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/trx/RecentItemsDbAdapter;->CREATE_TABLE:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Lcom/newspaperdirect/pressreader/android/core/RecentItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 86
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    const-string v2, "my_library_recent_orders"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "issue_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getIssueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 92
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v2, "RecentItemsDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Deleting recent item with id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getIssueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from DB failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 94
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 95
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 97
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 98
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 99
    throw v2
.end method

.method public static getItems()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 40
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 41
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v1, v9

    .line 49
    :goto_0
    return-object v1

    .line 43
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "ROWID"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "issue_id"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "CID"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "order_date"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "order_with_supplements"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "parent_issue_id"

    aput-object v3, v2, v1

    .line 45
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "my_library_recent_orders"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 47
    .end local v2           #columns:[Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 48
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v9

    .line 49
    goto :goto_0
.end method

.method public static insert(Lcom/newspaperdirect/pressreader/android/core/RecentItem;)J
    .locals 8
    .parameter "item"

    .prologue
    .line 57
    const-wide/16 v1, -0x1

    .line 58
    .local v1, defaultValue:J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 59
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "issue_id"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getIssueId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v6, "CID"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getCID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 64
    .local v4, formatter:Ljava/text/SimpleDateFormat;
    const-string v6, "order_date"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getOrderDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v6, "order_with_supplements"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getOrderWithSupplements()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v6, "parent_issue_id"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getParentIssueId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 68
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    move-wide v6, v1

    .line 78
    :goto_1
    return-wide v6

    .line 65
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 70
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_0
    const-string v6, "my_library_recent_orders"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    .line 81
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_1

    .line 72
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 73
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v6, "RecentItemsDbAdapter"

    const-string v7, "Inserting my library item into DB failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-wide v6, v1

    .line 74
    goto :goto_1

    .line 76
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 77
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-wide v6, v1

    .line 78
    goto :goto_1

    .line 80
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 81
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 82
    throw v6
.end method

.method public static trimHitory(I)V
    .locals 7
    .parameter "countToTrim"

    .prologue
    .line 103
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    const-string v3, "delete from %1$s where rowid not in (select rowid from %1$s order by datetime(%2$s) desc limit %3$d);"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "my_library_recent_orders"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "order_date"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, sql:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 109
    .end local v2           #sql:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 110
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "RecentItemsDbAdapter"

    const-string v4, "Triming recent items from from DB failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 112
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 113
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 115
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 116
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 117
    throw v3
.end method
