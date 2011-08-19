.class Lcom/google/android/apps/books/provider/ConfigurationProvidelet;
.super Ljava/lang/Object;
.source "ConfigurationProvidelet.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/Providelet;


# static fields
.field private static final BOOKS_DIR_NAME:Ljava/lang/String; = "Books"

.field private static final TAG:Ljava/lang/String; = "ConfigurationProvidelet"

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private mBasePath:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

.field private final mInitializedBasePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V
    .locals 1
    .parameter "context"
    .parameter "db"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mInitializedBasePaths:Ljava/util/Set;

    .line 65
    iput-object p1, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 67
    return-void
.end method

.method private deleteAllFiles(Ljava/io/File;)V
    .locals 10
    .parameter "baseDir"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 415
    iget-object v4, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v4}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 418
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 419
    .local v0, contentStatusValues:Landroid/content/ContentValues;
    const-string v4, "content_status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    const-string v2, "content_status=?"

    .line 421
    .local v2, where:Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 422
    .local v3, whereArgs:[Ljava/lang/String;
    const-string v4, "sections"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 423
    const-string v4, "resources"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 424
    const-string v4, "pages"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 426
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #contentStatusValues:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 427
    .restart local v0       #contentStatusValues:Landroid/content/ContentValues;
    const-string v4, "cover_content_status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    const-string v2, "cover_content_status=?"

    .line 429
    new-array v3, v7, [Ljava/lang/String;

    .end local v3           #whereArgs:[Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 430
    .restart local v3       #whereArgs:[Ljava/lang/String;
    const-string v4, "volumes"

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 432
    if-eqz p1, :cond_0

    .line 433
    invoke-static {p1}, Lcom/google/android/apps/books/util/ProviderUtils;->recursiveDelete(Ljava/io/File;)Z

    .line 436
    :cond_0
    monitor-enter p0

    .line 439
    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mInitializedBasePaths:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 440
    monitor-exit p0

    .line 441
    return-void

    .line 440
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getCurrentBasePath(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 11
    .parameter "db"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mBasePath:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mBasePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 147
    .local v10, result:Ljava/lang/String;
    :goto_0
    if-nez v10, :cond_1

    .line 149
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v5

    .line 150
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "key=?"

    .line 151
    .local v3, where:Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    const-string v0, "base_path"

    aput-object v0, v4, v5

    .line 152
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v8, "1"

    .line 153
    .local v8, limit:Ljava/lang/String;
    const/4 v9, 0x0

    .line 155
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "config"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 157
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 161
    :cond_0
    if-eqz v9, :cond_1

    .line 162
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 166
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v8           #limit:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_1
    return-object v10

    .end local v10           #result:Ljava/lang/String;
    :cond_2
    move-object v10, v1

    .line 146
    goto :goto_0

    .line 161
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v8       #limit:Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #result:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 162
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getDefaultBaseDirectory()Ljava/io/File;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x0

    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, externalRoot:Ljava/io/File;
    const-wide/16 v0, 0x0

    .line 374
    .local v0, externalFreeBytes:J
    invoke-static {}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->isExternalStorageEmulated()Z

    move-result v7

    if-nez v7, :cond_0

    .line 376
    :try_start_0
    iget-object v7, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 377
    if-eqz v2, :cond_0

    .line 378
    invoke-static {v2}, Lcom/google/android/apps/books/util/ProviderUtils;->freeBytesOnFilesystem(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 385
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getInternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 386
    .local v5, internalRoot:Ljava/io/File;
    if-nez v5, :cond_1

    move-wide v3, v9

    .line 390
    .local v3, internalFreeBytes:J
    :goto_1
    cmp-long v7, v0, v3

    if-lez v7, :cond_2

    .line 391
    move-object v6, v2

    .line 397
    .local v6, result:Ljava/io/File;
    :goto_2
    return-object v6

    .line 386
    .end local v3           #internalFreeBytes:J
    .end local v6           #result:Ljava/io/File;
    :cond_1
    invoke-static {v5}, Lcom/google/android/apps/books/util/ProviderUtils;->freeBytesOnFilesystem(Ljava/io/File;)J

    move-result-wide v7

    move-wide v3, v7

    goto :goto_1

    .line 392
    .restart local v3       #internalFreeBytes:J
    :cond_2
    cmp-long v7, v3, v9

    if-lez v7, :cond_3

    .line 393
    move-object v6, v5

    .restart local v6       #result:Ljava/io/File;
    goto :goto_2

    .line 395
    .end local v6           #result:Ljava/io/File;
    :cond_3
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Can\'t find a storage location with free space!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 380
    .end local v3           #internalFreeBytes:J
    .end local v5           #internalRoot:Ljava/io/File;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static getExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 324
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 325
    .local v0, result:Ljava/io/File;
    if-nez v0, :cond_1

    .line 326
    new-instance v1, Ljava/io/IOException;

    const-string v2, "getExternalFilesDir(null) returned null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    .end local v0           #result:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Books"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 330
    .restart local v0       #result:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 334
    :cond_1
    return-object v0
.end method

.method public static getInternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "context"

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static isExternalStorageEmulated()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 344
    :try_start_0
    const-class v3, Landroid/os/Environment;

    const-string v4, "isExternalStorageEmulated"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 346
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v2

    .local v2, result:Z
    move v3, v2

    .line 360
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #result:Z
    :goto_0
    return v3

    .line 348
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/NoSuchMethodException;
    move v3, v6

    .line 350
    goto :goto_0

    .line 351
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/SecurityException;
    move v3, v6

    .line 354
    goto :goto_0

    .line 355
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v3, v6

    .line 356
    goto :goto_0

    .line 357
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/IllegalAccessException;
    move v3, v6

    .line 358
    goto :goto_0

    .line 359
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    move v3, v6

    .line 360
    goto :goto_0
.end method

.method private static makeBasePathValues(Ljava/io/File;)Landroid/content/ContentValues;
    .locals 1
    .parameter "path"

    .prologue
    .line 284
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->makeBasePathValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static makeBasePathValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "value"

    .prologue
    .line 288
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 289
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "key"

    const-string v2, "base_path"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "value"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-object v0
.end method

.method private onBasePathChanged(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "uri"
    .parameter "oldPath"
    .parameter "newPath"
    .parameter "db"

    .prologue
    .line 81
    const-string v2, "deleteFilesIfBasePathUnchanged"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, parameterValue:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    .local v0, deleteFilesUnconditionally:Z
    if-eqz p2, :cond_1

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->deleteAllFiles(Ljava/io/File;)V

    .line 90
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mBasePath:Ljava/io/File;

    .line 91
    return-void
.end method

.method public static resetBasePath(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "resolver"

    .prologue
    .line 306
    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Configuration;->CONFIGURATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "deleteFilesIfBasePathUnchanged"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 310
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "RESET"

    invoke-static {v1}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->makeBasePathValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 311
    return-void
.end method

.method public static setBasePath(Landroid/content/ContentResolver;Ljava/io/File;)V
    .locals 2
    .parameter "resolver"
    .parameter "path"

    .prologue
    .line 298
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Configuration;->CONFIGURATION_URI:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->makeBasePathValues(Ljava/io/File;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 299
    return-void
.end method


# virtual methods
.method public delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Configuration URIs do not support deletion"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteAllFiles()V
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->deleteAllFiles(Ljava/io/File;)V

    .line 407
    return-void
.end method

.method public declared-synchronized getBaseDir()Ljava/io/File;
    .locals 10

    .prologue
    const-string v0, "ConfigurationProvidelet"

    .line 243
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mBasePath:Ljava/io/File;

    .line 244
    .local v9, result:Ljava/io/File;
    if-nez v9, :cond_0

    .line 247
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v3, v0

    .line 248
    .local v3, columns:[Ljava/lang/String;
    const-string v4, "key=?"

    .line 249
    .local v4, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "base_path"

    aput-object v1, v5, v0

    .line 250
    .local v5, whereArgs:[Ljava/lang/String;
    const/16 v1, 0x320

    sget-object v2, Lcom/google/android/apps/books/provider/BooksContract$Configuration;->CONFIGURATION_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 252
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 253
    iget-object v9, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mBasePath:Ljava/io/File;

    .line 257
    .end local v3           #columns:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_0
    if-eqz v9, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mInitializedBasePaths:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getInternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, v9, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mInitializedBasePaths:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    :cond_2
    monitor-exit p0

    return-object v9

    .line 261
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 262
    .local v8, e:Ljava/io/IOException;
    :try_start_3
    const-string v0, "ConfigurationProvidelet"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const-string v0, "ConfigurationProvidelet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred creating .nomedia file on external storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 243
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #result:Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 99
    iget-object v8, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v8}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 100
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "key"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 101
    .local v4, key:Ljava/lang/String;
    const-string v8, "base_path"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 104
    .local v3, isBasePathChange:Z
    if-eqz v3, :cond_0

    .line 105
    const-string v8, "value"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, path:Ljava/lang/String;
    const-string v8, "RESET"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getDefaultBaseDirectory()Ljava/io/File;

    move-result-object v1

    .line 109
    .local v1, defaultBaseDir:Ljava/io/File;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, p3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local p3
    .local v7, values:Landroid/content/ContentValues;
    :try_start_1
    const-string v8, "value"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p3, v7

    .line 129
    .end local v1           #defaultBaseDir:Ljava/io/File;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #values:Landroid/content/ContentValues;
    .restart local p3
    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getCurrentBasePath(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 131
    .local v5, oldBasePath:Ljava/lang/String;
    :goto_1
    const-string v8, "config"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 134
    if-eqz v3, :cond_1

    .line 135
    const-string v8, "value"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p2, v5, v8, v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->onBasePathChanged(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    :cond_1
    const/4 v8, 0x0

    .end local v5           #oldBasePath:Ljava/lang/String;
    :goto_2
    return-object v8

    .line 111
    .restart local v6       #path:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 112
    .local v2, e:Ljava/io/IOException;
    :goto_3
    const-string v8, "ConfigurationProvidelet"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 113
    const-string v8, "ConfigurationProvidelet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error choosing default base path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 120
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 121
    const-string v8, "ConfigurationProvidelet"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 122
    const-string v8, "ConfigurationProvidelet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid base path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    .end local v6           #path:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    move-object v5, v8

    goto :goto_1

    .line 111
    .end local p3
    .restart local v1       #defaultBaseDir:Ljava/io/File;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v8

    move-object v2, v8

    move-object p3, v7

    .end local v7           #values:Landroid/content/ContentValues;
    .restart local p3
    goto :goto_3
.end method

.method public openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "match"
    .parameter "uri"
    .parameter "mode"

    .prologue
    .line 171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Configuration URIs do not support openFile"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 179
    const-string v3, "missing selection"

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-object/from16 v0, p5

    array-length v0, v0

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_0
    const-string v4, "unexpected number of selection arguments (should be 1)"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 182
    move-object/from16 v0, p3

    array-length v0, v0

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    :goto_1
    const-string v4, "unexpected number of projection arguments (should be 1)"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 184
    const-string v3, "value"

    const/4 v4, 0x0

    aget-object v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "unexpected column requested (should be value)"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 186
    const/4 v3, 0x0

    aget-object v3, p5, v3

    const-string v4, "unexpected null selection argument"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 189
    .local v12, key:Ljava/lang/String;
    const-string v3, "ConfigurationProvidelet"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    const-string v3, "ConfigurationProvidelet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading configuration value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v3}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 195
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v10, "1"

    .line 196
    .local v10, limit:Ljava/lang/String;
    const-string v3, "config"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 201
    .local v13, result:Landroid/database/Cursor;
    const-string v3, "base_path"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 203
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v13, 0x0

    .line 207
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getDefaultBaseDirectory()Ljava/io/File;

    move-result-object v11

    .line 208
    .local v11, defaultBasePath:Ljava/io/File;
    if-eqz v11, :cond_2

    .line 209
    const-string v3, "ConfigurationProvidelet"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    const-string v3, "ConfigurationProvidelet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chose file storage base path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1
    const/16 v3, 0x320

    sget-object v4, Lcom/google/android/apps/books/provider/BooksContract$Configuration;->CONFIGURATION_URI:Landroid/net/Uri;

    invoke-static {v11}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->makeBasePathValues(Ljava/io/File;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 216
    const-string v3, "config"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 229
    .end local v11           #defaultBasePath:Ljava/io/File;
    :cond_2
    :goto_2
    return-object v13

    .line 180
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #limit:Ljava/lang/String;
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #result:Landroid/database/Cursor;
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 182
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 224
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #limit:Ljava/lang/String;
    .restart local v12       #key:Ljava/lang/String;
    .restart local v13       #result:Landroid/database/Cursor;
    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 225
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mBasePath:Ljava/io/File;

    goto :goto_2

    .line 219
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Configuration URIs do not support update"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public usingExternalStorage()Z
    .locals 3

    .prologue
    .line 278
    iget-object v2, p0, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getInternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 279
    .local v1, internalStorageDir:Ljava/io/File;
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getBaseDir()Ljava/io/File;

    move-result-object v0

    .line 280
    .local v0, currentStorageDir:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
