.class public Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;
.super Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;
.source "AndroidFixedPersistentStore.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;


# instance fields
.field private baseFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "basePath"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BasePersistentStore;-><init>()V

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    .line 46
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_31

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must already exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_31
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_58

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be writeable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_58
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be readable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_7f
    return-void
.end method

.method private makeFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .parameter "s"

    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "s"

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unMakeFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "filename"

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 78
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public deleteAllBlocks(Ljava/lang/String;)V
    .registers 7
    .parameter "namePrefix"

    .prologue
    .line 113
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 114
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_47

    .line 115
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 116
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_44

    .line 117
    const-string v2, "Fixed_Persistence_Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 121
    :cond_47
    return-void
.end method

.method public deleteBlock(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method protected getPrefix()Ljava/lang/String;
    .registers 4

    .prologue
    .line 242
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    const-string v2, "FIXED_DATA_"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listBlocks(Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .parameter "namePrefix"

    .prologue
    const/4 v9, 0x0

    .line 225
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 226
    .local v0, files:[Ljava/io/File;
    array-length v7, v0

    new-array v6, v7, [Ljava/lang/String;

    .line 227
    .local v6, temp:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 228
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    array-length v7, v0

    if-ge v1, v7, :cond_37

    .line 229
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 230
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->unMakeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, realName:Ljava/lang/String;
    if-eqz v5, :cond_34

    .line 232
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    aput-object v5, v6, v2

    move v2, v3

    .line 228
    .end local v3           #j:I
    .end local v5           #realName:Ljava/lang/String;
    .restart local v2       #j:I
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 236
    :cond_37
    new-array v4, v2, [Ljava/lang/String;

    .line 237
    .local v4, names:[Ljava/lang/String;
    invoke-static {v6, v9, v4, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    return-object v4
.end method

.method public readBlock(Ljava/lang/String;)[B
    .registers 10
    .parameter "name"

    .prologue
    const/4 v7, 0x0

    .line 203
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 204
    .local v2, fis:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 205
    .local v3, length:I
    new-array v0, v3, [B

    .line 206
    .local v0, data:[B
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-ge v4, v3, :cond_2f

    .line 207
    const-string v4, "Fixed_Persistence_Store"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Didn\'t read full file:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_2f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_32} :catch_34
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_32} :catch_54

    move-object v4, v0

    .line 216
    .end local v0           #data:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #length:I
    :goto_33
    return-object v4

    .line 211
    :catch_34
    move-exception v4

    move-object v1, v4

    .line 212
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "Fixed_Persistence_Store"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find file:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 213
    goto :goto_33

    .line 214
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_54
    move-exception v4

    move-object v1, v4

    .line 215
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Fixed_Persistence_Store"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t read file:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 216
    goto :goto_33
.end method

.method public writeBlock([BLjava/lang/String;)I
    .registers 9
    .parameter "data"
    .parameter "name"

    .prologue
    const/4 v5, -0x1

    .line 163
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 164
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 165
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 166
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x1000
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_15} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_3a

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x1000

    .line 172
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_19
    return v2

    .line 167
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 168
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "Fixed_Persistence_Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t write block:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 169
    goto :goto_19

    .line 170
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3a
    move-exception v2

    move-object v0, v2

    .line 171
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Fixed_Persistence_Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t write block:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 172
    goto :goto_19
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .registers 8
    .parameter "data"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 135
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;->makeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 136
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 137
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 139
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x1000
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_15} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_26

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x1000

    return v2

    .line 140
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 141
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 143
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_26
    move-exception v2

    move-object v0, v2

    .line 144
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method
