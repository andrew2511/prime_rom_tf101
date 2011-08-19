.class final Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BrowserProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/BrowserProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/provider/BrowserProvider2;


# direct methods
.method public constructor <init>(Lcom/android/browser/provider/BrowserProvider2;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    .line 333
    const-string v0, "browser2.db"

    const/4 v1, 0x0

    const/16 v2, 0x1a

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 334
    return-void
.end method

.method private addDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 19
    .parameter "db"
    .parameter "parentId"

    .prologue
    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 438
    .local v13, res:Landroid/content/res/Resources;
    const v17, 0x7f080065

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 440
    .local v5, bookmarks:[Ljava/lang/CharSequence;
    array-length v14, v5

    .line 441
    .local v14, size:I
    const v17, 0x7f08005b

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 443
    .local v12, preloads:Landroid/content/res/TypedArray;
    :try_start_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 444
    .local v11, parent:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 445
    .local v10, now:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v14, :cond_4

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v17

    add-int/lit8 v18, v8, 0x1

    aget-object v18, v5, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 448
    .local v4, bookmarkDestination:Ljava/lang/CharSequence;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "INSERT INTO bookmarks (title, url, folder,parent,position,created) VALUES (\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v5, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\', "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\', "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "0,"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ");"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 464
    const/16 v17, 0x0

    move-object v0, v12

    move v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 465
    .local v7, faviconId:I
    add-int/lit8 v17, v8, 0x1

    const/16 v18, 0x0

    move-object v0, v12

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v16

    .line 466
    .local v16, thumbId:I
    const/4 v15, 0x0

    .local v15, thumb:[B
    const/4 v6, 0x0

    .line 468
    .local v6, favicon:[B
    :try_start_1
    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->readRaw(Landroid/content/res/Resources;I)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v15

    .line 472
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->readRaw(Landroid/content/res/Resources;I)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 475
    :goto_2
    if-nez v15, :cond_0

    if-eqz v6, :cond_3

    .line 476
    :cond_0
    :try_start_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 477
    .local v9, imageValues:Landroid/content/ContentValues;
    const-string v17, "url_key"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v9

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    if-eqz v6, :cond_1

    .line 479
    const-string v17, "favicon"

    move-object v0, v9

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 481
    :cond_1
    if-eqz v15, :cond_2

    .line 482
    const-string v17, "thumbnail"

    move-object v0, v9

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 484
    :cond_2
    const-string v17, "images"

    const-string v18, "favicon"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 445
    .end local v9           #imageValues:Landroid/content/ContentValues;
    :cond_3
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_0

    .line 469
    :catch_0
    move-exception v17

    goto :goto_1

    .line 473
    :catch_1
    move-exception v17

    goto :goto_2

    .line 487
    .end local v4           #bookmarkDestination:Ljava/lang/CharSequence;
    .end local v6           #favicon:[B
    .end local v7           #faviconId:I
    .end local v8           #i:I
    .end local v10           #now:Ljava/lang/String;
    .end local v11           #parent:Ljava/lang/String;
    .end local v15           #thumb:[B
    .end local v16           #thumbId:I
    :catch_2
    move-exception v17

    .line 489
    :cond_4
    return-void
.end method

.method private createDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const-wide/16 v4, 0x1

    const/4 v3, 0x1

    .line 420
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 424
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 425
    const-string v1, "sync3"

    const-string v2, "google_chrome_bookmarks"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "title"

    const-string v2, "Bookmarks"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v1, "parent"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 428
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    const-string v1, "folder"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 430
    const-string v1, "dirty"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 431
    const-string v1, "bookmarks"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 433
    invoke-direct {p0, p1, v4, v5}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->addDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 434
    return-void
.end method

.method private getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "cr"

    .prologue
    .line 513
    const-string v7, "android-google"

    .line 514
    .local v7, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 516
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 518
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 524
    :cond_0
    if-eqz v6, :cond_1

    .line 525
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_1
    :goto_0
    return-object v7

    .line 521
    :catch_0
    move-exception v0

    .line 524
    if-eqz v6, :cond_1

    .line 525
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 525
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private readRaw(Landroid/content/res/Resources;I)[B
    .locals 5
    .parameter "res"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    if-nez p2, :cond_0

    .line 493
    const/4 v4, 0x0

    .line 506
    :goto_0
    return-object v4

    .line 495
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 497
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 498
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x1000

    new-array v1, v4, [B

    .line 500
    .local v1, buf:[B
    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, read:I
    if-lez v3, :cond_1

    .line 501
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 506
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buf:[B
    .end local v3           #read:I
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v4

    .line 503
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buf:[B
    .restart local v3       #read:I
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 504
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 506
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method private replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "srcString"

    .prologue
    .line 532
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 533
    .local v7, sb:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 535
    .local v5, lastCharLoc:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, client_id:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 538
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 539
    .local v0, c:C
    const/16 v8, 0x7b

    if-ne v0, v8, :cond_0

    .line 540
    invoke-interface {p2, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 541
    move v5, v2

    .line 543
    move v3, v2

    .local v3, j:I
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 544
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 545
    .local v4, k:C
    const/16 v8, 0x7d

    if-ne v4, v8, :cond_2

    .line 546
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p2, v8, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 547
    .local v6, propertyKeyValue:Ljava/lang/String;
    const-string v8, "CLIENT_ID"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 548
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    :goto_2
    add-int/lit8 v5, v3, 0x1

    .line 553
    move v2, v3

    .line 537
    .end local v3           #j:I
    .end local v4           #k:C
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    .restart local v3       #j:I
    .restart local v4       #k:C
    .restart local v6       #propertyKeyValue:Ljava/lang/String;
    :cond_1
    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 543
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 559
    .end local v0           #c:C
    .end local v3           #j:I
    .end local v4           #k:C
    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v5

    if-lez v8, :cond_4

    .line 561
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {p2, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 563
    :cond_4
    return-object v7
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 338
    const-string v0, "CREATE TABLE bookmarks(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT,folder INTEGER NOT NULL DEFAULT 0,parent INTEGER,position INTEGER NOT NULL,insert_after INTEGER,deleted INTEGER NOT NULL DEFAULT 0,account_name TEXT,account_type TEXT,sourceid TEXT,version INTEGER NOT NULL DEFAULT 1,created INTEGER,modified INTEGER,dirty INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 363
    const-string v0, "CREATE TABLE history(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,created INTEGER,date INTEGER,visits INTEGER NOT NULL DEFAULT 0,user_entered INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    const-string v0, "CREATE TABLE images (url_key TEXT UNIQUE NOT NULL,favicon BLOB,thumbnail BLOB,touch_icon BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 379
    const-string v0, "CREATE INDEX imagesUrlIndex ON images(url_key)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 382
    const-string v0, "CREATE TABLE searches (_id INTEGER PRIMARY KEY AUTOINCREMENT,search TEXT,date LONG);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 388
    const-string v0, "CREATE TABLE settings (key TEXT PRIMARY KEY,value TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 395
    invoke-direct {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 396
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 415
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 416
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 417
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 401
    const-string v0, "DROP VIEW IF EXISTS combined"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 402
    const/16 v0, 0x19

    if-ge p2, v0, :cond_0

    .line 403
    const-string v0, "DROP TABLE IF EXISTS bookmarks"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 404
    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 405
    const-string v0, "DROP TABLE IF EXISTS searches"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 406
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 407
    const-string v0, "DROP TABLE IF EXISTS settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/accounts/Account;

    invoke-virtual {v0, p1, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 411
    :cond_0
    return-void
.end method
