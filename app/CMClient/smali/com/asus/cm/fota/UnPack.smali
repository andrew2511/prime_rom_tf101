.class public Lcom/asus/cm/fota/UnPack;
.super Ljava/lang/Object;
.source "UnPack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/fota/UnPack$ResultCode;
    }
.end annotation


# static fields
.field private static final FSFILENAME:Ljava/lang/String; = "/data/dm/fs"

.field private static final FWFILENAME:Ljava/lang/String; = "/data/dm/fw"

.field private static final FWPATH:Ljava/lang/String; = "/data/dm/"

.field private static final TAG:Ljava/lang/String; = "UnPack"

.field private static final UAFILENAME:Ljava/lang/String; = "/data/dm/ua"


# instance fields
.field mHeader:Lcom/asus/cm/fota/Header;

.field private mIsIncludeFS:Z

.field private mIsIncludeFW:Z

.field private mIsIncludeUA:Z

.field misReadFromFile:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/asus/cm/fota/UnPack;->misReadFromFile:Z

    .line 38
    iput-boolean v0, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFS:Z

    .line 39
    iput-boolean v0, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFW:Z

    .line 40
    iput-boolean v0, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeUA:Z

    .line 42
    return-void
.end method

.method private static deleteFile(Ljava/io/File;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 183
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 184
    :cond_0
    return-void
.end method

.method private static deleteFile(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 179
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/asus/cm/fota/UnPack;->deleteFile(Ljava/io/File;)V

    .line 180
    return-void
.end method

.method public static deleteUpdates()V
    .locals 7

    .prologue
    .line 223
    const-string v5, "UnPack"

    const-string v6, "Delete all Update Files."

    invoke-static {v5, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/dm/"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, dmDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 228
    .local v2, f:Ljava/io/File;
    invoke-static {v2}, Lcom/asus/cm/fota/UnPack;->deleteFile(Ljava/io/File;)V

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 235
    :cond_1
    return-void
.end method

.method private writeToDeltaFile(Ljava/io/FileInputStream;Ljava/lang/String;I)[B
    .locals 11
    .parameter "fis"
    .parameter "file"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x400

    const/4 v9, 0x0

    .line 73
    if-gtz p3, :cond_0

    const/4 v6, 0x0

    .line 91
    :goto_0
    return-object v6

    .line 75
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v5, -0x1

    .line 77
    .local v5, l:I
    const/4 v3, 0x0

    .line 78
    .local v3, idx:I
    new-array v0, v10, [B

    .line 80
    .local v0, buffer:[B
    const-string v6, "HmacSHA1"

    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 81
    .local v2, hmacSha1:Ljavax/crypto/Mac;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v6, Lcom/asus/cm/fota/Common;->KEY:[B

    sget-object v7, Lcom/asus/cm/fota/Common;->KEY:[B

    array-length v7, v7

    invoke-virtual {v2}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v6, v9, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 82
    .local v4, key:Ljava/security/Key;
    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 84
    :cond_1
    sub-int v6, p3, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p1, v0, v9, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 85
    invoke-virtual {v2, v0, v9, v5}, Ljavax/crypto/Mac;->update([BII)V

    .line 86
    invoke-virtual {v1, v0, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 87
    add-int/2addr v3, v5

    .line 88
    if-lt v3, p3, :cond_1

    .line 90
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 91
    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public do_unpack(Ljava/lang/String;)Lcom/asus/cm/fota/UnPack$ResultCode;
    .locals 4
    .parameter "path"

    .prologue
    .line 188
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/asus/cm/fota/UnPack;->readAllFromFile(Ljava/lang/String;)Lcom/asus/cm/fota/UnPack$ResultCode;

    move-result-object v1

    .line 190
    .local v1, ret:Lcom/asus/cm/fota/UnPack$ResultCode;
    sget-object v2, Lcom/asus/cm/fota/UnPack$ResultCode;->SUCCESS:Lcom/asus/cm/fota/UnPack$ResultCode;
    :try_end_0
    .catch Lcom/asus/cm/exception/PathNotCreateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v2, :cond_0

    move-object v2, v1

    .line 199
    .end local v1           #ret:Lcom/asus/cm/fota/UnPack$ResultCode;
    :goto_0
    return-object v2

    .line 193
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 194
    .local v0, e:Lcom/asus/cm/exception/PathNotCreateException;
    const-string v2, "UnPack"

    const-string v3, "Path not create."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v2, Lcom/asus/cm/fota/UnPack$ResultCode;->PATH_NOT_CREATE:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto :goto_0

    .line 197
    .end local v0           #e:Lcom/asus/cm/exception/PathNotCreateException;
    .restart local v1       #ret:Lcom/asus/cm/fota/UnPack$ResultCode;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/asus/cm/fota/UnPack;->misReadFromFile:Z

    .line 199
    sget-object v2, Lcom/asus/cm/fota/UnPack$ResultCode;->SUCCESS:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto :goto_0
.end method

.method public isIncludeFS()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFS:Z

    return v0
.end method

.method public isIncludeFW()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFW:Z

    return v0
.end method

.method public isIncludeUA()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeUA:Z

    return v0
.end method

.method readAllFromFile(Ljava/lang/String;)Lcom/asus/cm/fota/UnPack$ResultCode;
    .locals 13
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/cm/exception/PathNotCreateException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 97
    const/4 v8, 0x0

    .local v8, ua:[B
    const/4 v4, 0x0

    .local v4, fs:[B
    const/4 v5, 0x0

    .line 98
    .local v5, fw:[B
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->SUCCESS:Lcom/asus/cm/fota/UnPack$ResultCode;

    .line 101
    .local v7, ret:Lcom/asus/cm/fota/UnPack$ResultCode;
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/dm/"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Lcom/asus/cm/exception/PathNotCreateException;

    invoke-direct {v9}, Lcom/asus/cm/exception/PathNotCreateException;-><init>()V

    throw v9

    .line 105
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 107
    const-string v9, "UnPack"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v9, Lcom/asus/cm/fota/UnPack$ResultCode;->DELTA_FILE_NOT_FOUND:Lcom/asus/cm/fota/UnPack$ResultCode;

    .line 176
    :goto_0
    return-object v9

    .line 114
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 116
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 117
    .local v6, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/asus/cm/fota/Header;

    iput-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    .line 118
    const-string v9, "UnPack"

    iget-object v10, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    invoke-virtual {v10}, Lcom/asus/cm/fota/Header;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget v9, v9, Lcom/asus/cm/fota/Header;->ua_length:I

    if-lez v9, :cond_2

    .line 121
    const-string v9, "UnPack"

    const-string v10, "write ua"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v9, "/data/dm/ua"

    iget-object v10, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget v10, v10, Lcom/asus/cm/fota/Header;->ua_length:I

    invoke-direct {p0, v3, v9, v10}, Lcom/asus/cm/fota/UnPack;->writeToDeltaFile(Ljava/io/FileInputStream;Ljava/lang/String;I)[B

    move-result-object v8

    .line 123
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeUA:Z

    .line 125
    :cond_2
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget v9, v9, Lcom/asus/cm/fota/Header;->fs_length:I

    if-lez v9, :cond_3

    .line 126
    const-string v9, "UnPack"

    const-string v10, "write fs"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v9, "/data/dm/fs"

    iget-object v10, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget v10, v10, Lcom/asus/cm/fota/Header;->fs_length:I

    invoke-direct {p0, v3, v9, v10}, Lcom/asus/cm/fota/UnPack;->writeToDeltaFile(Ljava/io/FileInputStream;Ljava/lang/String;I)[B

    move-result-object v4

    .line 128
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFS:Z

    .line 130
    :cond_3
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget v9, v9, Lcom/asus/cm/fota/Header;->fw_length:I

    if-lez v9, :cond_4

    .line 131
    const-string v9, "UnPack"

    const-string v10, "write fw"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v9, "/data/dm/fw"

    iget-object v10, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget v10, v10, Lcom/asus/cm/fota/Header;->fw_length:I

    invoke-direct {p0, v3, v9, v10}, Lcom/asus/cm/fota/UnPack;->writeToDeltaFile(Ljava/io/FileInputStream;Ljava/lang/String;I)[B

    move-result-object v5

    .line 133
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFW:Z

    .line 137
    :cond_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4

    .line 150
    if-nez v8, :cond_5

    if-nez v4, :cond_5

    if-eqz v5, :cond_27

    .line 151
    :cond_5
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->ua_sig:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_28

    .line 152
    const-string v9, "UnPack"

    const-string v10, "ua sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->UA_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    .line 169
    :cond_6
    :goto_1
    sget-object v9, Lcom/asus/cm/fota/UnPack$ResultCode;->SUCCESS:Lcom/asus/cm/fota/UnPack$ResultCode;

    if-eq v7, v9, :cond_7

    .line 170
    const-string v9, "UnPack"

    const-string v10, "delete all files"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/asus/cm/fota/UnPack;->deleteUpdates()V

    .line 172
    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeUA:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFW:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFS:Z

    .line 174
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    :cond_7
    :goto_2
    invoke-static {v2}, Lcom/asus/cm/fota/UnPack;->deleteFile(Ljava/io/File;)V

    move-object v9, v7

    .line 176
    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 140
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    if-nez v8, :cond_8

    if-nez v4, :cond_8

    if-eqz v5, :cond_18

    .line 151
    :cond_8
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->ua_sig:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_19

    .line 152
    const-string v9, "UnPack"

    const-string v10, "ua sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->UA_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    .line 169
    :cond_9
    :goto_3
    sget-object v9, Lcom/asus/cm/fota/UnPack$ResultCode;->SUCCESS:Lcom/asus/cm/fota/UnPack$ResultCode;

    if-eq v7, v9, :cond_7

    .line 170
    const-string v9, "UnPack"

    const-string v10, "delete all files"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/asus/cm/fota/UnPack;->deleteUpdates()V

    .line 172
    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeUA:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFW:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFS:Z

    goto :goto_2

    .line 141
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 142
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    if-nez v8, :cond_a

    if-nez v4, :cond_a

    if-eqz v5, :cond_1b

    .line 151
    :cond_a
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->ua_sig:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 152
    const-string v9, "UnPack"

    const-string v10, "ua sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->UA_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    .line 169
    :cond_b
    :goto_4
    sget-object v9, Lcom/asus/cm/fota/UnPack$ResultCode;->SUCCESS:Lcom/asus/cm/fota/UnPack$ResultCode;

    if-eq v7, v9, :cond_7

    .line 170
    const-string v9, "UnPack"

    const-string v10, "delete all files"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/asus/cm/fota/UnPack;->deleteUpdates()V

    .line 172
    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeUA:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFW:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFS:Z

    goto :goto_2

    .line 143
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    move-object v1, v9

    .line 144
    .local v1, e:Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    if-nez v8, :cond_c

    if-nez v4, :cond_c

    if-eqz v5, :cond_1e

    .line 151
    :cond_c
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->ua_sig:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_1f

    .line 152
    const-string v9, "UnPack"

    const-string v10, "ua sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->UA_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    .line 169
    :cond_d
    :goto_5
    sget-object v9, Lcom/asus/cm/fota/UnPack$ResultCode;->SUCCESS:Lcom/asus/cm/fota/UnPack$ResultCode;

    if-eq v7, v9, :cond_7

    .line 170
    const-string v9, "UnPack"

    const-string v10, "delete all files"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/asus/cm/fota/UnPack;->deleteUpdates()V

    .line 172
    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeUA:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFW:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFS:Z

    goto/16 :goto_2

    .line 145
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v9

    move-object v1, v9

    .line 146
    .local v1, e:Ljava/security/InvalidKeyException;
    :try_start_4
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    if-nez v8, :cond_e

    if-nez v4, :cond_e

    if-eqz v5, :cond_21

    .line 151
    :cond_e
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->ua_sig:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_22

    .line 152
    const-string v9, "UnPack"

    const-string v10, "ua sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->UA_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    .line 169
    :cond_f
    :goto_6
    sget-object v9, Lcom/asus/cm/fota/UnPack$ResultCode;->SUCCESS:Lcom/asus/cm/fota/UnPack$ResultCode;

    if-eq v7, v9, :cond_7

    .line 170
    const-string v9, "UnPack"

    const-string v10, "delete all files"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/asus/cm/fota/UnPack;->deleteUpdates()V

    .line 172
    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeUA:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFW:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFS:Z

    goto/16 :goto_2

    .line 147
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v9

    move-object v1, v9

    .line 148
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_5
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    if-nez v8, :cond_10

    if-nez v4, :cond_10

    if-eqz v5, :cond_24

    .line 151
    :cond_10
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->ua_sig:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_25

    .line 152
    const-string v9, "UnPack"

    const-string v10, "ua sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->UA_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    .line 169
    :cond_11
    :goto_7
    sget-object v9, Lcom/asus/cm/fota/UnPack$ResultCode;->SUCCESS:Lcom/asus/cm/fota/UnPack$ResultCode;

    if-eq v7, v9, :cond_7

    .line 170
    const-string v9, "UnPack"

    const-string v10, "delete all files"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/asus/cm/fota/UnPack;->deleteUpdates()V

    .line 172
    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeUA:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFW:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFS:Z

    goto/16 :goto_2

    .line 150
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v9

    if-nez v8, :cond_12

    if-nez v4, :cond_12

    if-eqz v5, :cond_15

    .line 151
    :cond_12
    iget-object v10, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v10, v10, Lcom/asus/cm/fota/Header;->ua_sig:[B

    invoke-static {v8, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_16

    .line 152
    const-string v10, "UnPack"

    const-string v11, "ua sig error;"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->UA_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    .line 169
    :cond_13
    :goto_8
    sget-object v10, Lcom/asus/cm/fota/UnPack$ResultCode;->SUCCESS:Lcom/asus/cm/fota/UnPack$ResultCode;

    if-eq v7, v10, :cond_14

    .line 170
    const-string v10, "UnPack"

    const-string v11, "delete all files"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/asus/cm/fota/UnPack;->deleteUpdates()V

    .line 172
    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeUA:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFW:Z

    iput-boolean v12, p0, Lcom/asus/cm/fota/UnPack;->mIsIncludeFS:Z

    .line 174
    :cond_14
    invoke-static {v2}, Lcom/asus/cm/fota/UnPack;->deleteFile(Ljava/io/File;)V

    .line 150
    throw v9

    .line 165
    :cond_15
    const-string v10, "UnPack"

    const-string v11, "no file in update package;"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->NO_FILE_IN_UPDATE_PACKAGE:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto :goto_8

    .line 155
    :cond_16
    iget-object v10, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v10, v10, Lcom/asus/cm/fota/Header;->fs_sig:[B

    invoke-static {v4, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_17

    .line 156
    const-string v10, "UnPack"

    const-string v11, "fs sig error;"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FS_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto :goto_8

    .line 159
    :cond_17
    iget-object v10, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v10, v10, Lcom/asus/cm/fota/Header;->fw_sig:[B

    invoke-static {v5, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_13

    .line 160
    const-string v10, "UnPack"

    const-string v11, "fw sig error;"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FW_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto :goto_8

    .line 165
    .local v1, e:Ljava/io/FileNotFoundException;
    :cond_18
    const-string v9, "UnPack"

    const-string v10, "no file in update package;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->NO_FILE_IN_UPDATE_PACKAGE:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_3

    .line 155
    :cond_19
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->fs_sig:[B

    invoke-static {v4, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 156
    const-string v9, "UnPack"

    const-string v10, "fs sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FS_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_3

    .line 159
    :cond_1a
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->fw_sig:[B

    invoke-static {v5, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_9

    .line 160
    const-string v9, "UnPack"

    const-string v10, "fw sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FW_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_3

    .line 165
    .local v1, e:Ljava/io/IOException;
    :cond_1b
    const-string v9, "UnPack"

    const-string v10, "no file in update package;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->NO_FILE_IN_UPDATE_PACKAGE:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_4

    .line 155
    :cond_1c
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->fs_sig:[B

    invoke-static {v4, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 156
    const-string v9, "UnPack"

    const-string v10, "fs sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FS_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_4

    .line 159
    :cond_1d
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->fw_sig:[B

    invoke-static {v5, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_b

    .line 160
    const-string v9, "UnPack"

    const-string v10, "fw sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FW_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_4

    .line 165
    .local v1, e:Ljava/lang/ClassNotFoundException;
    :cond_1e
    const-string v9, "UnPack"

    const-string v10, "no file in update package;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->NO_FILE_IN_UPDATE_PACKAGE:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_5

    .line 155
    :cond_1f
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->fs_sig:[B

    invoke-static {v4, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_20

    .line 156
    const-string v9, "UnPack"

    const-string v10, "fs sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FS_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_5

    .line 159
    :cond_20
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->fw_sig:[B

    invoke-static {v5, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_d

    .line 160
    const-string v9, "UnPack"

    const-string v10, "fw sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FW_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_5

    .line 165
    .local v1, e:Ljava/security/InvalidKeyException;
    :cond_21
    const-string v9, "UnPack"

    const-string v10, "no file in update package;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->NO_FILE_IN_UPDATE_PACKAGE:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_6

    .line 155
    :cond_22
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->fs_sig:[B

    invoke-static {v4, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_23

    .line 156
    const-string v9, "UnPack"

    const-string v10, "fs sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FS_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_6

    .line 159
    :cond_23
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->fw_sig:[B

    invoke-static {v5, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_f

    .line 160
    const-string v9, "UnPack"

    const-string v10, "fw sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FW_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_6

    .line 165
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :cond_24
    const-string v9, "UnPack"

    const-string v10, "no file in update package;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->NO_FILE_IN_UPDATE_PACKAGE:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_7

    .line 155
    :cond_25
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->fs_sig:[B

    invoke-static {v4, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_26

    .line 156
    const-string v9, "UnPack"

    const-string v10, "fs sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FS_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_7

    .line 159
    :cond_26
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->fw_sig:[B

    invoke-static {v5, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_11

    .line 160
    const-string v9, "UnPack"

    const-string v10, "fw sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FW_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_7

    .line 165
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :cond_27
    const-string v9, "UnPack"

    const-string v10, "no file in update package;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->NO_FILE_IN_UPDATE_PACKAGE:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_1

    .line 155
    :cond_28
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->fs_sig:[B

    invoke-static {v4, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_29

    .line 156
    const-string v9, "UnPack"

    const-string v10, "fs sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FS_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_1

    .line 159
    :cond_29
    iget-object v9, p0, Lcom/asus/cm/fota/UnPack;->mHeader:Lcom/asus/cm/fota/Header;

    iget-object v9, v9, Lcom/asus/cm/fota/Header;->fw_sig:[B

    invoke-static {v5, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_6

    .line 160
    const-string v9, "UnPack"

    const-string v10, "fw sig error;"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v7, Lcom/asus/cm/fota/UnPack$ResultCode;->FW_SIGNATURE_ERROR:Lcom/asus/cm/fota/UnPack$ResultCode;

    goto/16 :goto_1
.end method

.method public readPriority(Ljava/lang/String;)Lcom/asus/cm/fota/Common$priority;
    .locals 6
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v3, 0x0

    .line 206
    .local v3, ois:Ljava/io/ObjectInputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, f:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .local v4, ois:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/cm/fota/Header;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 216
    .local v2, h:Lcom/asus/cm/fota/Header;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 219
    :cond_0
    iget-object v5, v2, Lcom/asus/cm/fota/Header;->fw_priority:Lcom/asus/cm/fota/Common$priority;

    return-object v5

    .line 211
    .end local v2           #h:Lcom/asus/cm/fota/Header;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 212
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    :cond_1
    throw v5

    .line 213
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 214
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 213
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 211
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    goto :goto_0
.end method
