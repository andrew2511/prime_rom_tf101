.class public Lcom/newspaperdirect/pressreader/android/core/catalog/trx/CountryDbAdapter;
.super Ljava/lang/Object;
.source "CountryDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/catalog/trx/CountryDbAdapter$Columns;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE countries (service_id INTEGER NOT NULL,iso_code TEXT NOT NULL,name TEXT NOT NULL,CONSTRAINT primary_key_constraint PRIMARY KEY (service_id,iso_code));"

.field public static final TABLE_NAME:Ljava/lang/String; = "countries"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAll(J)V
    .locals 3
    .parameter "serviceId"

    .prologue
    .line 57
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 60
    :cond_0
    :try_start_0
    invoke-static {v0, p0, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/CountryDbAdapter;->deleteAll(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 65
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 66
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 67
    throw v2
.end method

.method public static deleteAll(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3
    .parameter "db"
    .parameter "serviceId"

    .prologue
    .line 71
    const-string v0, "countries"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public static getCountries(J)Landroid/database/Cursor;
    .locals 10
    .parameter "serviceId"

    .prologue
    const/4 v9, 0x0

    .line 75
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 76
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v1, v9

    .line 83
    :goto_0
    return-object v1

    .line 78
    :cond_0
    :try_start_0
    const-string v1, "countries"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "service_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 81
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v9

    .line 83
    goto :goto_0
.end method

.method public static getCountry(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "serviceId"
    .parameter "isoCode"

    .prologue
    const/4 v9, 0x0

    .line 88
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v1, v9

    .line 97
    :goto_0
    return-object v1

    .line 91
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iso_code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, selection:Ljava/lang/String;
    const-string v1, "countries"

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 94
    .end local v3           #selection:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 95
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v9

    .line 97
    goto :goto_0
.end method

.method public static insertCountries(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .locals 6
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Country;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, countries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/newspaperdirect/pressreader/android/core/catalog/Country;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .local v1, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    return-void

    .line 47
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    .line 48
    .local v0, country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 49
    const-string v3, "service_id"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getServiceId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    const-string v3, "iso_code"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getISOCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "name"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "countries"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method public static insertCountries(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Country;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, countries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/newspaperdirect/pressreader/android/core/catalog/Country;>;"
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 30
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 33
    invoke-static {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/CountryDbAdapter;->insertCountries(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    .line 34
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 41
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 36
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 37
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 41
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 39
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 40
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 41
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 42
    throw v2
.end method
