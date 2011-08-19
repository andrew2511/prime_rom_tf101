.class Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PhotoDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$1;,
        Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$Entry;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "imageUri"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photoBlob"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 47
    return-void
.end method

.method private static loadBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 113
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 114
    .local v0, data:[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public deleteEntry(I)V
    .locals 7
    .parameter "appWidgetId"

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 146
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "photos"

    const-string v3, "appWidgetId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 149
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "PhotoDatabaseHelper"

    const-string v3, "Could not delete photo from database"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getEntry(I)Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$Entry;
    .locals 11
    .parameter "appWidgetId"

    .prologue
    const/4 v10, 0x0

    .line 119
    const/4 v8, 0x0

    .line 121
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 122
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "photos"

    sget-object v2, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;->PROJECTION:[Ljava/lang/String;

    const-string v3, "appWidgetId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 125
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    const-string v1, "PhotoDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: empty cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    invoke-static {v8}, Lcom/android/gallery3d/util/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v1, v10

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v1

    .line 129
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$Entry;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v8, v3}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;->loadBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$Entry;-><init>(ILandroid/net/Uri;Landroid/graphics/Bitmap;Lcom/android/gallery3d/gadget/PhotoDatabaseHelper$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    invoke-static {v8}, Lcom/android/gallery3d/util/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 132
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 133
    .local v9, e:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "Could not load photo from database"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    invoke-static {v8}, Lcom/android/gallery3d/util/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v1, v10

    goto :goto_0

    .end local v9           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/android/gallery3d/util/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 51
    const-string v0, "CREATE TABLE photos (appWidgetId INTEGER PRIMARY KEY,imageUri TEXT, photoBlob BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 59
    move v0, p2

    .line 61
    .local v0, version:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 62
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "Destroying all old data."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v1, "DROP TABLE IF EXISTS photos"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setPhoto(ILandroid/net/Uri;Landroid/graphics/Bitmap;)Z
    .locals 7
    .parameter "appWidgetId"
    .parameter "imageUri"
    .parameter "bitmap"

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    mul-int/lit8 v3, v5, 0x4

    .line 77
    .local v3, size:I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 78
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p3, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 79
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 81
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "appWidgetId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string v5, "imageUri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v5, "photoBlob"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 86
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/PhotoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "photos"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v5, 0x1

    .line 91
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #size:I
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_0
    return v5

    .line 89
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 90
    .local v1, e:Ljava/lang/Throwable;
    const-string v5, "PhotoDatabaseHelper"

    const-string v6, "set widget photo fail"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    const/4 v5, 0x0

    goto :goto_0
.end method
