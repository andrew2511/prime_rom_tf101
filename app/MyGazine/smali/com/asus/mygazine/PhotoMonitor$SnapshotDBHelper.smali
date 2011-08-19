.class public Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PhotoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/PhotoMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotDBHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper$Snapshots;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 113
    const-string v0, "snapshots.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 114
    return-void
.end method

.method public static getSnapshotDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkOrCreateSnapshot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 21
    .parameter "orig_path"
    .parameter "orientation"

    .prologue
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->checkSnapshotDir()Z

    move-result v4

    if-nez v4, :cond_0

    .line 207
    const/4 v4, 0x0

    .line 350
    :goto_0
    return-object v4

    .line 211
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 212
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/asus/mygazine/PhotoMonitor;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "PhotoMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkOrCreateSnapshot-orig_path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_1
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v16, ori_file:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 218
    const-string v4, "PhotoMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orig_path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not existed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v4, 0x0

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->querySnapshotFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 224
    .local v20, snapshot_filename:Ljava/lang/String;
    if-eqz v20, :cond_4

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v18, snapshotFile:Ljava/io/File;
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a

    .line 230
    const/4 v3, 0x0

    .line 233
    .local v3, ori:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 234
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 235
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 239
    iget-object v14, v15, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 241
    .local v14, mimeType:Ljava/lang/String;
    if-eqz v14, :cond_3

    const-string v4, "image/jpeg"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "image/png"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "image/bmp"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 242
    :cond_3
    const-string v4, "PhotoMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outMimeType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not accepted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 224
    .end local v3           #ori:Landroid/graphics/Bitmap;
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v18           #snapshotFile:Ljava/io/File;
    :cond_4
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->getSnapshotDir()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v4

    goto :goto_1

    .line 246
    .restart local v3       #ori:Landroid/graphics/Bitmap;
    .restart local v14       #mimeType:Ljava/lang/String;
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v18       #snapshotFile:Ljava/io/File;
    :cond_5
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 247
    iget v4, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->getSampleSize(II)I

    move-result v4

    iput v4, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 248
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 250
    if-nez v3, :cond_6

    .line 251
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 253
    :cond_6
    if-eqz p2, :cond_7

    .line 255
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 256
    .local v6, width:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 257
    .local v7, height:I
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 258
    .local v8, mtx:Landroid/graphics/Matrix;
    move/from16 v0, p2

    int-to-float v0, v0

    move v4, v0

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 259
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 264
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v8           #mtx:Landroid/graphics/Matrix;
    :cond_7
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->getComputedRatio(II)D

    move-result-wide v4

    move-wide v0, v4

    double-to-float v0, v0

    move/from16 v17, v0

    .line 266
    .local v17, ratio:F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide v4, v0

    sget-wide v6, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper$Snapshots;->upper:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_8

    .line 267
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 270
    :cond_8
    const/high16 v4, 0x3f80

    cmpg-float v4, v17, v4

    if-gez v4, :cond_d

    .line 271
    const/4 v11, 0x0

    .line 273
    .local v11, dst:Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    float-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 274
    new-instance v13, Ljava/io/FileOutputStream;

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 275
    .local v13, fout:Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v11, v4, v5, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 276
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 277
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 283
    if-eqz v11, :cond_9

    .line 284
    :try_start_3
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 288
    .end local v13           #fout:Ljava/io/FileOutputStream;
    :cond_9
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO snapshots (origin_image,snapshot_image) VALUES (\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 338
    .end local v11           #dst:Landroid/graphics/Bitmap;
    .end local v18           #snapshotFile:Ljava/io/File;
    :goto_3
    if-eqz v3, :cond_a

    .line 339
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    .line 350
    .end local v3           #ori:Landroid/graphics/Bitmap;
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v17           #ratio:F
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 279
    .restart local v3       #ori:Landroid/graphics/Bitmap;
    .restart local v11       #dst:Landroid/graphics/Bitmap;
    .restart local v14       #mimeType:Ljava/lang/String;
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v17       #ratio:F
    .restart local v18       #snapshotFile:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 280
    .local v12, e:Ljava/io/IOException;
    :try_start_4
    const-string v4, "PhotoMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkOrCreateSnapshot fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 283
    if-eqz v11, :cond_9

    .line 284
    :try_start_5
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 341
    .end local v11           #dst:Landroid/graphics/Bitmap;
    .end local v12           #e:Ljava/io/IOException;
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v17           #ratio:F
    .end local v18           #snapshotFile:Ljava/io/File;
    :catch_1
    move-exception v4

    move-object v12, v4

    .line 343
    .local v12, e:Ljava/lang/OutOfMemoryError;
    :goto_4
    const-string v4, "PhotoMonitor"

    const-string v5, "Out of memory error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz v3, :cond_b

    .line 345
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 346
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 283
    .end local v12           #e:Ljava/lang/OutOfMemoryError;
    .restart local v11       #dst:Landroid/graphics/Bitmap;
    .restart local v14       #mimeType:Ljava/lang/String;
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v17       #ratio:F
    .restart local v18       #snapshotFile:Ljava/io/File;
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_c

    .line 284
    :try_start_6
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    throw v4

    .line 294
    .end local v11           #dst:Landroid/graphics/Bitmap;
    :cond_d
    iget v4, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    move-result v5

    mul-int/2addr v4, v5

    const v5, 0x75300

    if-ne v4, v5, :cond_10

    .line 296
    const/4 v11, 0x0

    .line 298
    .restart local v11       #dst:Landroid/graphics/Bitmap;
    :try_start_7
    new-instance v19, Ljava/io/File;

    invoke-static {}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->getSnapshotDir()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 299
    .end local v18           #snapshotFile:Ljava/io/File;
    .local v19, snapshotFile:Ljava/io/File;
    :try_start_8
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 300
    new-instance v13, Ljava/io/FileOutputStream;

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 301
    .restart local v13       #fout:Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v11, v4, v5, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 302
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 303
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 309
    if-eqz v11, :cond_12

    .line 310
    :try_start_9
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4

    move-object/from16 v18, v19

    .line 314
    .end local v13           #fout:Ljava/io/FileOutputStream;
    .end local v19           #snapshotFile:Ljava/io/File;
    :cond_e
    :goto_5
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO snapshots (origin_image,snapshot_image) VALUES (\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    .line 305
    .restart local v18       #snapshotFile:Ljava/io/File;
    :catch_2
    move-exception v4

    move-object v12, v4

    .line 306
    .end local v18           #snapshotFile:Ljava/io/File;
    .local v12, e:Ljava/io/IOException;
    :goto_6
    :try_start_b
    const-string v4, "PhotoMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkOrCreateSnapshot fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 309
    if-eqz v11, :cond_e

    .line 310
    :try_start_c
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    .line 309
    .end local v12           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_7
    if-eqz v11, :cond_f

    .line 310
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    throw v4
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_1

    .line 319
    .end local v11           #dst:Landroid/graphics/Bitmap;
    .restart local v18       #snapshotFile:Ljava/io/File;
    :cond_10
    if-eqz p2, :cond_11

    .line 321
    :try_start_d
    new-instance v13, Ljava/io/FileOutputStream;

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 322
    .restart local v13       #fout:Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 323
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 324
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_1

    .line 331
    .end local v13           #fout:Ljava/io/FileOutputStream;
    .end local v18           #snapshotFile:Ljava/io/File;
    :goto_8
    :try_start_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO snapshots (origin_image,snapshot_image) VALUES (\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 325
    .restart local v18       #snapshotFile:Ljava/io/File;
    :catch_3
    move-exception v4

    move-object v12, v4

    .line 326
    .restart local v12       #e:Ljava/io/IOException;
    const-string v4, "PhotoMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkOrCreateSnapshot fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 329
    .end local v12           #e:Ljava/io/IOException;
    :cond_11
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_1

    .end local v18           #snapshotFile:Ljava/io/File;
    .restart local v19       #snapshotFile:Ljava/io/File;
    move-object/from16 v18, v19

    .local v18, snapshotFile:Ljava/lang/Object;
    goto :goto_8

    .line 341
    .end local v18           #snapshotFile:Ljava/lang/Object;
    .restart local v11       #dst:Landroid/graphics/Bitmap;
    .restart local v13       #fout:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    move-object v12, v4

    move-object/from16 v18, v19

    .restart local v18       #snapshotFile:Ljava/lang/Object;
    goto/16 :goto_4

    .line 309
    .end local v13           #fout:Ljava/io/FileOutputStream;
    .end local v18           #snapshotFile:Ljava/lang/Object;
    :catchall_2
    move-exception v4

    move-object/from16 v18, v19

    .restart local v18       #snapshotFile:Ljava/lang/Object;
    goto :goto_7

    .line 305
    .end local v18           #snapshotFile:Ljava/lang/Object;
    :catch_5
    move-exception v4

    move-object v12, v4

    move-object/from16 v18, v19

    .restart local v18       #snapshotFile:Ljava/lang/Object;
    goto/16 :goto_6

    .end local v18           #snapshotFile:Ljava/lang/Object;
    .restart local v13       #fout:Ljava/io/FileOutputStream;
    :cond_12
    move-object/from16 v18, v19

    .restart local v18       #snapshotFile:Ljava/lang/Object;
    goto/16 :goto_5
.end method

.method public checkSnapshotDir()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    const/4 v3, 0x0

    .line 141
    .local v3, isSuccess:Z
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->getSnapshotDir()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v3, v6

    .line 145
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v4, ".nomedia"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .end local v1           #f:Ljava/io/File;
    .local v2, f:Ljava/io/File;
    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    move v3, v6

    .line 153
    :goto_1
    return v3

    .end local v2           #f:Ljava/io/File;
    .restart local v1       #f:Ljava/io/File;
    :cond_2
    move v3, v5

    .line 142
    goto :goto_0

    .end local v1           #f:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    :cond_3
    move v3, v5

    .line 147
    goto :goto_1

    .line 149
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 150
    .local v0, e:Ljava/io/IOException;
    const-string v4, "PhotoMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSnapShotDir fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public compactDB()V
    .locals 16

    .prologue
    .line 382
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 384
    .local v15, snaps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 385
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "snapshots"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "snapshot_image"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 389
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 391
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->getSnapshotDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    .line 401
    .local v12, files:[Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 403
    move-object v8, v12

    .local v8, arr$:[Ljava/lang/String;
    array-length v14, v8

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v14, :cond_3

    aget-object v11, v8, v13

    .line 404
    .local v11, f:Ljava/lang/String;
    const-string v1, ".nomedia"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v15, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 406
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 403
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 408
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 409
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "PhotoMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compactDB fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 414
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #f:Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    :cond_3
    return-void
.end method

.method public deleteSnapshot(Ljava/lang/String;)V
    .locals 6
    .parameter "orig_path"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 362
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, p1}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->querySnapshotFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, snap:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 365
    :try_start_0
    invoke-static {}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->getSnapshotDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 367
    invoke-static {}, Lcom/asus/mygazine/PhotoMonitor;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PhotoMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleted resized picture = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    invoke-static {}, Lcom/asus/mygazine/PhotoMonitor;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PhotoMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleted picture = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from database"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM snapshots WHERE origin_image=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_2
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 375
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PhotoMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteSnapshot fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getComputedRatio(II)D
    .locals 2
    .parameter "srcWidth"
    .parameter "srcHeight"

    .prologue
    .line 186
    const v0, 0x48ea6000

    mul-int v1, p1, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSampleSize(II)I
    .locals 3
    .parameter "srcWidth"
    .parameter "srcHeight"

    .prologue
    .line 192
    mul-int v1, p1, p2

    int-to-float v1, v1

    const v2, 0x48ea6000

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 193
    .local v0, sample:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 195
    :cond_0
    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 119
    const-string v0, "CREATE TABLE snapshots (_id INTEGER PRIMARY KEY AUTOINCREMENT,origin_image TEXT UNIQUE ON CONFLICT REPLACE,snapshot_image TEXT UNIQUE ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 130
    return-void
.end method

.method public querySnapshotFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "orig_path"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 163
    const/4 v9, 0x0

    .line 165
    .local v9, s:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 166
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "snapshots"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "origin_image"

    aput-object v5, v2, v3

    const-string v3, "snapshot_image"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Snapshots.ORIGIN_IMAGE=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 169
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 171
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 176
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_1
    return-object v9

    .line 176
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public querySnapshots()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 422
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 425
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "snapshots"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "origin_image"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 429
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 431
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_1
    return-object v9
.end method
