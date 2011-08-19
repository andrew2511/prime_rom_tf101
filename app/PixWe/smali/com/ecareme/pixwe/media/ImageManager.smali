.class public Lcom/ecareme/pixwe/media/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;,
        Lcom/ecareme/pixwe/media/ImageManager$DataLocation;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String; = null

.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String; = null

.field public static final DEFAULT_THUMBNAIL:Landroid/graphics/Bitmap; = null

.field public static final INCLUDE_DRM_IMAGES:I = 0x2

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x4

.field public static final NO_IMAGE_BITMAP:Landroid/graphics/Bitmap; = null

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final STORAGE_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "ImageManager"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    const/4 v1, 0x1

    .line 47
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/ecareme/pixwe/media/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 56
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/media/ImageManager;->DEFAULT_THUMBNAIL:Landroid/graphics/Bitmap;

    .line 57
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/media/ImageManager;->NO_IMAGE_BITMAP:Landroid/graphics/Bitmap;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/media/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/ecareme/pixwe/media/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/media/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 9
    .parameter "cr"
    .parameter "title"
    .parameter "dateAdded"
    .parameter "dateTaken"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 143
    const/4 v6, 0x0

    .line 144
    .local v6, outputStream:Ljava/io/OutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    move-object v0, v4

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v4, dir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 148
    :cond_0
    new-instance v4, Ljava/io/File;

    .end local v4           #dir:Ljava/io/File;
    move-object v0, v4

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v4, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .local v7, outputStream:Ljava/io/OutputStream;
    if-eqz p10, :cond_2

    .line 151
    :try_start_1
    sget-object p11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p11
    const/16 v4, 0x4b

    move-object/from16 v0, p10

    move-object/from16 v1, p11

    move v2, v4

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 152
    .end local v4           #file:Ljava/io/File;
    const/16 p10, 0x0

    const/16 p11, 0x0

    aput p11, p12, p10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 164
    .end local p10
    :goto_0
    invoke-static {v7}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 168
    new-instance p10, Ljava/io/File;

    move-object/from16 v0, p10

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p10 .. p10}, Ljava/io/File;->length()J

    move-result-wide p10

    .line 170
    .local p10, size:J
    new-instance p8, Landroid/content/ContentValues;

    .end local p8
    const/16 v4, 0xb

    move-object/from16 v0, p8

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 171
    .local p8, values:Landroid/content/ContentValues;
    const-string v4, "title"

    move-object/from16 v0, p8

    move-object v1, v4

    move-object v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string p1, "_display_name"

    .end local p1
    move-object/from16 v0, p8

    move-object v1, p1

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string p1, "datetaken"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p9

    .end local p9
    move-object/from16 v0, p8

    move-object v1, p1

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    const-string p1, "date_modified"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .end local p4
    move-object/from16 v0, p8

    move-object v1, p1

    move-object v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    const-string p1, "date_added"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2
    move-object/from16 v0, p8

    move-object v1, p1

    move-object v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    const-string p1, "mime_type"

    const-string p2, "image/jpeg"

    move-object/from16 v0, p8

    move-object v1, p1

    move-object v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string p1, "orientation"

    const/4 p2, 0x0

    aget p2, p12, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    move-object/from16 v0, p8

    move-object v1, p1

    move-object v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const-string p1, "_data"

    move-object/from16 v0, p8

    move-object v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string p1, "_size"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    move-object/from16 v0, p8

    move-object v1, p1

    move-object v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    if-eqz p6, :cond_1

    if-eqz p7, :cond_1

    .line 186
    const-string p1, "latitude"

    invoke-virtual {p6}, Ljava/lang/Double;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    move-object/from16 v0, p8

    move-object v1, p1

    move-object v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 187
    const-string p1, "longitude"

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Double;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    move-object/from16 v0, p8

    move-object v1, p1

    move-object v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 190
    :cond_1
    sget-object p1, Lcom/ecareme/pixwe/media/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .end local p0
    move-object p1, p0

    move-object p0, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .end local p8           #values:Landroid/content/ContentValues;
    .end local p10           #size:J
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_1
    return-object p1

    .line 154
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1
    .restart local p2
    .restart local p4
    .local p8, directory:Ljava/lang/String;
    .restart local p9
    .local p10, source:Landroid/graphics/Bitmap;
    .restart local p11
    :cond_2
    :try_start_2
    move-object v0, v7

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 155
    const/16 p10, 0x0

    invoke-static {v5}, Lcom/ecareme/pixwe/media/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    .end local p10           #source:Landroid/graphics/Bitmap;
    move-result p11

    .end local p11
    aput p11, p12, p10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 157
    .end local v4           #file:Ljava/io/File;
    :catch_0
    move-exception p0

    move-object p1, v7

    .line 158
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .local p0, ex:Ljava/io/FileNotFoundException;
    .local p1, outputStream:Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string p2, "ImageManager"

    .end local p2
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 164
    invoke-static {p1}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 159
    const/4 p0, 0x0

    move-object v8, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .local v8, outputStream:Ljava/io/OutputStream;
    move-object p1, p0

    move-object p0, v8

    .end local v8           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_1

    .line 160
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    .restart local p10       #source:Landroid/graphics/Bitmap;
    .restart local p11
    :catch_1
    move-exception p0

    move-object p1, v6

    .line 161
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .end local p10           #source:Landroid/graphics/Bitmap;
    .end local p11
    .local p0, ex:Ljava/io/IOException;
    .local p1, outputStream:Ljava/io/OutputStream;
    :goto_3
    :try_start_4
    const-string p2, "ImageManager"

    .end local p2
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 164
    invoke-static {p1}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 162
    const/4 p0, 0x0

    move-object v8, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    move-object p1, p0

    move-object p0, v8

    .end local v8           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_1

    .line 163
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    .restart local p10       #source:Landroid/graphics/Bitmap;
    .restart local p11
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .line 164
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .end local p1           #title:Ljava/lang/String;
    .end local p2
    .end local p10           #source:Landroid/graphics/Bitmap;
    .end local p11
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_4
    invoke-static {p0}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 165
    throw p1

    .line 163
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #title:Ljava/lang/String;
    .restart local p2
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .end local p0           #outputStream:Ljava/io/OutputStream;
    .end local p2
    .local p1, outputStream:Ljava/io/OutputStream;
    :catchall_2
    move-exception p0

    move-object v8, p0

    move-object p0, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .restart local p0       #outputStream:Ljava/io/OutputStream;
    move-object p1, v8

    goto :goto_4

    .line 160
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    :catch_2
    move-exception p0

    move-object p1, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 157
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    .local p1, title:Ljava/lang/String;
    .restart local p10       #source:Landroid/graphics/Bitmap;
    .restart local p11
    :catch_3
    move-exception p0

    move-object p1, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private static checkFsWritable()Z
    .locals 4

    .prologue
    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/DCIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    const/4 v2, 0x0

    .line 296
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    goto :goto_0
.end method

.method public static ensureOSXCompatibleFolder()V
    .locals 4

    .prologue
    .line 82
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/DCIM/100ANDRO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create NNNAAAAA file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    return-void
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, degree:I
    const/4 v2, 0x0

    .line 197
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 201
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 203
    const-string v5, "Orientation"

    .line 202
    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 204
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    .line 206
    packed-switch v4, :pswitch_data_0

    .line 220
    .end local v4           #orientation:I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 198
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 199
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 208
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 209
    goto :goto_1

    .line 211
    :pswitch_2
    const/16 v0, 0xb4

    .line 212
    goto :goto_1

    .line 214
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 206
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getLastImageThumbPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DCIM/.thumbnails/image_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastVideoThumbPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DCIM/.thumbnails/video_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasStorage()Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ecareme/pixwe/media/ImageManager;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .locals 4
    .parameter "requireWriteAccess"

    .prologue
    const/4 v3, 0x1

    .line 308
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    if-eqz p0, :cond_0

    .line 311
    invoke-static {}, Lcom/ecareme/pixwe/media/ImageManager;->checkFsWritable()Z

    move-result v1

    .local v1, writable:Z
    move v2, v1

    .line 319
    .end local v1           #writable:Z
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 314
    goto :goto_0

    .line 316
    :cond_1
    if-nez p0, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 317
    goto :goto_0

    .line 319
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 115
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 10
    .parameter "cr"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 336
    const/4 v7, 0x0

    .line 337
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/ecareme/pixwe/media/ImageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 339
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 340
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 342
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 344
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_1
    return v7
.end method

.method static isSingleImageMode(Ljava/lang/String;)Z
    .locals 1
    .parameter "uriString"

    .prologue
    .line 281
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 281
    goto :goto_0
.end method

.method public static isVideoMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 122
    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v1, 0x0

    .line 325
    if-nez p0, :cond_0

    .line 330
    :goto_0
    return-object v1

    .line 328
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public static quickHasStorage()Z
    .locals 2

    .prologue
    .line 300
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 89
    move v0, p0

    .line 90
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 94
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 96
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 97
    const/4 v1, 0x0

    .line 108
    .local v1, retVal:I
    :goto_0
    return v1

    .line 98
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 99
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 100
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 101
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 102
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 103
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 105
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method public static setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V
    .locals 4
    .parameter "cr"
    .parameter "uri"
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 126
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    invoke-virtual {p0, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public static storeImage(Landroid/net/Uri;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[B)Lcom/ecareme/pixwe/media/Cancelable;
    .locals 6
    .parameter "uri"
    .parameter "cr"
    .parameter "orientation"
    .parameter "source"
    .parameter "jpegData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/ContentResolver;",
            "I",
            "Landroid/graphics/Bitmap;",
            "[B)",
            "Lcom/ecareme/pixwe/media/Cancelable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;-><init>(Landroid/net/Uri;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[B)V

    return-object v0
.end method
