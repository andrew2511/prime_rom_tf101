.class public final Lcom/newspaperdirect/pressreader/android/core/trx/ServiceDbAdapter;
.super Ljava/lang/Object;
.source "ServiceDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/trx/ServiceDbAdapter$Columns;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE services (id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT not null,client_name TEXT not null,url TEXT not null,application_url TEXT not null,user_name TEXT not null,activation_number TEXT not null,activation_type INTEGER not null);CREATE UNIQUE INDEX idx_by_name ON services(name);"

.field public static final TABLE_NAME:Ljava/lang/String; = "services"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Lcom/newspaperdirect/pressreader/android/core/Service;)V
    .locals 6
    .parameter "service"

    .prologue
    .line 74
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 77
    :cond_0
    :try_start_0
    const-string v2, "services"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ROWID="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

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

    .line 83
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 80
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 82
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 83
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 84
    throw v2
.end method

.method public static getServices()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 37
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 38
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v1, v9

    .line 45
    :goto_0
    return-object v1

    .line 40
    :cond_0
    :try_start_0
    const-string v1, "services"

    const/4 v2, 0x0

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

    .line 42
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 43
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v9

    .line 45
    goto :goto_0
.end method

.method public static insert(Lcom/newspaperdirect/pressreader/android/core/Service;)J
    .locals 7
    .parameter "service"

    .prologue
    .line 50
    const-wide/16 v1, -0x1

    .line 51
    .local v1, defaultValue:J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "name"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v5, "client_name"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getClientName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v5, "url"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v5, "application_url"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getApplicationUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v5, "user_name"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v5, "activation_number"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActivationNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v5, "activation_type"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->isExplicitlyActivated()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 60
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    move-wide v5, v1

    .line 66
    :goto_1
    return-wide v5

    .line 58
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 62
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_0
    const-string v5, "services"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 69
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_1

    .line 64
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 65
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-wide v5, v1

    .line 66
    goto :goto_1

    .line 68
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 69
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 70
    throw v5
.end method

.method public static update(Lcom/newspaperdirect/pressreader/android/core/Service;)Z
    .locals 9
    .parameter "service"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 88
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v3, "client_name"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getClientName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v3, "url"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v3, "application_url"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getApplicationUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v3, "user_name"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v3, "activation_number"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActivationNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "activation_type"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->isExplicitlyActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v8

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 97
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    move v3, v7

    .line 103
    :goto_1
    return v3

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    move v4, v7

    .line 95
    goto :goto_0

    .line 99
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_0
    const-string v3, "services"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ROWID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    move v3, v8

    .line 106
    :goto_2
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_1

    :cond_2
    move v3, v7

    .line 99
    goto :goto_2

    .line 101
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 102
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v3, v7

    .line 103
    goto :goto_1

    .line 105
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 106
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 107
    throw v3
.end method
