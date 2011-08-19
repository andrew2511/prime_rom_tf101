.class public Lcom/asus/filemanager/adapter/ThumbnailDB;
.super Ljava/lang/Object;
.source "ThumbnailDB.java"


# instance fields
.field private mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "dbpath"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v1, "[ThumbnailDB]"

    const-string v2, "ThumbnailDB()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    :try_start_0
    invoke-static {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "create table if not exists File2BitmapTable (id integer primary key autoincrement, FilePath text not null Unique, Bitmap stream not null);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/asus/filemanager/adapter/ThumbnailDB;->updateDB()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 30
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[ThumbnailDB]"

    const-string v2, "DB create table Error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GetDB(Landroid/content/Context;)Lcom/asus/filemanager/adapter/ThumbnailDB;
    .locals 4
    .parameter "context"

    .prologue
    .line 48
    new-instance v0, Lcom/asus/filemanager/adapter/ThumbnailDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/thumbnail.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/asus/filemanager/adapter/ThumbnailDB;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private updateDB()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 37
    .local v0, version:I
    if-nez v0, :cond_0

    .line 38
    const-string v1, "[ThumbnailDB]"

    const-string v2, "old version : 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "File2BitmapTable"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 41
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 44
    :cond_0
    const-string v1, "[ThumbnailDB]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method


# virtual methods
.method public GetDBSize()J
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 125
    :goto_0
    return-wide v1

    .line 124
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_0
.end method

.method public closeDB()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 54
    :cond_0
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "[ThumbnailDB]"

    const-string v1, "Delete Thumbnail Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "File2BitmapTable"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "path"

    .prologue
    const/4 v13, 0x1

    .line 79
    const/4 v8, 0x0

    .line 80
    .local v8, b:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    move-object v9, v8

    .line 94
    .end local v8           #b:Landroid/graphics/Bitmap;
    .local v9, b:Landroid/graphics/Bitmap;
    :goto_0
    return-object v9

    .line 83
    .end local v9           #b:Landroid/graphics/Bitmap;
    .restart local v8       #b:Landroid/graphics/Bitmap;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "File2BitmapTable"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "FilePath"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Bitmap"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FilePath=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 84
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v13, :cond_1

    .line 86
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 88
    .local v10, ba:[B
    const/4 v0, 0x0

    array-length v1, v10

    invoke-static {v10, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 90
    .end local v10           #ba:[B
    :cond_1
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11           #c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    move-object v9, v8

    .line 94
    .end local v8           #b:Landroid/graphics/Bitmap;
    .restart local v9       #b:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 91
    .end local v9           #b:Landroid/graphics/Bitmap;
    .restart local v8       #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    move-object v12, v0

    .line 92
    .local v12, e:Ljava/lang/Exception;
    const-string v0, "[ThumbnailDB]"

    const-string v1, "DB getBitmap ERROR!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 10
    .parameter "path"
    .parameter "b"

    .prologue
    const/4 v9, 0x0

    .line 57
    const-wide/16 v3, -0x1

    .line 58
    .local v3, r:J
    iget-object v6, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_0

    move v6, v9

    .line 75
    :goto_0
    return v6

    .line 61
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "FilePath"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 65
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 66
    .local v0, ba:[B
    const-string v6, "Bitmap"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 67
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 70
    iget-object v6, p0, Lcom/asus/filemanager/adapter/ThumbnailDB;->mDBFile2Bitmap:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "File2BitmapTable"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 75
    .end local v0           #ba:[B
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 72
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const-string v6, "[ThumbnailDB]"

    const-string v7, "DB Insert ERROR!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    move v6, v9

    .line 75
    goto :goto_0
.end method
