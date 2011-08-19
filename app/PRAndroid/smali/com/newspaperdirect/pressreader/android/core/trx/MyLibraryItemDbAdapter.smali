.class public Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryItemDbAdapter;
.super Ljava/lang/Object;
.source "MyLibraryItemDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryItemDbAdapter$Columns;
    }
.end annotation


# static fields
.field public static CREATE_TABLE:Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "my_library_items"

.field private static final TAG:Ljava/lang/String; = "MyLibraryItemDbAdapter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "CREATE TABLE my_library_items (issue_id TEXT NOT NULL,title TEXT NOT NULL,pages_count INTEGER NOT NULL,enable_smart INTEGER NOT NULL,parent_name TEXT,country TEXT NOT NULL,language TEXT NOT NULL,state INTEGER NOT NULL,license_urls TEXT NOT NULL,current_page_number INTEGER NOT NULL,certificate TEXT,advice INTEGER);"

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryItemDbAdapter;->CREATE_TABLE:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 98
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 99
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 101
    :cond_0
    :try_start_0
    const-string v2, "my_library_items"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ROWID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 103
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 104
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v2, "MyLibraryItemDbAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Deleting my library item with id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from DB failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 106
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 107
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

.method public static getItems()Landroid/database/Cursor;
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

    .line 59
    :goto_0
    return-object v1

    .line 50
    :cond_0
    const/16 v1, 0xd

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "ROWID"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "issue_id"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "pages_count"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    .line 51
    const-string v3, "enable_smart"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "parent_name"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "country"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "language"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "state"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    .line 52
    const-string v3, "license_urls"

    aput-object v3, v2, v1

    const/16 v1, 0xa

    const-string v3, "current_page_number"

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string v3, "certificate"

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-string v3, "advice"

    aput-object v3, v2, v1

    .line 54
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "my_library_items"

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

    .line 56
    .end local v2           #columns:[Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 57
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v9

    .line 59
    goto :goto_0
.end method

.method public static insert(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)J
    .locals 7
    .parameter "item"

    .prologue
    .line 64
    const-wide/16 v1, -0x1

    .line 65
    .local v1, defaultValue:J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "issue_id"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v5, "title"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v5, "pages_count"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v5, "enable_smart"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getEnableSmart()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    const-string v5, "parent_name"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getParentName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v5, "country"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v5, "language"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v5, "state"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v5, "license_urls"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLicenseUrlsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v5, "current_page_number"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrentPageNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const-string v5, "certificate"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCertificateString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v5, "advice"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isAdvice()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 80
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    move-wide v5, v1

    .line 90
    :goto_1
    return-wide v5

    .line 77
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 82
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_0
    const-string v5, "my_library_items"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v5

    .line 93
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_1

    .line 84
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 85
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v5, "MyLibraryItemDbAdapter"

    const-string v6, "Inserting my library item into DB failed"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-wide v5, v1

    .line 86
    goto :goto_1

    .line 88
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 89
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-wide v5, v1

    .line 90
    goto :goto_1

    .line 92
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 93
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 94
    throw v5
.end method

.method public static update(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 157
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "issue_id"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "pages_count"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v3, "enable_smart"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getEnableSmart()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 162
    const-string v3, "parent_name"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getParentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v3, "country"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v3, "language"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v3, "state"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v3, "license_urls"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLicenseUrlsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v3, "current_page_number"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrentPageNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v3, "certificate"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCertificateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v3, "advice"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isAdvice()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v8

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 172
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    move v3, v7

    .line 182
    :goto_1
    return v3

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    move v4, v7

    .line 169
    goto :goto_0

    .line 174
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_0
    const-string v3, "my_library_items"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ROWID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    move v3, v8

    .line 185
    :goto_2
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_1

    :cond_2
    move v3, v7

    .line 174
    goto :goto_2

    .line 176
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 177
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "MyLibraryItemDbAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Updating my library item with id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in DB failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v3, v7

    .line 178
    goto :goto_1

    .line 180
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 181
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v3, v7

    .line 182
    goto :goto_1

    .line 184
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 185
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 186
    throw v3
.end method

.method public static updateCurrentPage(JI)Z
    .locals 7
    .parameter "id"
    .parameter "page"

    .prologue
    const/4 v6, 0x0

    .line 136
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "current_page_number"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 139
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move v3, v6

    .line 149
    :goto_0
    return v3

    .line 141
    :cond_0
    :try_start_0
    const-string v3, "my_library_items"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ROWID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    .line 152
    :goto_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    :cond_1
    move v3, v6

    .line 141
    goto :goto_1

    .line 143
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 144
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "MyLibraryItemDbAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Updating my library item with id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in DB failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v3, v6

    .line 145
    goto :goto_0

    .line 147
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 148
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v3, v6

    .line 149
    goto :goto_0

    .line 151
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 152
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 153
    throw v3
.end method

.method public static updateState(JI)Z
    .locals 7
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    .line 115
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 118
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move v3, v6

    .line 128
    :goto_0
    return v3

    .line 120
    :cond_0
    :try_start_0
    const-string v3, "my_library_items"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ROWID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    .line 131
    :goto_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    :cond_1
    move v3, v6

    .line 120
    goto :goto_1

    .line 122
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 123
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "MyLibraryItemDbAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Updating my library item with id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in DB failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v3, v6

    .line 124
    goto :goto_0

    .line 126
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 127
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move v3, v6

    .line 128
    goto :goto_0

    .line 130
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 131
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 132
    throw v3
.end method
