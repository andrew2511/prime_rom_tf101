.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 431
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 433
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .registers 13
    .parameter "cr"
    .parameter "origId"
    .parameter "baseUri"
    .parameter "groupId"

    .prologue
    .line 470
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 473
    .local v1, cancelUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 475
    .local v6, c:Landroid/database/Cursor;
    :try_start_25
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_35

    move-result-object v6

    .line 478
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 480
    :cond_34
    return-void

    .line 478
    :catchall_35
    move-exception v0

    if-eqz v6, :cond_3b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3b
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "c"
    .parameter "baseUri"
    .parameter "cr"
    .parameter "options"

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 440
    .local v6, thumbUri:Landroid/net/Uri;
    const/4 v7, 0x0

    :try_start_3
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 441
    .local v4, thumbId:J
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, filePath:Ljava/lang/String;
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 443
    const-string/jumbo v7, "r"

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 444
    .local v3, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 446
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_23} :catch_24
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_23} :catch_49
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_23} :catch_6e

    .line 455
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local v4           #thumbId:J
    :goto_23
    return-object v0

    .line 447
    :catch_24
    move-exception v7

    move-object v1, v7

    .line 448
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 449
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_49
    move-exception v7

    move-object v1, v7

    .line 450
    .local v1, ex:Ljava/io/IOException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 451
    .end local v1           #ex:Ljava/io/IOException;
    :catch_6e
    move-exception v7

    move-object v1, v7

    .line 452
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to allocate memory for thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .registers 24
    .parameter "cr"
    .parameter "origId"
    .parameter "groupId"
    .parameter "kind"
    .parameter "options"
    .parameter "baseUri"
    .parameter "isVideo"

    .prologue
    .line 498
    const/4 v10, 0x0

    .line 499
    .local v10, bitmap:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 503
    .local v12, filePath:Ljava/lang/String;
    new-instance v13, Landroid/media/MiniThumbFile;

    if-eqz p8, :cond_64

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_8
    invoke-direct {v13, v4}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 505
    .local v13, thumbFile:Landroid/media/MiniThumbFile;
    const/4 v11, 0x0

    .line 507
    .local v11, c:Landroid/database/Cursor;
    :try_start_c
    move-object v0, v13

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v4

    .line 508
    .local v4, magic:J
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_e6

    .line 509
    .end local v4           #magic:J
    const/4 v4, 0x3

    move/from16 v0, p5

    move v1, v4

    if-ne v0, v1, :cond_90

    .line 510
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .end local p3
    monitor-enter p3
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_283
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_22} :catch_2dc

    .line 511
    :try_start_22
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local p0
    if-nez p0, :cond_2c

    .line 512
    const/16 p0, 0x2710

    new-array p0, p0, [B

    sput-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 514
    :cond_2c
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object v0, v13

    move-wide/from16 v1, p1

    move-object v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object p0

    if-eqz p0, :cond_336

    .line 515
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/16 p1, 0x0

    sget-object p2, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local p1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p2, v0

    invoke-static/range {p0 .. p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_46
    .catchall {:try_start_22 .. :try_end_46} :catchall_67

    move-result-object p0

    .line 516
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    if-nez p0, :cond_50

    .line 517
    :try_start_49
    const-string p1, "MediaStore"

    const-string p2, "couldn\'t decode byte array."

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_50
    :goto_50
    monitor-exit p3
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_31a

    .line 587
    if-eqz v11, :cond_56

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_56
    invoke-virtual {v13}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 590
    const/16 p1, 0x0

    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .local p1, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 p3, p1

    .end local p1           #thumbFile:Landroid/media/MiniThumbFile;
    .local p3, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    move-object/from16 p4, p0

    move-object/from16 p1, v11

    .line 592
    .end local v11           #c:Landroid/database/Cursor;
    .end local p6
    .local p1, c:Landroid/database/Cursor;
    :goto_63
    return-object p4

    .line 503
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    .restart local p6
    :cond_64
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_8

    .line 520
    .end local p0           #cr:Landroid/content/ContentResolver;
    .end local p1           #origId:J
    .end local p3           #groupId:J
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    :catchall_67
    move-exception p0

    move-object/from16 p1, p0

    move-object p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_6b
    :try_start_6b
    monitor-exit p3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_31a

    :try_start_6c
    throw p1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_295
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6c .. :try_end_6d} :catch_6d

    .line 584
    :catch_6d
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p1, v11

    .line 585
    .end local v11           #c:Landroid/database/Cursor;
    .end local p6
    .local p1, c:Landroid/database/Cursor;
    .local p2, ex:Landroid/database/sqlite/SQLiteException;
    :goto_74
    :try_start_74
    const-string p4, "MediaStore"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_2d4

    .line 587
    if-eqz p1, :cond_82

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_82
    invoke-virtual {v13}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 590
    const/16 p2, 0x0

    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .local p2, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 v14, p2

    .end local p2           #thumbFile:Landroid/media/MiniThumbFile;
    .local v14, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 p2, p3

    .end local p3           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    move-object/from16 p3, v14

    .end local v14           #thumbFile:Landroid/media/MiniThumbFile;
    .local p3, thumbFile:Landroid/media/MiniThumbFile;
    :goto_8d
    move-object/from16 p4, p0

    .line 592
    goto :goto_63

    .line 522
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    .restart local p6
    :cond_90
    const/4 v4, 0x1

    move/from16 v0, p5

    move v1, v4

    if-ne v0, v1, :cond_e6

    .line 523
    if-eqz p8, :cond_e1

    :try_start_98
    const-string/jumbo v4, "video_id="

    .line 524
    .local v4, column:Ljava/lang/String;
    :goto_9b
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .end local v4           #column:Ljava/lang/String;
    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object/from16 v5, p7

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b9
    .catchall {:try_start_98 .. :try_end_b9} :catchall_283
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_98 .. :try_end_b9} :catch_2dc

    move-result-object v5

    .line 525
    .end local v11           #c:Landroid/database/Cursor;
    .local v5, c:Landroid/database/Cursor;
    if-eqz v5, :cond_333

    :try_start_bc
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_333

    .line 526
    move-object v0, v5

    move-object/from16 v1, p7

    move-object v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_cb
    .catchall {:try_start_bc .. :try_end_cb} :catchall_29d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bc .. :try_end_cb} :catch_2e6

    move-result-object v4

    .line 527
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local v4, bitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_e4

    .line 587
    if-eqz v5, :cond_d3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_d3
    invoke-virtual {v13}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 590
    const/4 p0, 0x0

    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .local p0, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 p1, v5

    .end local v5           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p3, p0

    .end local p0           #thumbFile:Landroid/media/MiniThumbFile;
    .local p3, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p4, v4

    move-object p0, v4

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_63

    .line 523
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    :cond_e1
    :try_start_e1
    const-string v4, "image_id="

    goto :goto_9b

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #c:Landroid/database/Cursor;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #c:Landroid/database/Cursor;
    :cond_e4
    move-object v11, v5

    .end local v5           #c:Landroid/database/Cursor;
    .restart local v11       #c:Landroid/database/Cursor;
    move-object v10, v4

    .line 534
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    :cond_e6
    :goto_e6
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "blocking"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .end local p3           #groupId:J
    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 537
    .local v5, blockingUri:Landroid/net/Uri;
    if-eqz v11, :cond_113

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 538
    :cond_113
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11c
    .catchall {:try_start_e1 .. :try_end_11c} :catchall_283
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e1 .. :try_end_11c} :catch_2dc

    move-result-object p4

    .line 540
    .end local v11           #c:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    if-nez p4, :cond_137

    const/16 p1, 0x0

    .line 587
    .end local p1           #origId:J
    if-eqz p4, :cond_126

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_126
    invoke-virtual {v13}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 590
    const/4 p0, 0x0

    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .local p0, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 p3, p0

    .end local p0           #thumbFile:Landroid/media/MiniThumbFile;
    .local p3, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v14, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local v14, c:Landroid/database/Cursor;
    move-object/from16 p4, p1

    move-object/from16 p1, v14

    .end local v14           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    goto/16 :goto_63

    .line 543
    .end local p2           #filePath:Ljava/lang/String;
    .end local p3           #thumbFile:Landroid/media/MiniThumbFile;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    :cond_137
    const/16 p3, 0x3

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_218

    .line 544
    :try_start_13f
    sget-object p6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .end local p6
    monitor-enter p6
    :try_end_142
    .catchall {:try_start_13f .. :try_end_142} :catchall_2a6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13f .. :try_end_142} :catch_250

    .line 545
    :try_start_142
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez p3, :cond_150

    .line 546
    const/16 p3, 0x2710

    move/from16 v0, p3

    new-array v0, v0, [B

    move-object/from16 p3, v0

    sput-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 548
    :cond_150
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object v0, v13

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object p3

    if-eqz p3, :cond_32f

    .line 549
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local v5           #blockingUri:Landroid/net/Uri;
    array-length v5, v5

    move-object/from16 v0, p3

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_16a
    .catchall {:try_start_142 .. :try_end_16a} :catchall_209

    move-result-object p3

    .line 550
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    if-nez p3, :cond_174

    .line 551
    :try_start_16d
    const-string v4, "MediaStore"

    const-string v5, "couldn\'t decode byte array."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_174
    :goto_174
    monitor-exit p6
    :try_end_175
    .catchall {:try_start_16d .. :try_end_175} :catchall_310

    .line 564
    :goto_175
    if-nez p3, :cond_323

    .line 565
    :try_start_177
    const-string p6, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create the thumbnail in memory: origId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", kind="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isVideo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p6

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .end local p1           #origId:J
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "thumbnails"

    const-string p6, "media"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 570
    .local v7, uri:Landroid/net/Uri;
    if-nez v12, :cond_31d

    .line 571
    if-eqz p4, :cond_1dd

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    .line 572
    :cond_1dd
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e6
    .catchall {:try_start_177 .. :try_end_1e6} :catchall_2b7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_177 .. :try_end_1e6} :catch_2f0

    move-result-object p0

    .line 573
    .end local p4           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    if-eqz p0, :cond_1ef

    :try_start_1e9
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1ec
    .catchall {:try_start_1e9 .. :try_end_1ec} :catchall_2c2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e9 .. :try_end_1ec} :catch_2fb

    move-result p1

    if-nez p1, :cond_25a

    .line 574
    :cond_1ef
    const/16 p2, 0x0

    .line 587
    if-eqz p0, :cond_1f6

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_1f6
    invoke-virtual {v13}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 590
    const/16 p1, 0x0

    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .local p1, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 p4, p2

    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 v14, p1

    .end local p1           #thumbFile:Landroid/media/MiniThumbFile;
    .local v14, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 p1, p0

    .end local p0           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v14

    .end local v14           #thumbFile:Landroid/media/MiniThumbFile;
    .local p3, thumbFile:Landroid/media/MiniThumbFile;
    goto/16 :goto_63

    .line 554
    .end local v7           #uri:Landroid/net/Uri;
    .end local p2           #filePath:Ljava/lang/String;
    .end local p3           #thumbFile:Landroid/media/MiniThumbFile;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_209
    move-exception p0

    move-object/from16 p1, p0

    move-object p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #origId:J
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_20d
    :try_start_20d
    monitor-exit p6
    :try_end_20e
    .catchall {:try_start_20d .. :try_end_20e} :catchall_317

    :try_start_20e
    throw p1
    :try_end_20f
    .catchall {:try_start_20e .. :try_end_20f} :catchall_2af
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20e .. :try_end_20f} :catch_20f

    .line 584
    :catch_20f
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    goto/16 :goto_74

    .line 555
    .end local p3           #filePath:Ljava/lang/String;
    .restart local v5       #blockingUri:Landroid/net/Uri;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    .restart local p6
    :cond_218
    const/16 p3, 0x1

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_233

    .line 556
    :try_start_220
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_32b

    .line 557
    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move-object v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_175

    .line 560
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    :cond_233
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #cr:Landroid/content/ContentResolver;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #origId:J
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported kind: "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_250
    .catchall {:try_start_220 .. :try_end_250} :catchall_2a6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_220 .. :try_end_250} :catch_250

    .line 584
    .end local p6
    :catch_250
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_74

    .line 576
    .end local v5           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :cond_25a
    const/16 p1, 0x1

    :try_start_25c
    invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_25f
    .catchall {:try_start_25c .. :try_end_25f} :catchall_2c2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25c .. :try_end_25f} :catch_2fb

    move-result-object p1

    .end local v12           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p1

    .end local p1           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p1, p0

    .line 578
    .end local p0           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    :goto_264
    if-eqz p8, :cond_27a

    .line 579
    :try_start_266
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_26d
    .catchall {:try_start_266 .. :try_end_26d} :catchall_2cd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_266 .. :try_end_26d} :catch_306

    move-result-object p0

    .line 587
    .end local v7           #uri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_26e
    if-eqz p1, :cond_273

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_273
    invoke-virtual {v13}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 590
    const/16 p3, 0x0

    .line 591
    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .local p3, thumbFile:Landroid/media/MiniThumbFile;
    goto/16 :goto_8d

    .line 581
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :cond_27a
    :try_start_27a
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_281
    .catchall {:try_start_27a .. :try_end_281} :catchall_2cd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27a .. :try_end_281} :catch_306

    move-result-object p0

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_26e

    .line 587
    .end local v7           #uri:Landroid/net/Uri;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p6
    :catchall_283
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local p6
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_28b
    if-eqz p1, :cond_290

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_290
    invoke-virtual {v13}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 590
    const/4 p0, 0x0

    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .local p0, thumbFile:Landroid/media/MiniThumbFile;
    throw p3

    .line 587
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .restart local p6
    :catchall_295
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p1, v11

    .end local v11           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    goto :goto_28b

    .end local p2           #filePath:Ljava/lang/String;
    .local v5, c:Landroid/database/Cursor;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    :catchall_29d
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v5

    .end local v5           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_28b

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .end local p3           #groupId:J
    .end local p6
    .local v5, blockingUri:Landroid/net/Uri;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_2a6
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_28b

    .end local v5           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_2af
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    goto :goto_28b

    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_2b7
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object v14, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v14

    goto :goto_28b

    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    :catchall_2c2
    move-exception p1

    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object v14, p0

    .end local p0           #c:Landroid/database/Cursor;
    .local v14, c:Landroid/database/Cursor;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, p1

    move-object/from16 p1, v14

    .end local v14           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    goto :goto_28b

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    :catchall_2cd
    move-exception p0

    move-object v14, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v14

    goto :goto_28b

    .end local v7           #uri:Landroid/net/Uri;
    .local p2, ex:Landroid/database/sqlite/SQLiteException;
    .local p3, filePath:Ljava/lang/String;
    :catchall_2d4
    move-exception p2

    move-object/from16 v14, p2

    move-object/from16 p2, p3

    .end local p3           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    move-object/from16 p3, v14

    goto :goto_28b

    .line 584
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p6
    :catch_2dc
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-object p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_74

    .local v5, c:Landroid/database/Cursor;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    :catch_2e6
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, v5

    .end local v5           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_74

    .end local p1           #c:Landroid/database/Cursor;
    .end local p6
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;
    :catch_2f0
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    goto/16 :goto_74

    .end local p1           #c:Landroid/database/Cursor;
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :catch_2fb
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p1, p0

    .end local p0           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v12

    .end local v12           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    goto/16 :goto_74

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p2       #filePath:Ljava/lang/String;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :catch_306
    move-exception p0

    move-object v14, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, p2

    .end local p2           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p2, v14

    goto/16 :goto_74

    .line 554
    .end local v7           #uri:Landroid/net/Uri;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_310
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_20d

    .end local p1           #origId:J
    :catchall_317
    move-exception p1

    goto/16 :goto_20d

    .line 520
    .end local p4           #c:Landroid/database/Cursor;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local p6
    :catchall_31a
    move-exception p1

    goto/16 :goto_6b

    .end local v11           #c:Landroid/database/Cursor;
    .end local p6
    .restart local v7       #uri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;
    :cond_31d
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    goto/16 :goto_264

    .end local v7           #uri:Landroid/net/Uri;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    :cond_323
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_26e

    .end local p2           #filePath:Ljava/lang/String;
    .local v5, blockingUri:Landroid/net/Uri;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    .restart local p6
    :cond_32b
    move-object/from16 p3, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_175

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .end local p6
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    :cond_32f
    move-object/from16 p3, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_174

    .end local p4           #c:Landroid/database/Cursor;
    .local v5, c:Landroid/database/Cursor;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .local p3, groupId:J
    .restart local p6
    :cond_333
    move-object v11, v5

    .end local v5           #c:Landroid/database/Cursor;
    .restart local v11       #c:Landroid/database/Cursor;
    goto/16 :goto_e6

    .end local p0           #cr:Landroid/content/ContentResolver;
    .end local p3           #groupId:J
    :cond_336
    move-object p0, v10

    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_50
.end method
