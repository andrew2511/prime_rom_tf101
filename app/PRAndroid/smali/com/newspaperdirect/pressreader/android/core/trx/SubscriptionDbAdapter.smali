.class public Lcom/newspaperdirect/pressreader/android/core/trx/SubscriptionDbAdapter;
.super Ljava/lang/Object;
.source "SubscriptionDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/trx/SubscriptionDbAdapter$Columns;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE subscriptions (id INTEGER PRIMARY KEY,service_name TEXT NOT NULL,cid TEXT NOT NULL,title TEXT NOT NULL,country TEXT NOT NULL,language TEXT NOT NULL);"

.field public static final TABLE_NAME:Ljava/lang/String; = "subscriptions"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Lcom/newspaperdirect/pressreader/android/core/Subscription;)V
    .locals 6
    .parameter "subscription"

    .prologue
    .line 102
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "subscriptions"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 112
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 107
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 109
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 110
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 111
    throw v2
.end method

.method public static deleteAll()V
    .locals 5

    .prologue
    .line 115
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 117
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "subscriptions"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 125
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 120
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 122
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 123
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 124
    throw v2
.end method

.method public static deleteAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    const/4 v1, 0x0

    .line 128
    const-string v0, "subscriptions"

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public static getByCid(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "cid"

    .prologue
    const/4 v9, 0x0

    .line 132
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v1, v9

    .line 140
    :goto_0
    return-object v1

    .line 135
    :cond_0
    :try_start_0
    const-string v1, "subscriptions"

    const/4 v2, 0x0

    const-string v3, "CID=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 138
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 139
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v9

    .line 140
    goto :goto_0
.end method

.method public static getSubscriptions()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 35
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 36
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v1, v9

    .line 43
    :goto_0
    return-object v1

    .line 38
    :cond_0
    :try_start_0
    const-string v1, "subscriptions"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 41
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 42
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v9

    .line 43
    goto :goto_0
.end method

.method public static insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 6
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, subscriptions:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/Subscription;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v1, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    return-void

    .line 89
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/Subscription;

    .line 90
    .local v0, subscription:Lcom/newspaperdirect/pressreader/android/core/Subscription;
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 91
    const-string v3, "id"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    const-string v3, "service_name"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v3, "cid"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v3, "title"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "country"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v3, "language"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "subscriptions"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method public static insert(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, subscriptions:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/Subscription;>;"
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 75
    invoke-static {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/trx/SubscriptionDbAdapter;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 76
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 83
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 79
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 83
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 81
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 82
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 83
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 84
    throw v2
.end method

.method public static insert(Lcom/newspaperdirect/pressreader/android/core/Subscription;)Z
    .locals 8
    .parameter "subscription"

    .prologue
    const/4 v7, 0x0

    .line 48
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "id"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    const-string v3, "service_name"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "cid"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "country"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "language"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 57
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move v3, v7

    .line 63
    :goto_0
    return v3

    .line 59
    :cond_0
    :try_start_0
    const-string v3, "subscriptions"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 66
    :goto_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    :cond_1
    move v3, v7

    .line 59
    goto :goto_1

    .line 61
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 62
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v3, v7

    .line 63
    goto :goto_0

    .line 65
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 66
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 67
    throw v3
.end method
