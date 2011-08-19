.class public Lcom/android/providers/drm/DrmProvider;
.super Landroid/content/ContentProvider;
.source "DrmProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/drm/DrmProvider$1;,
        Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;,
        Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;
    }
.end annotation


# static fields
.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field static final sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 278
    new-instance v0, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;-><init>(Lcom/android/providers/drm/DrmProvider$1;)V

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    .line 405
    const-string v0, "DrmProvider"

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    .line 412
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 415
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 424
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "audio"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 425
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "audio/#"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 426
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "images"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 427
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v2, "images/#"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 428
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/providers/drm/DrmProvider;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/providers/drm/DrmProvider;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 112
    const-string v0, "CREATE TABLE audio (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,title TEXT,mime_type TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    const-string v0, "CREATE TABLE images (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,title TEXT,mime_type TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private deleteFiles(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    const/4 v1, 0x0

    .line 321
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/drm/DrmProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 324
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, prefix:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 328
    .local v7, path:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 329
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempted to delete a non-DRM file"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 331
    .restart local v7       #path:Ljava/lang/String;
    .restart local v8       #prefix:Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 335
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_4
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 134
    const-string v0, "DROP TABLE IF EXISTS audio"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 6
    .parameter "initialValues"

    .prologue
    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 213
    .local v2, parent:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 214
    const-string v4, "DRM-"

    const-string v5, ".data"

    invoke-static {v4, v5, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 215
    .local v1, file:Ljava/io/File;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 216
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 220
    .end local v1           #file:Ljava/io/File;
    .end local v2           #parent:Ljava/io/File;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return-object v4

    .line 218
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 219
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v5, "Failed to create data file in ensureFile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;)V
    .locals 4
    .parameter "uri"
    .parameter "match"
    .parameter "userWhere"
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, where:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 304
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :pswitch_0
    const-string v1, "audio"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 309
    .end local p0
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 318
    :goto_1
    return-void

    .line 290
    .restart local p0
    :pswitch_1
    const-string v1, "audio"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    goto :goto_0

    .line 295
    .restart local p0
    :pswitch_2
    const-string v1, "images"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 299
    :pswitch_3
    const-string v1, "images"

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    goto :goto_0

    .line 313
    :cond_0
    iput-object p3, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto :goto_1

    .line 316
    :cond_1
    iput-object v0, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto :goto_1

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_DRM"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires DRM permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 349
    :cond_0
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 350
    .local v2, match:I
    iget-object v3, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 352
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    monitor-enter v3

    .line 353
    :try_start_0
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v2, p2, v4}, Lcom/android/providers/drm/DrmProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;)V

    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/drm/DrmProvider;->deleteFiles(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 357
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v4, v4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v5, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 361
    .local v0, count:I
    monitor-exit v3

    .line 363
    return v0

    .line 361
    .end local v0           #count:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "url"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 188
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 200
    :cond_0
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :pswitch_1
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/drm/DrmProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 192
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 193
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 194
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, mimeType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    .line 196
    return-object v7

    .line 188
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.INSTALL_DRM"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 229
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires INSTALL_DRM permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 233
    :cond_0
    sget-object v6, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 234
    .local v1, match:I
    const/4 v2, 0x0

    .line 235
    .local v2, newUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 237
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_1

    .line 238
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .restart local p2
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 263
    :pswitch_0
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 243
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/providers/drm/DrmProvider;->ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    .line 244
    .local v5, values:Landroid/content/ContentValues;
    if-nez v5, :cond_2

    move-object v6, v8

    .line 270
    :goto_0
    return-object v6

    .line 245
    :cond_2
    const-string v6, "audio"

    const-string v7, "title"

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 246
    .local v3, rowId:J
    cmp-long v6, v3, v9

    if-lez v6, :cond_3

    .line 247
    sget-object v6, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 266
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 267
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_4
    move-object v6, v2

    .line 270
    goto :goto_0

    .line 253
    .end local v3           #rowId:J
    .end local v5           #values:Landroid/content/ContentValues;
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/providers/drm/DrmProvider;->ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    .line 254
    .restart local v5       #values:Landroid/content/ContentValues;
    if-nez v5, :cond_5

    move-object v6, v8

    goto :goto_0

    .line 255
    :cond_5
    const-string v6, "images"

    const-string v7, "title"

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 256
    .restart local v3       #rowId:J
    cmp-long v6, v3, v9

    if-lez v6, :cond_3

    .line 257
    sget-object v6, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;-><init>(Lcom/android/providers/drm/DrmProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 395
    const-string v1, "w"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.INSTALL_DRM"

    move-object v0, v1

    .line 398
    .local v0, requiredPermission:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    .end local v0           #requiredPermission:Ljava/lang/String;
    :cond_0
    const-string v1, "android.permission.ACCESS_DRM"

    move-object v0, v1

    goto :goto_0

    .line 402
    .restart local v0       #requiredPermission:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/drm/DrmProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v4, 0x1

    .line 141
    const/4 v5, 0x0

    .line 143
    .local v5, groupBy:Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 145
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 165
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :pswitch_0
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 168
    :goto_0
    if-eqz p2, :cond_1

    .line 169
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v2, p2

    if-ge v9, v2, :cond_1

    .line 170
    aget-object v2, p2, v9

    const-string v3, "_display_name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const-string v2, "title AS _display_name"

    aput-object v2, p2, v9

    .line 169
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 151
    .end local v9           #i:I
    :pswitch_1
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    :pswitch_2
    const-string v2, "images"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_3
    const-string v2, "images"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 177
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 179
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 182
    :cond_2
    return-object v8

    .line 145
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_DRM"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires ACCESS_DRM permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 375
    :cond_0
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 376
    .local v2, match:I
    iget-object v3, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 378
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    monitor-enter v3

    .line 379
    :try_start_0
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v2, p3, v4}, Lcom/android/providers/drm/DrmProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;)V

    .line 383
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v4, v4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v5, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v1, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 387
    .local v0, count:I
    monitor-exit v3

    .line 389
    return v0

    .line 387
    .end local v0           #count:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
