.class public Lcom/asus/reader/plugin/PressReader;
.super Ljava/lang/Object;
.source "PressReader.java"


# static fields
.field public static final ID_DOC_COLUMNS:[Ljava/lang/String;

.field public static final MEDIA_PROJECTION:[Ljava/lang/String;

.field public static final contentURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    const-string v0, "content://com.newspaperdirect.pressreader.android.mylibraryprovider/issues"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/plugin/PressReader;->contentURI:Landroid/net/Uri;

    .line 37
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ID"

    aput-object v1, v0, v3

    const-string v1, "TITLE"

    aput-object v1, v0, v4

    const-string v1, "PAGES_COUNT"

    aput-object v1, v0, v5

    const-string v1, "ENABLE_SMART"

    aput-object v1, v0, v6

    const-string v1, "PARENT_NAME"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "COUNTRY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LANGUAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CURRENT_PAGE_NUMBER"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "THUMBNAIL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ISSUE_DATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/reader/plugin/PressReader;->MEDIA_PROJECTION:[Ljava/lang/String;

    .line 50
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id_doc"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date_create"

    aput-object v1, v0, v5

    const-string v1, "cover_path"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/reader/plugin/PressReader;->ID_DOC_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareIssue(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 11
    .parameter "cursor_book"
    .parameter "cursor_press"
    .parameter "context"

    .prologue
    .line 266
    const/4 v8, 0x2

    :try_start_0
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, dbCreatedDate:Ljava/lang/String;
    const-string v8, "ISSUE_DATE"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, date_string:Ljava/lang/String;
    const-string v8, "title"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, title:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 271
    :cond_0
    const/4 v8, 0x3

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, coverPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, coverFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 275
    :cond_1
    invoke-static {p1, p2}, Lcom/asus/reader/plugin/PressReader;->generateContentValues(Landroid/database/Cursor;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v6

    .line 276
    .local v6, values:Landroid/content/ContentValues;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, where:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 278
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v6, v7, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v0           #coverFile:Ljava/io/File;
    .end local v1           #coverPath:Ljava/lang/String;
    .end local v2           #date_string:Ljava/lang/String;
    .end local v3           #dbCreatedDate:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #where:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 281
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteOneBook(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "path"
    .parameter "context"

    .prologue
    .line 237
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 239
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static generateContentValues(Landroid/database/Cursor;Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 9
    .parameter "cursor_press"
    .parameter "context"

    .prologue
    .line 287
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .local v5, values:Landroid/content/ContentValues;
    const-string v0, "_ID"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, id:Ljava/lang/String;
    const-string v0, "TITLE"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, title:Ljava/lang/String;
    const-string v0, "ISSUE_DATE"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, date_string:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 292
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 293
    .local v6, year:I
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 294
    .local v1, month:I
    const/4 v0, 0x6

    const/16 v7, 0x8

    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 295
    .local v0, day:I
    new-instance v7, Ljava/util/GregorianCalendar;

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    invoke-direct {v7, v6, v1, v0}, Ljava/util/GregorianCalendar;-><init>(III)V

    .end local v1           #month:I
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 296
    .local v0, date_long:J
    const-string v6, "EEE, dd MMM yyyy"

    .end local v6           #year:I
    invoke-static {v6, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 297
    .local v0, date:Ljava/lang/CharSequence;
    const-string v1, "creator"

    check-cast v0, Ljava/lang/String;

    .end local v0           #date:Ljava/lang/CharSequence;
    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_0
    const-string v0, "THUMBNAIL"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 301
    .local v0, cover_uri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.asus.reader/cover/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".png"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/asus/reader/plugin/PressReader;->generateCoverPath(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 303
    .local p1, cover_path:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 304
    const-string v0, "cover_path"

    .end local v0           #cover_uri:Landroid/net/Uri;
    invoke-virtual {v5, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .end local p1           #cover_path:Ljava/lang/String;
    :goto_0
    const-string p1, "category_id"

    const/16 v0, 0x257

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    const-string p1, "_id_doc"

    invoke-virtual {v5, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string p1, "_data"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/asus/reader/plugin/PressReader;->contentURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string p1, "_display_name"

    invoke-virtual {v5, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string p1, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 313
    const-string p1, "mime_type"

    const-string v0, "application/pressreader"

    invoke-virtual {v5, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string p1, "title"

    invoke-virtual {v5, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string p1, "doc_lang"

    const-string v0, "LANGUAGE"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v5, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string p0, "book_source"

    const-string p1, "PressReader"

    invoke-virtual {v5, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string p0, "volume_id"

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    const-string p0, "date_create"

    invoke-virtual {v5, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v5

    .line 322
    .end local v2           #date_string:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_1
    return-object p0

    .line 306
    .restart local v0       #cover_uri:Landroid/net/Uri;
    .restart local v2       #date_string:Ljava/lang/String;
    .restart local v3       #id:Ljava/lang/String;
    .restart local v4       #title:Ljava/lang/String;
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local p0
    .restart local p1       #cover_path:Ljava/lang/String;
    :cond_1
    const-string p1, "cover_path"

    .end local p1           #cover_path:Ljava/lang/String;
    const-string v0, "THUMBNAIL"

    .end local v0           #cover_uri:Landroid/net/Uri;
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 320
    .end local v2           #date_string:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local p0
    :catch_0
    move-exception p0

    .line 321
    .local p0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private static generateCoverPath(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "cover_uri"
    .parameter "context"
    .parameter "cover_path"

    .prologue
    const/4 v8, 0x0

    .line 245
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, scheme:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v6, "content"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v8

    .line 260
    .end local v5           #scheme:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 249
    .restart local v5       #scheme:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 250
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    .local v0, cover:Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 253
    .local v4, outStream:Ljava/io/OutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 254
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 255
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 256
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, p2

    .line 257
    goto :goto_0

    .line 258
    .end local v0           #cover:Landroid/graphics/Bitmap;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #outStream:Ljava/io/OutputStream;
    .end local v5           #scheme:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 259
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v8

    .line 260
    goto :goto_0
.end method

.method private static insertValue(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 5
    .parameter "cursor_press"
    .parameter "context"

    .prologue
    .line 149
    :try_start_0
    const-string v3, "STATE"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 150
    .local v1, state:I
    const/4 v3, 0x1

    and-int/lit8 v4, v1, 0x1

    if-eq v3, v4, :cond_1

    .line 158
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 152
    .restart local v1       #state:I
    :cond_1
    invoke-static {p0, p1}, Lcom/asus/reader/plugin/PressReader;->generateContentValues(Landroid/database/Cursor;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v2

    .line 153
    .local v2, values:Landroid/content/ContentValues;
    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://reader/book"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v1           #state:I
    .end local v2           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 156
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static isRunning(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 217
    :try_start_0
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 219
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 220
    .local v5, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v4, 0x0

    .line 221
    .local v4, isRunning:Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 222
    .local v3, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 223
    .local v6, runningPackage:Ljava/lang/String;
    const-string v7, "com.newspaperdirect.pressreader.android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 224
    const/4 v4, 0x1

    .end local v3           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6           #runningPackage:Ljava/lang/String;
    :cond_1
    move v7, v4

    .line 231
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #isRunning:Z
    .end local v5           #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_0
    return v7

    .line 229
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 230
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static kickPressReader(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 184
    new-instance v2, Landroid/content/Intent;

    const-string v3, ".NEWSPAPER_VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 187
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 188
    const v3, 0x10000004

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static openBook(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "path"

    .prologue
    .line 162
    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 164
    .local v5, index:I
    if-lez v5, :cond_0

    .line 165
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 166
    .local v3, id:J
    new-instance v2, Landroid/content/Intent;

    const-string v6, ".NEWSPAPER_VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "id"

    invoke-virtual {v0, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 169
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 172
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #id:J
    :cond_0
    :goto_0
    return-void

    .line 173
    .restart local v0       #b:Landroid/os/Bundle;
    .restart local v2       #i:Landroid/content/Intent;
    .restart local v3       #id:J
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static syncDocList(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 63
    const/4 v13, 0x0

    .line 64
    .local v13, needRecount:Z
    const/4 v11, 0x0

    .line 65
    .local v11, mBook:Z
    const/4 v12, 0x0

    .line 67
    .local v12, mPressReader:Z
    :try_start_0
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    iget v0, v0, Lcom/asus/reader/book/ReaderDatabase;->hasPressReader:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 68
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/asus/reader/book/ReaderDatabase;->hasPressReader:I

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v14

    .line 70
    .local v14, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 71
    .local v10, info:Landroid/content/pm/PackageInfo;
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.newspaperdirect.pressreader.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/asus/reader/book/ReaderDatabase;->hasPressReader:I

    .line 77
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #info:Landroid/content/pm/PackageInfo;
    .end local v14           #packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    iget v0, v0, Lcom/asus/reader/book/ReaderDatabase;->hasPressReader:I

    if-eq v0, v2, :cond_3

    .line 145
    :cond_2
    :goto_0
    return-void

    .line 80
    :cond_3
    invoke-static {p0}, Lcom/asus/reader/plugin/PressReader;->isRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 81
    invoke-static {p0}, Lcom/asus/reader/plugin/PressReader;->kickPressReader(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 142
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v8           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/plugin/PressReader;->contentURI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/plugin/PressReader;->MEDIA_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 86
    .local v7, cursor_press:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/plugin/PressReader;->ID_DOC_COLUMNS:[Ljava/lang/String;

    const-string v3, "book_source = \'PressReader\'"

    const/4 v4, 0x0

    const-string v5, "_id_doc ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    .local v6, cursor_book:Landroid/database/Cursor;
    if-nez v6, :cond_5

    .line 90
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 93
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    const/4 v11, 0x1

    .line 95
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    const/4 v12, 0x1

    .line 98
    :cond_7
    :goto_1
    if-nez v11, :cond_8

    if-eqz v12, :cond_9

    .line 99
    :cond_8
    if-eqz v12, :cond_a

    if-nez v11, :cond_a

    .line 100
    const/4 v13, 0x1

    .line 101
    invoke-static {v7, p0}, Lcom/asus/reader/plugin/PressReader;->insertValue(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 102
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 136
    :cond_9
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 138
    if-eqz v13, :cond_2

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->ReCount_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_a
    if-nez v12, :cond_b

    if-eqz v11, :cond_b

    .line 109
    const/4 v13, 0x1

    .line 110
    invoke-static {v6, p0}, Lcom/asus/reader/book/ReaderDatabase;->deleteOneBook(Landroid/database/Cursor;Landroid/content/Context;)I

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 117
    :cond_b
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 118
    const/4 v13, 0x1

    .line 119
    invoke-static {v6, p0}, Lcom/asus/reader/book/ReaderDatabase;->deleteOneBook(Landroid/database/Cursor;Landroid/content/Context;)I

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 121
    const/4 v11, 0x0

    goto :goto_1

    .line 122
    :cond_c
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-le v0, v1, :cond_d

    .line 123
    const/4 v13, 0x1

    .line 124
    invoke-static {v7, p0}, Lcom/asus/reader/plugin/PressReader;->insertValue(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 125
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 126
    const/4 v12, 0x0

    goto :goto_1

    .line 128
    :cond_d
    invoke-static {v6, v7, p0}, Lcom/asus/reader/plugin/PressReader;->compareIssue(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/content/Context;)V

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 130
    const/4 v11, 0x0

    .line 131
    :cond_e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_7

    .line 132
    const/4 v12, 0x0

    goto :goto_1
.end method
