.class public Lcom/android/videoeditor/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static createMovieName(I)Ljava/lang/String;
    .locals 6
    .parameter "fileType"

    .prologue
    const/4 v5, 0x6

    .line 243
    packed-switch p0, :pswitch_data_0

    .line 255
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported file type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 245
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movie_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/videoeditor/util/StringUtils;->randomStringOfNumbers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, filename:Ljava/lang/String;
    :goto_0
    sget-object v3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 262
    .local v2, moviesDirectory:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 263
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 266
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 250
    .end local v0           #f:Ljava/io/File;
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #moviesDirectory:Ljava/io/File;
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movie_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/videoeditor/util/StringUtils;->randomStringOfNumbers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .restart local v1       #filename:Ljava/lang/String;
    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createNewProjectPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/videoeditor/util/FileUtils;->getProjectsRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/videoeditor/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    .local v0, file:Ljava/io/File;
    const-string v1, "FileUtils"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New project: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 6
    .parameter "dir"

    .prologue
    .line 276
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, children:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 279
    new-instance v1, Ljava/io/File;

    aget-object v3, v0, v2

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .local v1, f:Ljava/io/File;
    invoke-static {v1}, Lcom/android/videoeditor/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    const-string v3, "FileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File cannot be deleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v3, 0x0

    .line 288
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #i:I
    :goto_1
    return v3

    .line 278
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #f:Ljava/io/File;
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #i:I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method

.method public static getAudioTrackFilename(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "rawResourceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 188
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid audio track raw resource id"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 168
    :pswitch_0
    const-string v2, "theme_travel.m4a"

    .line 192
    .local v2, filename:Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    .local v5, mf:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 197
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 198
    const/4 v6, 0x1

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 199
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 201
    .local v0, buffer:[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-lez v1, :cond_2

    .line 202
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 205
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_0

    .line 206
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 209
    :cond_0
    if-eqz v3, :cond_1

    .line 210
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 211
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v6

    .line 173
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #mf:Ljava/io/File;
    :pswitch_1
    const-string v2, "theme_surfing.m4a"

    .line 174
    .restart local v2       #filename:Ljava/lang/String;
    goto :goto_0

    .line 178
    .end local v2           #filename:Ljava/lang/String;
    :pswitch_2
    const-string v2, "theme_film.m4a"

    .line 179
    .restart local v2       #filename:Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v2           #filename:Ljava/lang/String;
    :pswitch_3
    const-string v2, "theme_rockandroll.m4a"

    .line 184
    .restart local v2       #filename:Ljava/lang/String;
    goto :goto_0

    .line 205
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #mf:Ljava/io/File;
    :cond_2
    if-eqz v4, :cond_3

    .line 206
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 209
    :cond_3
    if-eqz v3, :cond_4

    .line 210
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 211
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 216
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 166
    :pswitch_data_0
    .packed-switch 0x7f050003
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMaskFilename(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "maskRawResourceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    packed-switch p1, :pswitch_data_0

    .line 96
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid mask raw resource id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :pswitch_0
    const-string v1, "mask_countour.jpg"

    .line 100
    .local v1, filename:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v4, mf:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 104
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 106
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 107
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    if-nez v0, :cond_3

    .line 109
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot decode raw resource mask"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    .line 118
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 121
    :cond_0
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    :cond_1
    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 127
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v5

    .line 91
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #mf:Ljava/io/File;
    :pswitch_1
    const-string v1, "mask_diagonal.jpg"

    .line 92
    .restart local v1       #filename:Ljava/lang/String;
    goto :goto_0

    .line 112
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #mf:Ljava/io/File;
    :cond_3
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {p0, v1, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 113
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 114
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot compress bitmap"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_4
    if-eqz v3, :cond_5

    .line 118
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 121
    :cond_5
    if-eqz v0, :cond_6

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    :cond_6
    if-eqz v2, :cond_7

    .line 126
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 127
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 132
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #is:Ljava/io/InputStream;
    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 84
    :pswitch_data_0
    .packed-switch 0x7f050001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getMaskRawId(Ljava/lang/String;)I
    .locals 4
    .parameter "path"

    .prologue
    .line 143
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, filename:Ljava/lang/String;
    const-string v1, "mask_countour.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const v1, 0x7f050001

    .line 148
    :goto_0
    return v1

    .line 147
    :cond_0
    const-string v1, "mask_diagonal.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    const v1, 0x7f050002

    goto :goto_0

    .line 150
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getProjectsRootDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Cannot create file .nomedia"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_1
    return-object v0
.end method

.method public static getSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 298
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 299
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v1, p0

    .line 302
    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
