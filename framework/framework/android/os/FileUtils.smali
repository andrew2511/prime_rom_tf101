.class public Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileUtils$FileStatus;
    }
.end annotation


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 6
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 122
    .local v2, result:Z
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_13

    .line 124
    .local v1, in:Ljava/io/InputStream;
    :try_start_6
    invoke-static {v1, p1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    move-result v2

    .line 126
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 131
    .end local v1           #in:Ljava/io/InputStream;
    :goto_d
    return v2

    .line 126
    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_e
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_13

    .line 128
    .end local v1           #in:Ljava/io/InputStream;
    :catch_13
    move-exception v3

    move-object v0, v3

    .line 129
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 9
    .parameter "inputStream"
    .parameter "destFile"

    .prologue
    const/4 v6, 0x0

    .line 140
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 143
    :cond_a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_2d

    .line 145
    .local v3, out:Ljava/io/FileOutputStream;
    const/16 v4, 0x1000

    :try_start_11
    new-array v0, v4, [B

    .line 147
    .local v0, buffer:[B
    :goto_13
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_31

    .line 148
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1e

    goto :goto_13

    .line 151
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_1e
    move-exception v4

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2d

    .line 153
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_40

    .line 156
    :goto_29
    :try_start_29
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 159
    .end local v3           #out:Ljava/io/FileOutputStream;
    :catch_2d
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/io/IOException;
    move v4, v6

    .line 160
    .end local v2           #e:Ljava/io/IOException;
    :goto_30
    return v4

    .line 151
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :cond_31
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_34} :catch_2d

    .line 153
    :try_start_34
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3b} :catch_42

    .line 156
    :goto_3b
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_2d

    .line 158
    const/4 v4, 0x1

    goto :goto_30

    .line 154
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catch_40
    move-exception v5

    goto :goto_29

    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    :catch_42
    move-exception v4

    goto :goto_3b
.end method

.method public static native getFatVolumeId(Ljava/lang/String;)I
.end method

.method public static getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z
    .registers 3
    .parameter "path"
    .parameter "status"

    .prologue
    .line 80
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 81
    invoke-static {p0, p1}, Landroid/os/FileUtils;->getFileStatusNative(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v0

    return v0
.end method

.method private static native getFileStatusNative(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z
.end method

.method public static native getPermissions(Ljava/lang/String;[I)I
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .registers 3
    .parameter "file"

    .prologue
    .line 172
    sget-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "file"
    .parameter "max"
    .parameter "ellipsis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    .line 184
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 186
    .local v2, input:Ljava/io/InputStream;
    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 187
    .local v7, size:J
    if-gtz p1, :cond_13

    cmp-long v10, v7, v11

    if-lez v10, :cond_62

    if-nez p1, :cond_62

    .line 188
    :cond_13
    cmp-long v10, v7, v11

    if-lez v10, :cond_1f

    if-eqz p1, :cond_1e

    int-to-long v10, p1

    cmp-long v10, v7, v10

    if-gez v10, :cond_1f

    :cond_1e
    long-to-int p1, v7

    .line 189
    :cond_1f
    add-int/lit8 v10, p1, 0x1

    new-array v1, v10, [B

    .line 190
    .local v1, data:[B
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 191
    .local v5, length:I
    if-gtz v5, :cond_2f

    const-string v10, ""
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_e5

    .line 226
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .end local v5           #length:I
    :goto_2e
    return-object v10

    .line 192
    .restart local v5       #length:I
    :cond_2f
    if-gt v5, p1, :cond_3b

    :try_start_31
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_e5

    .line 226
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_2e

    .line 193
    :cond_3b
    if-nez p2, :cond_47

    :try_start_3d
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_e5

    .line 226
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_2e

    .line 194
    :cond_47
    :try_start_47
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v12, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_e5

    move-result-object v10

    .line 226
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_2e

    .line 195
    .end local v1           #data:[B
    .end local v5           #length:I
    :cond_62
    if-gez p1, :cond_c6

    .line 197
    const/4 v6, 0x0

    .line 198
    .local v6, rolled:Z
    const/4 v3, 0x0

    .local v3, last:[B
    const/4 v1, 0x0

    .line 200
    .restart local v1       #data:[B
    :cond_67
    if-eqz v3, :cond_6a

    const/4 v6, 0x1

    .line 201
    :cond_6a
    move-object v9, v3

    .local v9, tmp:[B
    move-object v3, v1

    move-object v1, v9

    .line 202
    if-nez v1, :cond_72

    neg-int v10, p1

    :try_start_70
    new-array v1, v10, [B

    .line 203
    :cond_72
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 204
    .local v4, len:I
    array-length v10, v1

    if-eq v4, v10, :cond_67

    .line 206
    if-nez v3, :cond_83

    if-gtz v4, :cond_83

    const-string v10, ""
    :try_end_7f
    .catchall {:try_start_70 .. :try_end_7f} :catchall_e5

    .line 226
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_2e

    .line 207
    :cond_83
    if-nez v3, :cond_8f

    :try_start_85
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_e5

    .line 226
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_2e

    .line 208
    :cond_8f
    if-lez v4, :cond_9e

    .line 209
    const/4 v6, 0x1

    .line 210
    const/4 v10, 0x0

    :try_start_93
    array-length v11, v3

    sub-int/2addr v11, v4

    invoke-static {v3, v4, v3, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    const/4 v10, 0x0

    array-length v11, v3

    sub-int/2addr v11, v4

    invoke-static {v1, v10, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    :cond_9e
    if-eqz p2, :cond_a2

    if-nez v6, :cond_ab

    :cond_a2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_a7
    .catchall {:try_start_93 .. :try_end_a7} :catchall_e5

    .line 226
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_2e

    .line 214
    :cond_ab
    :try_start_ab
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c0
    .catchall {:try_start_ab .. :try_end_c0} :catchall_e5

    move-result-object v10

    .line 226
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_2e

    .line 216
    .end local v1           #data:[B
    .end local v3           #last:[B
    .end local v4           #len:I
    .end local v6           #rolled:Z
    .end local v9           #tmp:[B
    :cond_c6
    :try_start_c6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 218
    .local v0, contents:Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 220
    .restart local v1       #data:[B
    :cond_cf
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 221
    .restart local v4       #len:I
    if-lez v4, :cond_d9

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 222
    :cond_d9
    array-length v10, v1

    if-eq v4, v10, :cond_cf

    .line 223
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_df
    .catchall {:try_start_c6 .. :try_end_df} :catchall_e5

    move-result-object v10

    .line 226
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_2e

    .end local v0           #contents:Ljava/io/ByteArrayOutputStream;
    .end local v1           #data:[B
    .end local v4           #len:I
    .end local v7           #size:J
    :catchall_e5
    move-exception v10

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v10
.end method

.method public static native setPermissions(Ljava/lang/String;III)I
.end method

.method public static native setUMask(I)I
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .registers 2
    .parameter "stream"

    .prologue
    .line 108
    if-eqz p0, :cond_9

    .line 109
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_b

    .line 111
    :cond_9
    const/4 v0, 0x1

    .line 114
    :goto_a
    return v0

    .line 112
    :catch_b
    move-exception v0

    .line 114
    const/4 v0, 0x0

    goto :goto_a
.end method
