.class Lcom/android/camera/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Storage$1;,
        Lcom/android/camera/Storage$Thumbnail;
    }
.end annotation


# static fields
.field public static final BUCKET_ID:Ljava/lang/String;

.field private static final DCIM:Ljava/lang/String;

.field public static final DIRECTORY:Ljava/lang/String;

.field public static final THUMBNAILS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->THUMBNAILS:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;[B)Lcom/android/camera/Storage$Thumbnail;
    .locals 7
    .parameter "resolver"
    .parameter "title"
    .parameter "date"
    .parameter "location"
    .parameter "jpeg"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, path:Ljava/lang/String;
    const/4 v0, 0x0

    .line 164
    .local v0, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0           #out:Ljava/io/FileOutputStream;
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 171
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    :goto_0
    invoke-static {p5}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v0

    .line 180
    .local v0, orientation:I
    new-instance v3, Landroid/content/ContentValues;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 181
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v4, "_display_name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v5, ".jpg"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string p1, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    const-string p1, "mime_type"

    const-string p2, "image/jpeg"

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string p1, "orientation"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string p1, "_data"

    invoke-virtual {v3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string p1, "_size"

    array-length p2, p5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    if-eqz p4, :cond_0

    .line 190
    const-string p1, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 191
    const-string p1, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 194
    :cond_0
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 195
    .local p1, uri:Landroid/net/Uri;
    if-nez p1, :cond_1

    .line 196
    const-string p0, "CameraStorage"

    .end local p0
    const-string p1, "Failed to write MediaStore"

    .end local p1           #uri:Landroid/net/Uri;
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v1

    .line 208
    .end local v0           #orientation:I
    .end local v1           #out:Ljava/io/FileOutputStream;
    .end local v3           #values:Landroid/content/ContentValues;
    .local p0, out:Ljava/io/FileOutputStream;
    :goto_1
    return-object p1

    .line 166
    .local v0, out:Ljava/io/FileOutputStream;
    .local p0, resolver:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    :catch_0
    move-exception p0

    move-object p1, v0

    .line 167
    .end local v0           #out:Ljava/io/FileOutputStream;
    .local p0, e:Ljava/lang/Exception;
    .local p1, out:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    const-string p2, "CameraStorage"

    .end local p2
    const-string p3, "Failed to write image"

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 168
    const/4 p0, 0x0

    .line 171
    .end local p0           #e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    move-object v6, p1

    .end local p1           #out:Ljava/io/FileOutputStream;
    .local v6, out:Ljava/io/FileOutputStream;
    move-object p1, p0

    move-object p0, v6

    .line 173
    .end local v6           #out:Ljava/io/FileOutputStream;
    .local p0, out:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 170
    .restart local v0       #out:Ljava/io/FileOutputStream;
    .local p0, resolver:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 171
    .end local v0           #out:Ljava/io/FileOutputStream;
    .end local p1           #title:Ljava/lang/String;
    .end local p2
    .local p0, out:Ljava/io/FileOutputStream;
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 173
    .end local p0           #out:Ljava/io/FileOutputStream;
    :goto_5
    throw p1

    .line 201
    .local v0, orientation:I
    .restart local v1       #out:Ljava/io/FileOutputStream;
    .restart local v3       #values:Landroid/content/ContentValues;
    .local p0, resolver:Landroid/content/ContentResolver;
    .local p1, uri:Landroid/net/Uri;
    :cond_1
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    .end local p0           #resolver:Landroid/content/ContentResolver;
    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 202
    .local p0, options:Landroid/graphics/BitmapFactory$Options;
    const/16 p2, 0x10

    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 203
    const/4 p2, 0x0

    array-length p3, p5

    invoke-static {p5, p2, p3, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 204
    .local p0, bitmap:Landroid/graphics/Bitmap;
    if-nez p0, :cond_2

    .line 205
    const-string p0, "CameraStorage"

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    const-string p1, "Failed to create thumbnail"

    .end local p1           #uri:Landroid/net/Uri;
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #out:Ljava/io/FileOutputStream;
    .local p0, out:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 208
    .restart local v1       #out:Ljava/io/FileOutputStream;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .restart local p1       #uri:Landroid/net/Uri;
    :cond_2
    new-instance p2, Lcom/android/camera/Storage$Thumbnail;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, v0, p3}, Lcom/android/camera/Storage$Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;ILcom/android/camera/Storage$1;)V

    move-object p0, v1

    .end local v1           #out:Ljava/io/FileOutputStream;
    .local p0, out:Ljava/io/FileOutputStream;
    move-object p1, p2

    goto :goto_1

    .line 172
    .end local v0           #orientation:I
    .end local v3           #values:Landroid/content/ContentValues;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    .local p0, resolver:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .end local v1           #out:Ljava/io/FileOutputStream;
    .end local p0           #resolver:Landroid/content/ContentResolver;
    .end local p2
    .local p1, out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception p2

    goto :goto_3

    .end local p1           #out:Ljava/io/FileOutputStream;
    .local p0, out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception p0

    goto :goto_5

    .line 170
    .restart local v1       #out:Ljava/io/FileOutputStream;
    .local p0, resolver:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #out:Ljava/io/FileOutputStream;
    .local p0, out:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local p2
    .local p0, e:Ljava/lang/Exception;
    .local p1, out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception p0

    move-object v6, p0

    move-object p0, p1

    .end local p1           #out:Ljava/io/FileOutputStream;
    .local p0, out:Ljava/io/FileOutputStream;
    move-object p1, v6

    goto :goto_4

    .line 166
    .restart local v1       #out:Ljava/io/FileOutputStream;
    .local p0, resolver:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    :catch_4
    move-exception p0

    move-object p1, v1

    .end local v1           #out:Ljava/io/FileOutputStream;
    .local p1, out:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static ensureOSXCompatible()V
    .locals 4

    .prologue
    .line 240
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    const-string v2, "100ANDRO"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    return-void
.end method

.method public static getAvailableSpace()J
    .locals 8

    .prologue
    const-wide/16 v5, -0x1

    .line 212
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, state:Ljava/lang/String;
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    const-wide/16 v4, -0x2

    .line 232
    :goto_0
    return-wide v4

    .line 216
    :cond_0
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-wide v4, v5

    .line 217
    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-wide v4, v5

    .line 223
    goto :goto_0

    .line 227
    :cond_3
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    sget-object v4, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    goto :goto_0

    .line 229
    .end local v2           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 230
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "CameraStorage"

    const-string v5, "Fail to access external storage"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    const-wide/16 v4, -0x3

    goto :goto_0
.end method

.method public static getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Storage$Thumbnail;
    .locals 13
    .parameter "resolver"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 114
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 116
    .local v7, baseUri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v6, "1"

    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 117
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "orientation"

    aput-object v0, v2, v10

    .line 118
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mime_type=\'image/jpeg\' AND bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/android/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 122
    .local v5, order:Ljava/lang/String;
    const/4 v12, 0x0

    .line 124
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 125
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    new-instance v6, Lcom/android/camera/Storage$Thumbnail;

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/Storage$Thumbnail;-><init>(Landroid/net/Uri;JILcom/android/camera/Storage$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    if-eqz v12, :cond_0

    .line 130
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 133
    :goto_0
    return-object v0

    .line 129
    :cond_1
    if-eqz v12, :cond_2

    .line 130
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    .line 133
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_3

    .line 130
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Storage$Thumbnail;
    .locals 13
    .parameter "resolver"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 137
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 139
    .local v7, baseUri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v6, "1"

    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 140
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 141
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/android/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 144
    .local v5, order:Ljava/lang/String;
    const/4 v12, 0x0

    .line 146
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 147
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    new-instance v6, Lcom/android/camera/Storage$Thumbnail;

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/Storage$Thumbnail;-><init>(Landroid/net/Uri;JILcom/android/camera/Storage$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    if-eqz v12, :cond_0

    .line 152
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 155
    :goto_0
    return-object v0

    .line 151
    :cond_1
    if-eqz v12, :cond_2

    .line 152
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 155
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_3

    .line 152
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
