.class public Lcom/google/android/apps/books/util/ProviderUtils;
.super Ljava/lang/Object;
.source "ProviderUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProviderUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    return-void
.end method

.method public static ensureNotOnMainThread(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 35
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 36
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string v1, "ProviderUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query coming from main thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method

.method public static freeBytesOnFilesystem(Ljava/io/File;)J
    .locals 9
    .parameter "file"

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, path:Ljava/lang/String;
    :try_start_0
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 245
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 246
    .local v0, availableBlocks:J
    mul-long v7, v2, v0

    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v6           #stat:Landroid/os/StatFs;
    :goto_0
    return-wide v7

    .line 238
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 241
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v7, 0x0

    goto :goto_0
.end method

.method public static fullyReadContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B
    .locals 2
    .parameter "resolver"
    .parameter "contentUri"

    .prologue
    .line 104
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/books/util/ProviderUtils;->fullyReadContentUriOrThrow(Landroid/content/ContentResolver;Landroid/net/Uri;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fullyReadContentUriOrThrow(Landroid/content/ContentResolver;Landroid/net/Uri;)[B
    .locals 3
    .parameter "resolver"
    .parameter "contentUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, input:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/google/android/apps/books/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 122
    if-eqz v0, :cond_0

    .line 124
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-object v1

    .line 122
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 124
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    :cond_1
    :goto_1
    throw v1

    .line 125
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static prepareForWrite(Ljava/io/File;)V
    .locals 4
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 75
    .local v0, parent:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create parent directory for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    return-void
.end method

.method public static providerModeToPfdMode(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 4
    .parameter "mode"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    const-string v1, "r"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const/high16 v0, 0x1000

    .line 66
    .local v0, modeBits:I
    :goto_0
    return v0

    .line 55
    .end local v0           #modeBits:I
    :cond_0
    const-string v1, "w"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    :cond_1
    const/high16 v0, 0x2c00

    .restart local v0       #modeBits:I
    goto :goto_0

    .line 59
    .end local v0           #modeBits:I
    :cond_2
    const-string v1, "wa"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    const/high16 v0, 0x2a00

    .restart local v0       #modeBits:I
    goto :goto_0

    .line 64
    .end local v0           #modeBits:I
    :cond_3
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mode for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static queryForDirCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 7
    .parameter "resolver"
    .parameter "dirUri"

    .prologue
    const/4 v3, 0x0

    .line 161
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 164
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .parameter "resolver"
    .parameter "uri"
    .parameter "column"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 138
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 141
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected row count for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/apps/books/util/Assert;->assertEquals(Ljava/lang/String;JJ)V

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/Assert;->assertTrue(Z)V

    .line 144
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static queryForLong(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .parameter "resolver"
    .parameter "uri"
    .parameter "column"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 177
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 180
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "unexpected row count"

    const-wide/16 v1, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/apps/books/util/Assert;->assertEquals(Ljava/lang/String;JJ)V

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/Assert;->assertTrue(Z)V

    .line 182
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static queryForString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "resolver"
    .parameter "uri"
    .parameter "column"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 199
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 202
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "unexpected row count"

    const-wide/16 v1, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/apps/books/util/Assert;->assertEquals(Ljava/lang/String;JJ)V

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/Assert;->assertTrue(Z)V

    .line 204
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static queryOpenableColumns(Ljava/io/File;)Landroid/database/Cursor;
    .locals 6
    .parameter "file"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 85
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "_display_name"

    aput-object v2, v1, v3

    const-string v2, "_size"

    aput-object v2, v1, v4

    invoke-direct {v0, v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 90
    .local v0, cursor:Landroid/database/MatrixCursor;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 95
    :cond_0
    return-object v0
.end method

.method public static recursiveDelete(Ljava/io/File;)Z
    .locals 3
    .parameter "dir"

    .prologue
    .line 215
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 217
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 218
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/google/android/apps/books/util/ProviderUtils;->recursiveDelete(Ljava/io/File;)Z

    .line 217
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 225
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2
.end method
