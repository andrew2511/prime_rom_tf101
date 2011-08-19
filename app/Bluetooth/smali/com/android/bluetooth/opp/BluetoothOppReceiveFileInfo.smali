.class public Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppReceiveFileInfo.java"


# static fields
.field private static sDesiredStoragePath:Ljava/lang/String;


# instance fields
.field public mFileName:Ljava/lang/String;

.field public mLength:J

.field public mOutputStream:Ljava/io/FileOutputStream;

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v1, 0x0

    .line 86
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V
    .locals 0
    .parameter "filename"
    .parameter "length"
    .parameter "outputStream"
    .parameter "status"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    .line 81
    iput p5, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 82
    iput-wide p2, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    .line 83
    return-void
.end method

.method private static chooseUniquefilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filename"
    .parameter "extension"

    .prologue
    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, fullfilename:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    .line 236
    :goto_0
    return-object v5

    .line 212
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/bluetooth/opp/Constants;->filename_SEQUENCE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 224
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 225
    .local v3, rnd:Ljava/util/Random;
    const/4 v4, 0x1

    .line 226
    .local v4, sequence:I
    const/4 v2, 0x1

    .local v2, magnitude:I
    :goto_1
    const v5, 0x3b9aca00

    if-ge v2, v5, :cond_3

    .line 227
    const/4 v1, 0x0

    .local v1, iteration:I
    :goto_2
    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    .line 230
    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 226
    :cond_2
    mul-int/lit8 v2, v2, 0xa

    goto :goto_1

    .line 236
    .end local v1           #iteration:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static choosefilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "hint"

    .prologue
    const/16 v4, 0x2f

    .line 240
    const/4 v0, 0x0

    .line 243
    .local v0, filename:Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    const/16 v2, 0x5c

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 248
    const-string v2, "\\s"

    const-string v3, " "

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 251
    const-string v2, "[:\"<>*?|]"

    const-string v3, "_"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 253
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 254
    .local v1, index:I
    if-lez v1, :cond_1

    .line 255
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-object v0

    .line 257
    .restart local v1       #index:I
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 13
    .parameter "context"
    .parameter "id"

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 94
    .local v1, contentUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .local v6, filename:Ljava/lang/String;
    const/4 p1, 0x0

    .line 95
    .local p1, hint:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 96
    .local v7, length:J
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hint"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "total_bytes"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 99
    .local v0, metadataCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_9

    .line 101
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 102
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v4, v2

    .line 106
    .end local v7           #length:J
    .local v4, length:J
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, p1

    .line 110
    .end local p1           #hint:Ljava/lang/String;
    .local v0, hint:Ljava/lang/String;
    :goto_1
    const/4 p1, 0x0

    .line 111
    .local p1, base:Ljava/io/File;
    const/4 v3, 0x0

    .line 113
    .local v3, stat:Landroid/os/StatFs;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v7, "mounted"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    .end local p1           #base:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, root:Ljava/lang/String;
    new-instance p1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #root:Ljava/lang/String;
    const-string v7, "/bluetooth"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local p1       #base:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    new-instance p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .end local p0
    const/16 v0, 0x1ec

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    .end local v0           #hint:Ljava/lang/String;
    move-object v0, v3

    .end local v3           #stat:Landroid/os/StatFs;
    .local v0, stat:Landroid/os/StatFs;
    move-object v1, p0

    move-object p0, p1

    .end local p1           #base:Ljava/io/File;
    .local p0, base:Ljava/io/File;
    move-object p1, v6

    .line 181
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v6           #filename:Ljava/lang/String;
    .local p1, filename:Ljava/lang/String;
    :goto_2
    return-object v1

    .line 106
    .end local v4           #length:J
    .local v0, metadataCursor:Landroid/database/Cursor;
    .restart local v1       #contentUri:Landroid/net/Uri;
    .restart local v6       #filename:Ljava/lang/String;
    .restart local v7       #length:J
    .local p0, context:Landroid/content/Context;
    .local p1, hint:Ljava/lang/String;
    :catchall_0
    move-exception p0

    move-object v12, p0

    move-object p0, p1

    .end local p1           #hint:Ljava/lang/String;
    .local p0, hint:Ljava/lang/String;
    move-object p1, v12

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    .line 121
    .end local v7           #length:J
    .local v0, hint:Ljava/lang/String;
    .restart local v3       #stat:Landroid/os/StatFs;
    .restart local v4       #length:J
    .local p0, context:Landroid/content/Context;
    .local p1, base:Ljava/io/File;
    :cond_0
    new-instance v9, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 132
    .end local v3           #stat:Landroid/os/StatFs;
    .local v9, stat:Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v10, 0x4

    sub-long/2addr v7, v10

    mul-long/2addr v2, v7

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 134
    new-instance p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .end local p0           #context:Landroid/content/Context;
    const/16 v0, 0x1ee

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    .end local v0           #hint:Ljava/lang/String;
    move-object v0, v9

    .end local v9           #stat:Landroid/os/StatFs;
    .local v0, stat:Landroid/os/StatFs;
    move-object v1, p0

    move-object p0, p1

    .end local p1           #base:Ljava/io/File;
    .local p0, base:Ljava/io/File;
    move-object p1, v6

    .end local v6           #filename:Ljava/lang/String;
    .local p1, filename:Ljava/lang/String;
    goto :goto_2

    .line 124
    .local v0, hint:Ljava/lang/String;
    .restart local v3       #stat:Landroid/os/StatFs;
    .restart local v6       #filename:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, base:Ljava/io/File;
    :cond_1
    new-instance p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .end local p0           #context:Landroid/content/Context;
    const/16 v0, 0x1ed

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    .end local v0           #hint:Ljava/lang/String;
    move-object v0, v3

    .end local v3           #stat:Landroid/os/StatFs;
    .local v0, stat:Landroid/os/StatFs;
    move-object v1, p0

    move-object p0, p1

    .end local p1           #base:Ljava/io/File;
    .local p0, base:Ljava/io/File;
    move-object p1, v6

    .end local v6           #filename:Ljava/lang/String;
    .local p1, filename:Ljava/lang/String;
    goto :goto_2

    .line 137
    .local v0, hint:Ljava/lang/String;
    .restart local v6       #filename:Ljava/lang/String;
    .restart local v9       #stat:Landroid/os/StatFs;
    .local p0, context:Landroid/content/Context;
    .local p1, base:Ljava/io/File;
    :cond_2
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->choosefilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .end local v6           #filename:Ljava/lang/String;
    .local v3, filename:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 140
    new-instance p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .end local p0           #context:Landroid/content/Context;
    const/16 v0, 0x1ec

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    .end local v0           #hint:Ljava/lang/String;
    move-object v0, v9

    .end local v9           #stat:Landroid/os/StatFs;
    .local v0, stat:Landroid/os/StatFs;
    move-object v1, p0

    move-object p0, p1

    .end local p1           #base:Ljava/io/File;
    .local p0, base:Ljava/io/File;
    move-object p1, v3

    .end local v3           #filename:Ljava/lang/String;
    .local p1, filename:Ljava/lang/String;
    goto :goto_2

    .line 142
    .local v0, hint:Ljava/lang/String;
    .restart local v3       #filename:Ljava/lang/String;
    .restart local v9       #stat:Landroid/os/StatFs;
    .local p0, context:Landroid/content/Context;
    .local p1, base:Ljava/io/File;
    :cond_3
    const/4 v0, 0x0

    .line 143
    .local v0, extension:Ljava/lang/String;
    const-string v0, "."

    .end local v0           #extension:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, dotIndex:I
    if-gez v0, :cond_4

    .line 146
    new-instance p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .end local p0           #context:Landroid/content/Context;
    const/16 v0, 0x1ec

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    .end local v0           #dotIndex:I
    move-object v0, v9

    .end local v9           #stat:Landroid/os/StatFs;
    .local v0, stat:Landroid/os/StatFs;
    move-object v1, p0

    move-object p0, p1

    .end local p1           #base:Ljava/io/File;
    .local p0, base:Ljava/io/File;
    move-object p1, v3

    .end local v3           #filename:Ljava/lang/String;
    .local p1, filename:Ljava/lang/String;
    goto :goto_2

    .line 148
    .local v0, dotIndex:I
    .restart local v3       #filename:Ljava/lang/String;
    .restart local v9       #stat:Landroid/os/StatFs;
    .local p0, context:Landroid/content/Context;
    .local p1, base:Ljava/io/File;
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, extension:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 151
    .end local v3           #filename:Ljava/lang/String;
    .local v0, filename:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #filename:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 153
    .local v8, filename:Ljava/lang/String;
    invoke-static {v8, v2}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->chooseUniquefilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, fullfilename:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->safeCanonicalPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 157
    new-instance p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .end local p0           #context:Landroid/content/Context;
    const/16 v0, 0x1ec

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    move-object v0, v9

    .end local v9           #stat:Landroid/os/StatFs;
    .local v0, stat:Landroid/os/StatFs;
    move-object v1, p0

    move-object p0, p1

    .end local p1           #base:Ljava/io/File;
    .local p0, base:Ljava/io/File;
    move-object p1, v8

    .end local v8           #filename:Ljava/lang/String;
    .local p1, filename:Ljava/lang/String;
    goto/16 :goto_2

    .line 161
    .end local v0           #stat:Landroid/os/StatFs;
    .restart local v8       #filename:Ljava/lang/String;
    .restart local v9       #stat:Landroid/os/StatFs;
    .local p0, context:Landroid/content/Context;
    .local p1, base:Ljava/io/File;
    :cond_5
    if-eqz v3, :cond_7

    .line 163
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 164
    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 166
    .local v0, index:I
    if-lez v0, :cond_6

    .line 167
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, displayName:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    .end local v2           #extension:Ljava/lang/String;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v2, updateValues:Landroid/content/ContentValues;
    const-string v6, "hint"

    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v2, v0, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    .end local v0           #displayName:Ljava/lang/String;
    .end local v2           #updateValues:Landroid/content/ContentValues;
    :cond_6
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v9

    .end local v9           #stat:Landroid/os/StatFs;
    .local v0, stat:Landroid/os/StatFs;
    move-object p0, p1

    .end local p1           #base:Ljava/io/File;
    .local p0, base:Ljava/io/File;
    move-object v1, v2

    move-object p1, v8

    .end local v8           #filename:Ljava/lang/String;
    .local p1, filename:Ljava/lang/String;
    goto/16 :goto_2

    .line 176
    .end local v0           #stat:Landroid/os/StatFs;
    .end local p0           #base:Ljava/io/File;
    .restart local v8       #filename:Ljava/lang/String;
    .restart local v9       #stat:Landroid/os/StatFs;
    .local p1, base:Ljava/io/File;
    :catch_0
    move-exception p0

    .line 178
    .local p0, e:Ljava/io/IOException;
    new-instance p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .end local p0           #e:Ljava/io/IOException;
    const/16 v0, 0x1ec

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    move-object v0, v9

    .end local v9           #stat:Landroid/os/StatFs;
    .restart local v0       #stat:Landroid/os/StatFs;
    move-object v1, p0

    move-object p0, p1

    .end local p1           #base:Ljava/io/File;
    .local p0, base:Ljava/io/File;
    move-object p1, v8

    .end local v8           #filename:Ljava/lang/String;
    .local p1, filename:Ljava/lang/String;
    goto/16 :goto_2

    .line 181
    .end local v0           #stat:Landroid/os/StatFs;
    .local v2, extension:Ljava/lang/String;
    .restart local v8       #filename:Ljava/lang/String;
    .restart local v9       #stat:Landroid/os/StatFs;
    .local p0, context:Landroid/content/Context;
    .local p1, base:Ljava/io/File;
    :cond_7
    new-instance p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .end local p0           #context:Landroid/content/Context;
    const/16 v0, 0x1ec

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    move-object v0, v9

    .end local v9           #stat:Landroid/os/StatFs;
    .restart local v0       #stat:Landroid/os/StatFs;
    move-object v1, p0

    move-object p0, p1

    .end local p1           #base:Ljava/io/File;
    .local p0, base:Ljava/io/File;
    move-object p1, v8

    .end local v8           #filename:Ljava/lang/String;
    .local p1, filename:Ljava/lang/String;
    goto/16 :goto_2

    .end local v2           #extension:Ljava/lang/String;
    .end local v3           #fullfilename:Ljava/lang/String;
    .end local v4           #length:J
    .local v0, metadataCursor:Landroid/database/Cursor;
    .restart local v6       #filename:Ljava/lang/String;
    .restart local v7       #length:J
    .local p0, context:Landroid/content/Context;
    .local p1, hint:Ljava/lang/String;
    :cond_8
    move-wide v4, v7

    .end local v7           #length:J
    .restart local v4       #length:J
    goto/16 :goto_0

    .end local v4           #length:J
    .restart local v7       #length:J
    :cond_9
    move-wide v4, v7

    .end local v7           #length:J
    .restart local v4       #length:J
    move-object v0, p1

    .end local p1           #hint:Ljava/lang/String;
    .local v0, hint:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private static safeCanonicalPath(Ljava/lang/String;)Z
    .locals 6
    .parameter "uniqueFileName"

    .prologue
    const/4 v5, 0x0

    .line 188
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, receiveFile:Ljava/io/File;
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/bluetooth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    .line 193
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, canonicalPath:Ljava/lang/String;
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 203
    .end local v0           #canonicalPath:Ljava/lang/String;
    .end local v2           #receiveFile:Ljava/io/File;
    :goto_0
    return v3

    .line 200
    .restart local v0       #canonicalPath:Ljava/lang/String;
    .restart local v2       #receiveFile:Ljava/io/File;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 201
    .end local v0           #canonicalPath:Ljava/lang/String;
    .end local v2           #receiveFile:Ljava/io/File;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, ioe:Ljava/io/IOException;
    move v3, v5

    .line 203
    goto :goto_0
.end method
