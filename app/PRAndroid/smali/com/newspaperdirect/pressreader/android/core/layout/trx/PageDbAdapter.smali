.class public Lcom/newspaperdirect/pressreader/android/core/layout/trx/PageDbAdapter;
.super Ljava/lang/Object;
.source "PageDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/layout/trx/PageDbAdapter$Columns;
    }
.end annotation


# static fields
.field public static CREATE_TABLE:Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "pages"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "CREATE TABLE pages (my_library_item_id INTEGER NOT NULL,page_number INTEGER NOT NULL,page_name TEXT NOT NULL,section_name TEXT NOT NULL,width INTEGER NOT NULL,height INTEGER NOT NULL,zoom_scales TEXT NOT NULL);CREATE INDEX idx_by_my_library_item_id ON pages(my_library_item_id);"

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/layout/trx/PageDbAdapter;->CREATE_TABLE:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 81
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 82
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 84
    :cond_0
    :try_start_0
    const-string v2, "pages"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "my_library_item_id = "

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

    .line 90
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 86
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 87
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 89
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    .line 90
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 91
    throw v2
.end method

.method public static getPages(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Landroid/database/Cursor;
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    .line 67
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 68
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v1, v9

    .line 76
    :goto_0
    return-object v1

    .line 70
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "page_number"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "page_name"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "section_name"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "width"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "height"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "zoom_scales"

    aput-object v3, v2, v1

    .line 71
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "pages"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "my_library_item_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "page_number"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 73
    .end local v2           #columns:[Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 74
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 75
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v1, v9

    .line 76
    goto :goto_0
.end method

.method public static insert(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, pages:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/layout/Page;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v3, values:Landroid/content/ContentValues;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 41
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 44
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 55
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 62
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 44
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 45
    .local v2, page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 46
    const-string v5, "my_library_item_id"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getMyLibraryItem()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    const-string v5, "page_number"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    const-string v5, "page_name"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v5, "section_name"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getSection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v5, "width"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v6

    iget v6, v6, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    const-string v5, "height"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v6

    iget v6, v6, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v5, "zoom_scales"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getZoomScalesString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v5, "pages"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 57
    .end local v2           #page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 58
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 62
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto/16 :goto_0

    .line 60
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 61
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 62
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 63
    throw v4
.end method
