.class public Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspapersToCountriesDbAdapter;
.super Ljava/lang/Object;
.source "NewspapersToCountriesDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspapersToCountriesDbAdapter$Columns;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE newspapers_to_countries (service_id INTEGER NOT NULL,cid TEXT NOT NULL,country_iso_code TEXT NOT NULL);CREATE INDEX idx_by_cid ON newspapers_to_countries(service_id,cid);CREATE INDEX idx_by_country_iso_code ON newspapers_to_countries(service_id,country_iso_code);"

.field public static final TABLE_NAME:Ljava/lang/String; = "newspapers_to_countries"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAll(J)V
    .locals 3
    .parameter "serviceId"

    .prologue
    .line 47
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 49
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p0, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspapersToCountriesDbAdapter;->deleteAll(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 57
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 54
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 55
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 56
    throw v2
.end method

.method public static deleteAll(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3
    .parameter "db"
    .parameter "serviceId"

    .prologue
    .line 60
    const-string v0, "newspapers_to_countries"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public static getCountries(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serviceId"
    .parameter "cid"

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v3, v5

    .line 80
    :goto_0
    return-object v3

    .line 67
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT c.* FROM newspapers_to_countries ntc INNER JOIN countries c ON c.service_id=ntc.service_id AND c.iso_code=ntc.country_iso_code WHERE ntc.service_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 73
    const-string v4, " AND ntc."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 74
    const-string v4, " ORDER BY c."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, query:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 77
    .end local v2           #query:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 78
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v3, v5

    .line 80
    goto :goto_0
.end method

.method public static getNewspapers(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serviceId"
    .parameter "countryISOCode"

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v3, v5

    .line 101
    :goto_0
    return-object v3

    .line 88
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT n.* FROM newspapers_to_countries ntc INNER JOIN newspapers n ON n.service_id=ntc.service_id AND n.cid=ntc.cid WHERE ntc.service_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 94
    const-string v4, " AND ntc."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "country_iso_code"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    const-string v4, " ORDER BY n."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, query:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 98
    .end local v2           #query:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 99
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v3, v5

    .line 101
    goto :goto_0
.end method

.method public static getNewspapersCount(JLjava/lang/String;)I
    .locals 7
    .parameter "serviceId"
    .parameter "countryISOCode"

    .prologue
    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, defaultValue:I
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 108
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    move v5, v2

    .line 126
    :goto_0
    return v5

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT COUNT(1) FROM newspapers_to_countries WHERE service_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "country_iso_code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, sql:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    if-nez v0, :cond_2

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v0, 0x0

    .line 126
    :cond_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v5, v2

    goto :goto_0

    .line 114
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_4

    .line 122
    if-eqz v0, :cond_3

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v0, 0x0

    .line 126
    :cond_3
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v5, v2

    goto :goto_0

    .line 115
    :cond_4
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    .line 122
    if-eqz v0, :cond_5

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v0, 0x0

    .line 126
    :cond_5
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 117
    .end local v4           #sql:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 118
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    if-eqz v0, :cond_6

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v0, 0x0

    .line 126
    :cond_6
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v5, v2

    .line 119
    goto :goto_0

    .line 121
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 122
    if-eqz v0, :cond_7

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v0, 0x0

    .line 126
    :cond_7
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 127
    throw v5
.end method

.method public static insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)V
    .locals 7
    .parameter "db"
    .parameter "newspaper"

    .prologue
    const/4 v6, 0x0

    .line 30
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 31
    .local v1, values:Landroid/content/ContentValues;
    iget-object v2, p1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->Countries:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->Countries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 32
    :cond_0
    const-string v2, "service_id"

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getServiceId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    const-string v2, "cid"

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v2, "country_iso_code"

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCountryISOCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "newspapers_to_countries"

    invoke-virtual {p0, v2, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 44
    :cond_1
    return-void

    .line 37
    :cond_2
    iget-object v2, p1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->Countries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    .line 38
    .local v0, country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 39
    const-string v3, "service_id"

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getServiceId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 40
    const-string v3, "cid"

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v3, "country_iso_code"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getISOCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "newspapers_to_countries"

    invoke-virtual {p0, v3, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method
