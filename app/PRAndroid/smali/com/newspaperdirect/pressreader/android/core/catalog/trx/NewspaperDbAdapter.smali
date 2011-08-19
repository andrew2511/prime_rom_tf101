.class public Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;
.super Ljava/lang/Object;
.source "NewspaperDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter$Columns;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE newspapers (service_id INTEGER NOT NULL,cid TEXT NOT NULL,title TEXT NOT NULL,parent_name TEXT,reading_allowed INTEGER NOT NULL,printing_allowed INTEGER NOT NULL,export_allowed INTEGER NOT NULL,enable_smart INTEGER NOT NULL,background_color INTEGER NOT NULL,media TEXT NOT NULL,is_right_to_left INTEGER NOT NULL,rate INTEGER NOT NULL,supplement_name TEXT,schedule TEXT NOT NULL,subscribed INTEGER NOT NULL,country_iso_code TEXT NOT NULL,title_is_free INTEGER,title_is_favorite INTEGER,language TEXT NOT NULL,parent_cid TEXT,CONSTRAINT primary_key_constraint PRIMARY KEY (service_id,cid));CREATE INDEX idx_by_language ON newspapers(language);CREATE INDEX idx_by_parent_cid ON newspapers(parent_cid);CREATE INDEX idx_by_country_iso_code_on_newspapers ON newspapers(country_iso_code);"

.field public static final TABLE_NAME:Ljava/lang/String; = "newspapers"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countSupplements(JLjava/lang/String;)I
    .locals 11
    .parameter "serviceId"
    .parameter "cid"

    .prologue
    const/4 v10, 0x0

    .line 277
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 278
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    move v4, v10

    .line 295
    :goto_0
    return v4

    .line 279
    :cond_0
    const/4 v0, 0x0

    .line 281
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "SELECT COUNT(1) FROM newspapers WHERE service_id=? AND cid!=parent_cid AND parent_cid=?"

    .line 282
    .local v3, sql:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 289
    if-eqz v0, :cond_1

    .line 290
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 291
    const/4 v0, 0x0

    .line 293
    :cond_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 285
    .end local v3           #sql:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 286
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    if-eqz v0, :cond_2

    .line 290
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 291
    const/4 v0, 0x0

    .line 293
    :cond_2
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    move v4, v10

    .line 295
    goto :goto_0

    .line 288
    :catchall_0
    move-exception v4

    .line 289
    if-eqz v0, :cond_3

    .line 290
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 291
    const/4 v0, 0x0

    .line 293
    :cond_3
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 294
    throw v4

    .line 289
    .restart local v3       #sql:Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    .line 290
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 291
    const/4 v0, 0x0

    .line 293
    :cond_5
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_1
.end method

.method public static deleteAll(J)V
    .locals 3
    .parameter "serviceId"

    .prologue
    .line 116
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 117
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 119
    :cond_0
    :try_start_0
    invoke-static {v0, p0, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->deleteAll(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 124
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 125
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 126
    throw v2
.end method

.method public static deleteAll(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3
    .parameter "db"
    .parameter "serviceId"

    .prologue
    .line 130
    const-string v0, "newspapers"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public static getLanguages(J)Landroid/database/Cursor;
    .locals 6
    .parameter "serviceId"

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 200
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v3, v5

    .line 211
    :goto_0
    return-object v3

    .line 202
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT DISTINCT language FROM newspapers WHERE service_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    const-string v4, " ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, query:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 208
    .end local v2           #query:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 209
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v3, v5

    .line 211
    goto :goto_0
.end method

.method public static getNewspaper(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "serviceId"
    .parameter "cid"

    .prologue
    const/4 v9, 0x0

    .line 147
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 148
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v1, v9

    .line 156
    :goto_0
    return-object v1

    .line 150
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

    const-string v2, "cid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, selection:Ljava/lang/String;
    const-string v1, "newspapers"

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

    .line 153
    .end local v3           #selection:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 154
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v9

    .line 156
    goto :goto_0
.end method

.method public static getNewspapers(J)Landroid/database/Cursor;
    .locals 10
    .parameter "serviceId"

    .prologue
    const/4 v9, 0x0

    .line 134
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 135
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v1, v9

    .line 142
    :goto_0
    return-object v1

    .line 137
    :cond_0
    :try_start_0
    const-string v1, "newspapers"

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

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 140
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v9

    .line 142
    goto :goto_0
.end method

.method public static getNewspapersByLanguage(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "serviceId"
    .parameter "language"

    .prologue
    const/4 v9, 0x0

    .line 185
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 186
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v1, v9

    .line 194
    :goto_0
    return-object v1

    .line 188
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

    const-string v2, "language"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, selection:Ljava/lang/String;
    const-string v1, "newspapers"

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 191
    .end local v3           #selection:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 192
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v9

    .line 194
    goto :goto_0
.end method

.method public static getNewspapersCount(J)I
    .locals 6
    .parameter "serviceId"

    .prologue
    .line 161
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 162
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 163
    .local v2, defaultValue:I
    if-nez v1, :cond_0

    move v4, v2

    .line 180
    :goto_0
    return v4

    .line 164
    :cond_0
    const/4 v0, 0x0

    .line 166
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT COUNT(1) FROM newspapers WHERE service_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    if-nez v0, :cond_2

    .line 176
    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 178
    const/4 v0, 0x0

    .line 180
    :cond_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v4, v2

    goto :goto_0

    .line 168
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-nez v4, :cond_4

    .line 176
    if-eqz v0, :cond_3

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 178
    const/4 v0, 0x0

    .line 180
    :cond_3
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v4, v2

    goto :goto_0

    .line 169
    :cond_4
    const/4 v4, 0x0

    :try_start_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .line 176
    if-eqz v0, :cond_5

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 178
    const/4 v0, 0x0

    .line 180
    :cond_5
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 171
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 172
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    if-eqz v0, :cond_6

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 178
    const/4 v0, 0x0

    .line 180
    :cond_6
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v4, v2

    .line 173
    goto :goto_0

    .line 175
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 176
    if-eqz v0, :cond_7

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 178
    const/4 v0, 0x0

    .line 180
    :cond_7
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 181
    throw v4
.end method

.method public static getNewspapersCountByLanguage(JLjava/lang/String;)I
    .locals 7
    .parameter "serviceId"
    .parameter "language"

    .prologue
    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, defaultValue:I
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 218
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    move v5, v2

    .line 236
    :goto_0
    return v5

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 221
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT COUNT(1) FROM newspapers WHERE service_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "language"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
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

    .line 223
    if-nez v0, :cond_2

    .line 232
    if-eqz v0, :cond_1

    .line 233
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 234
    const/4 v0, 0x0

    .line 236
    :cond_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v5, v2

    goto :goto_0

    .line 224
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_4

    .line 232
    if-eqz v0, :cond_3

    .line 233
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 234
    const/4 v0, 0x0

    .line 236
    :cond_3
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v5, v2

    goto :goto_0

    .line 225
    :cond_4
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    .line 232
    if-eqz v0, :cond_5

    .line 233
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 234
    const/4 v0, 0x0

    .line 236
    :cond_5
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 227
    .end local v4           #sql:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 228
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    if-eqz v0, :cond_6

    .line 233
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 234
    const/4 v0, 0x0

    .line 236
    :cond_6
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v5, v2

    .line 229
    goto :goto_0

    .line 231
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 232
    if-eqz v0, :cond_7

    .line 233
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 234
    const/4 v0, 0x0

    .line 236
    :cond_7
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 237
    throw v5
.end method

.method public static getSupplements(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "serviceId"
    .parameter "cid"

    .prologue
    const/4 v11, 0x0

    .line 263
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 264
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v1, v11

    .line 272
    :goto_0
    return-object v1

    .line 266
    :cond_0
    :try_start_0
    const-string v3, "service_id=? AND cid!=parent_cid AND  parent_cid=?"

    .line 267
    .local v3, selection:Ljava/lang/String;
    const-string v1, "newspapers"

    const/4 v2, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 269
    .end local v3           #selection:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 270
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v11

    .line 272
    goto :goto_0
.end method

.method public static insertNewspapers(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 6
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v1, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    return-void

    .line 88
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 89
    .local v0, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 90
    const-string v3, "service_id"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getServiceId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    const-string v3, "cid"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v3, "title"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v3, "parent_name"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getParentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v3, "reading_allowed"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getReadingAllowed()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 95
    const-string v3, "printing_allowed"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getPrintingAllowed()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 96
    const-string v3, "export_allowed"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getExportAllowed()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 97
    const-string v3, "enable_smart"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getEnableSmart()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 98
    const-string v3, "background_color"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getBackgroundColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v3, "media"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getMedia()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "is_right_to_left"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getIsRightToLeft()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 101
    const-string v3, "rate"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getRate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v3, "supplement_name"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getSupplementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "schedule"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getSchedule()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v3, "subscribed"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getSubscribed()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 105
    const-string v3, "country_iso_code"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCountryISOCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "title_is_free"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->isFree()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 107
    const-string v3, "title_is_favorite"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->isFavorite()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 108
    const-string v3, "language"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v3, "parent_cid"

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getParentCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v3, "newspapers"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 111
    invoke-static {p0, v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspapersToCountriesDbAdapter;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)V

    goto/16 :goto_0
.end method

.method public static insertNewspapers(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 69
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 72
    invoke-static {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->insertNewspapers(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 73
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 81
    :goto_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 82
    const/4 v0, 0x0

    .line 84
    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 76
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 78
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 79
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    throw v2
.end method

.method public static updateFavorite(Ljava/lang/String;Z)Z
    .locals 10
    .parameter "cid"
    .parameter "isFavorite"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 241
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "title_is_favorite"

    if-eqz p1, :cond_0

    move v5, v9

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 244
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    move v4, v8

    .line 255
    :goto_1
    return v4

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    move v5, v8

    .line 242
    goto :goto_0

    .line 246
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_0
    const-string v4, "newspapers"

    const-string v5, "cid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 247
    .local v2, result:I
    if-lez v2, :cond_2

    move v4, v9

    .line 258
    :goto_2
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_1

    :cond_2
    move v4, v8

    .line 247
    goto :goto_2

    .line 249
    .end local v2           #result:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 250
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "DB helper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Updating my library item with id = "

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

    .line 258
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v4, v8

    .line 251
    goto :goto_1

    .line 253
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 254
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v4, v8

    .line 255
    goto :goto_1

    .line 257
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 258
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 259
    throw v4
.end method
