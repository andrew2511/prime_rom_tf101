.class public Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;
.super Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;
.source "AndroidPersistentStore.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;


# instance fields
.field private context:Landroid/content/Context;

.field private final fileLockNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    .line 53
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private static makeFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DATA_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unMakeFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "filename"

    .prologue
    .line 68
    const-string v0, "DATA_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 69
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public deleteAllBlocks(Ljava/lang/String;)V
    .registers 6
    .parameter "namePrefix"

    .prologue
    .line 105
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    if-nez v2, :cond_5

    .line 123
    :cond_4
    return-void

    .line 109
    :cond_5
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, list:[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 115
    aget-object v2, v1, v0

    if-nez v2, :cond_18

    .line 114
    :cond_15
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 117
    :cond_18
    aget-object v2, v1, v0

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 118
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_15
.end method

.method public deleteBlock(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    .line 96
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listBlocks(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .parameter "namePrefix"

    .prologue
    const/4 v8, 0x0

    .line 226
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, list:[Ljava/lang/String;
    array-length v7, v3

    new-array v6, v7, [Ljava/lang/String;

    .line 228
    .local v6, temp:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 229
    .local v1, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    array-length v7, v3

    if-ge v0, v7, :cond_25

    .line 230
    aget-object v7, v3, v0

    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->unMakeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, realName:Ljava/lang/String;
    if-eqz v5, :cond_22

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 232
    add-int/lit8 v2, v1, 0x1

    .end local v1           #j:I
    .local v2, j:I
    aput-object v5, v6, v1

    move v1, v2

    .line 229
    .end local v2           #j:I
    .restart local v1       #j:I
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 235
    .end local v5           #realName:Ljava/lang/String;
    :cond_25
    new-array v4, v1, [Ljava/lang/String;

    .line 236
    .local v4, names:[Ljava/lang/String;
    invoke-static {v6, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    return-object v4
.end method

.method public readBlock(Ljava/lang/String;)[B
    .registers 9
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 203
    :try_start_1
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 205
    .local v2, fis:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 206
    .local v3, length:I
    new-array v0, v3, [B

    .line 207
    .local v0, data:[B
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-ge v4, v3, :cond_18

    .line 210
    :cond_18
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_21

    move-object v4, v0

    .line 217
    .end local v0           #data:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #length:I
    :goto_1c
    return-object v4

    .line 212
    :catch_1d
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/io/FileNotFoundException;
    move-object v4, v6

    .line 214
    goto :goto_1c

    .line 215
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_21
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/io/IOException;
    move-object v4, v6

    .line 217
    goto :goto_1c
.end method

.method public writeBlock([BLjava/lang/String;)I
    .registers 5
    .parameter "data"
    .parameter "name"

    .prologue
    .line 169
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->writeBlockX([BLjava/lang/String;)I
    :try_end_3
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 171
    :goto_4
    return v1

    .line 170
    :catch_5
    move-exception v0

    .line 171
    .local v0, e:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;->getType()I

    move-result v1

    goto :goto_4
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .registers 9
    .parameter "data"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 137
    if-nez p1, :cond_6

    .line 138
    const/4 v2, 0x0

    :try_start_4
    new-array p1, v2, [B

    .line 140
    :cond_6
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 142
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 143
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 145
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x1000
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_1c} :catch_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_2d

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x1000

    return v2

    .line 146
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 147
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 149
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 150
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method
