.class public Lcom/asus/dm/fota/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# instance fields
.field mFileFs:Ljava/io/File;

.field mFileFsPath:Ljava/lang/String;

.field mFileFw:Ljava/io/File;

.field mFileFwPath:Ljava/lang/String;

.field mFileOutputName:Ljava/lang/String;

.field mFileUa:Ljava/io/File;

.field mFileUaPath:Ljava/lang/String;

.field private mForce:Ljava/lang/String;

.field private mFromVersion:Ljava/lang/String;

.field mHeader:Lcom/asus/dm/fota/Header;

.field private mSku:Ljava/lang/String;

.field private mToVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/asus/dm/fota/Header;

    invoke-direct {v0}, Lcom/asus/dm/fota/Header;-><init>()V

    iput-object v0, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    .line 37
    const-string v0, "updatepack"

    iput-object v0, p0, Lcom/asus/dm/fota/Pack;->mFileOutputName:Ljava/lang/String;

    return-void
.end method

.method private fillHeader()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 152
    iget-object v3, p0, Lcom/asus/dm/fota/Pack;->mFileUaPath:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 153
    const-string v3, "ua"

    iput-object v3, p0, Lcom/asus/dm/fota/Pack;->mFileUaPath:Ljava/lang/String;

    .line 155
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/asus/dm/fota/Pack;->mFileUaPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/asus/dm/fota/Pack;->mFileUa:Ljava/io/File;

    .line 156
    iget-object v3, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget-object v4, p0, Lcom/asus/dm/fota/Pack;->mFileUa:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/asus/dm/fota/Header;->ua_length:I

    .line 158
    iget-object v3, p0, Lcom/asus/dm/fota/Pack;->mFileFsPath:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 159
    const-string v3, "fs"

    iput-object v3, p0, Lcom/asus/dm/fota/Pack;->mFileFsPath:Ljava/lang/String;

    .line 161
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/asus/dm/fota/Pack;->mFileFsPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/asus/dm/fota/Pack;->mFileFs:Ljava/io/File;

    .line 162
    iget-object v3, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget-object v4, p0, Lcom/asus/dm/fota/Pack;->mFileFs:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/asus/dm/fota/Header;->fs_length:I

    .line 164
    iget-object v3, p0, Lcom/asus/dm/fota/Pack;->mFileFwPath:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 165
    const-string v3, "fw"

    iput-object v3, p0, Lcom/asus/dm/fota/Pack;->mFileFwPath:Ljava/lang/String;

    .line 167
    :cond_2
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/asus/dm/fota/Pack;->mFileFwPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/asus/dm/fota/Pack;->mFileFw:Ljava/io/File;

    .line 168
    iget-object v3, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget-object v4, p0, Lcom/asus/dm/fota/Pack;->mFileFw:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/asus/dm/fota/Header;->fw_length:I

    .line 170
    iget-object v3, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget-object v4, p0, Lcom/asus/dm/fota/Pack;->mFromVersion:Ljava/lang/String;

    iput-object v4, v3, Lcom/asus/dm/fota/Header;->mFromVersion:Ljava/lang/String;

    .line 171
    iget-object v3, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget-object v4, p0, Lcom/asus/dm/fota/Pack;->mToVersion:Ljava/lang/String;

    iput-object v4, v3, Lcom/asus/dm/fota/Header;->mToVersion:Ljava/lang/String;

    .line 172
    iget-object v3, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget-object v4, p0, Lcom/asus/dm/fota/Pack;->mSku:Ljava/lang/String;

    iput-object v4, v3, Lcom/asus/dm/fota/Header;->mSku:Ljava/lang/String;

    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, force:Z
    iget-object v3, p0, Lcom/asus/dm/fota/Pack;->mForce:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/asus/dm/fota/Pack;->isStringEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 176
    :try_start_0
    iget-object v3, p0, Lcom/asus/dm/fota/Pack;->mForce:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 177
    .local v2, forcevalue:I
    if-ne v2, v6, :cond_4

    .line 178
    const/4 v1, 0x1

    .line 190
    .end local v2           #forcevalue:I
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iput-boolean v1, v3, Lcom/asus/dm/fota/Header;->mForceUpdate:Z

    .line 191
    return-void

    .line 179
    .restart local v2       #forcevalue:I
    :cond_4
    if-le v2, v6, :cond_5

    .line 180
    const/4 v1, 0x1

    .line 181
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "force > 1 set to true "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 185
    .end local v2           #forcevalue:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 186
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set forceupdate to false because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #forcevalue:I
    :cond_5
    if-gez v2, :cond_3

    .line 183
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "force < 0 set to false "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 264
    new-instance v1, Lcom/asus/dm/fota/Pack;

    invoke-direct {v1}, Lcom/asus/dm/fota/Pack;-><init>()V

    .line 266
    .local v1, p:Lcom/asus/dm/fota/Pack;
    invoke-virtual {v1}, Lcom/asus/dm/fota/Pack;->print_banner()V

    .line 268
    invoke-virtual {v1, p0}, Lcom/asus/dm/fota/Pack;->checkArgs([Ljava/lang/String;)V

    .line 270
    invoke-direct {v1}, Lcom/asus/dm/fota/Pack;->fillHeader()V

    .line 272
    invoke-virtual {v1}, Lcom/asus/dm/fota/Pack;->isNoFileTOPack()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/asus/dm/fota/Pack;->isNoRequiredField()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "usage: fotapacktool fv=xx tv=xx  sku=xx [force={0,1}] [-p priority] [ua=xx] [fw=xx] [fs=xx] [-o outputfn] "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void

    .line 278
    :cond_1
    :try_start_0
    invoke-direct {v1}, Lcom/asus/dm/fota/Pack;->writeAllToFile()I

    move-result v2

    if-lez v2, :cond_2

    .line 279
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "pack ok"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 285
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 281
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "nothing to pack."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private writeAllToFile()I
    .locals 15

    .prologue
    .line 85
    const/4 v9, -0x1

    .line 86
    .local v9, length:I
    const/4 v8, 0x0

    .line 87
    .local v8, idx:I
    const/16 v12, 0x400

    new-array v0, v12, [B

    .line 89
    .local v0, buffer:[B
    const/4 v6, 0x0

    .line 91
    .local v6, icount:I
    const-string v11, "aotemppp"

    .line 92
    .local v11, tmpFileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, fileFake:Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 96
    .local v5, fosFake:Ljava/io/FileOutputStream;
    iget-object v12, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget v12, v12, Lcom/asus/dm/fota/Header;->ua_length:I

    if-lez v12, :cond_1

    .line 97
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "read ua"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 98
    iget-object v12, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget-object v13, p0, Lcom/asus/dm/fota/Pack;->mFileUa:Ljava/io/File;

    invoke-direct {p0, v5, v13}, Lcom/asus/dm/fota/Pack;->writeToUpdateFile(Ljava/io/FileOutputStream;Ljava/io/File;)[B

    move-result-object v13

    iput-object v13, v12, Lcom/asus/dm/fota/Header;->ua_sig:[B

    .line 102
    :goto_0
    iget-object v12, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget v12, v12, Lcom/asus/dm/fota/Header;->fs_length:I

    if-lez v12, :cond_2

    .line 103
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "read fs"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 104
    iget-object v12, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget-object v13, p0, Lcom/asus/dm/fota/Pack;->mFileFs:Ljava/io/File;

    invoke-direct {p0, v5, v13}, Lcom/asus/dm/fota/Pack;->writeToUpdateFile(Ljava/io/FileOutputStream;Ljava/io/File;)[B

    move-result-object v13

    iput-object v13, v12, Lcom/asus/dm/fota/Header;->fs_sig:[B

    .line 108
    :goto_1
    iget-object v12, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget v12, v12, Lcom/asus/dm/fota/Header;->fw_length:I

    if-lez v12, :cond_3

    .line 109
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "read fw"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 110
    iget-object v12, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget-object v13, p0, Lcom/asus/dm/fota/Pack;->mFileFw:Ljava/io/File;

    invoke-direct {p0, v5, v13}, Lcom/asus/dm/fota/Pack;->writeToUpdateFile(Ljava/io/FileOutputStream;Ljava/io/File;)[B

    move-result-object v13

    iput-object v13, v12, Lcom/asus/dm/fota/Header;->fw_sig:[B

    .line 114
    :goto_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 116
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 117
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "****************Header Information:****************"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v13, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    invoke-virtual {v13}, Lcom/asus/dm/fota/Header;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "***************************************************"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 123
    .local v3, fisFake:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v12, p0, Lcom/asus/dm/fota/Pack;->mFileOutputName:Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 124
    .local v4, fos:Ljava/io/FileOutputStream;
    new-instance v10, Ljava/io/ObjectOutputStream;

    invoke-direct {v10, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    .local v10, oos:Ljava/io/ObjectOutputStream;
    iget-object v12, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    invoke-virtual {v10, v12}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 126
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Write to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/asus/dm/fota/Pack;->mFileOutputName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    move v7, v6

    .line 127
    .end local v6           #icount:I
    .local v7, icount:I
    :goto_3
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v12, -0x1

    if-eq v9, v12, :cond_4

    .line 128
    const/4 v12, 0x0

    invoke-virtual {v4, v0, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4

    .line 129
    add-int/2addr v8, v9

    .line 130
    add-int/lit8 v6, v7, 0x1

    .end local v7           #icount:I
    .restart local v6       #icount:I
    :try_start_2
    rem-int/lit16 v12, v7, 0x400

    if-nez v12, :cond_0

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v7, v6

    .end local v6           #icount:I
    .restart local v7       #icount:I
    goto :goto_3

    .line 100
    .end local v3           #fisFake:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v7           #icount:I
    .end local v10           #oos:Ljava/io/ObjectOutputStream;
    .restart local v6       #icount:I
    :cond_1
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "ua file not found."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 137
    .end local v5           #fosFake:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v12

    move-object v1, v12

    .line 138
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 148
    :goto_6
    return v8

    .line 106
    .restart local v5       #fosFake:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "fs file not found."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 139
    .end local v5           #fosFake:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    move-object v1, v12

    .line 140
    .local v1, e:Ljava/io/IOException;
    :goto_7
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 146
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v12

    .line 112
    .restart local v5       #fosFake:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_6
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "fw file not found."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 141
    .end local v5           #fosFake:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v12

    move-object v1, v12

    .line 142
    .local v1, e:Ljava/security/InvalidKeyException;
    :goto_9
    :try_start_7
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 132
    .end local v1           #e:Ljava/security/InvalidKeyException;
    .end local v6           #icount:I
    .restart local v3       #fisFake:Ljava/io/FileInputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fosFake:Ljava/io/FileOutputStream;
    .restart local v7       #icount:I
    .restart local v10       #oos:Ljava/io/ObjectOutputStream;
    :cond_4
    :try_start_8
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ljava/io/PrintStream;->println()V

    .line 133
    const-string v12, "000000000000000"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 134
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 135
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_4

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move v6, v7

    .line 147
    .end local v7           #icount:I
    .restart local v6       #icount:I
    goto :goto_6

    .line 143
    .end local v3           #fisFake:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #fosFake:Ljava/io/FileOutputStream;
    .end local v10           #oos:Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v12

    move-object v1, v12

    .line 144
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :goto_a
    :try_start_9
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 146
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v6           #icount:I
    .restart local v3       #fisFake:Ljava/io/FileInputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fosFake:Ljava/io/FileOutputStream;
    .restart local v7       #icount:I
    .restart local v10       #oos:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v12

    move v6, v7

    .end local v7           #icount:I
    .restart local v6       #icount:I
    goto :goto_8

    .line 143
    .end local v6           #icount:I
    .restart local v7       #icount:I
    :catch_4
    move-exception v12

    move-object v1, v12

    move v6, v7

    .end local v7           #icount:I
    .restart local v6       #icount:I
    goto :goto_a

    .line 141
    .end local v6           #icount:I
    .restart local v7       #icount:I
    :catch_5
    move-exception v12

    move-object v1, v12

    move v6, v7

    .end local v7           #icount:I
    .restart local v6       #icount:I
    goto :goto_9

    .line 139
    .end local v6           #icount:I
    .restart local v7       #icount:I
    :catch_6
    move-exception v12

    move-object v1, v12

    move v6, v7

    .end local v7           #icount:I
    .restart local v6       #icount:I
    goto :goto_7

    .line 137
    .end local v6           #icount:I
    .restart local v7       #icount:I
    :catch_7
    move-exception v12

    move-object v1, v12

    move v6, v7

    .end local v7           #icount:I
    .restart local v6       #icount:I
    goto :goto_4
.end method

.method private writeToUpdateFile(Ljava/io/FileOutputStream;Ljava/io/File;)[B
    .locals 12
    .parameter "fos"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 55
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 56
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 57
    .local v7, length:I
    const/4 v5, 0x0

    .line 58
    .local v5, idx:I
    const/4 v3, 0x0

    .line 59
    .local v3, icount:I
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 61
    .local v0, buffer:[B
    const-string v8, "HmacSHA1"

    invoke-static {v8}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 62
    .local v2, hmacSha1:Ljavax/crypto/Mac;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v8, Lcom/asus/dm/fota/Common;->KEY:[B

    sget-object v9, Lcom/asus/dm/fota/Common;->KEY:[B

    array-length v9, v9

    invoke-virtual {v2}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v8, v11, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 63
    .local v6, key:Ljava/security/Key;
    invoke-virtual {v2, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 65
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 66
    invoke-virtual {v2, v0, v11, v7}, Ljavax/crypto/Mac;->update([BII)V

    .line 67
    invoke-virtual {p1, v0, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 68
    add-int/2addr v5, v7

    .line 69
    add-int/lit8 v4, v3, 0x1

    .end local v3           #icount:I
    .local v4, icount:I
    rem-int/lit16 v8, v3, 0x400

    if-nez v8, :cond_1

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #icount:I
    .restart local v3       #icount:I
    goto :goto_0

    .line 71
    :cond_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    .line 72
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 73
    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v8

    return-object v8

    .end local v3           #icount:I
    .restart local v4       #icount:I
    :cond_1
    move v3, v4

    .end local v4           #icount:I
    .restart local v3       #icount:I
    goto :goto_0
.end method


# virtual methods
.method checkArgs([Ljava/lang/String;)V
    .locals 10
    .parameter "args"

    .prologue
    const/4 v9, 0x3

    .line 221
    const/4 v4, 0x0

    .line 222
    .local v4, wantSetPriorityMode:Z
    const/4 v5, 0x0

    .line 224
    .local v5, wantWriteOutputName:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_11

    aget-object v3, v0, v1

    .line 225
    .local v3, s:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 226
    const-string v6, "Pormal"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 227
    :cond_0
    iget-object v6, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    sget-object v7, Lcom/asus/dm/fota/Common$priority;->Normal:Lcom/asus/dm/fota/Common$priority;

    iput-object v7, v6, Lcom/asus/dm/fota/Header;->fw_priority:Lcom/asus/dm/fota/Common$priority;

    .line 233
    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 224
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_2
    const-string v6, "Priority"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 229
    :cond_3
    iget-object v6, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    sget-object v7, Lcom/asus/dm/fota/Common$priority;->Priority:Lcom/asus/dm/fota/Common$priority;

    iput-object v7, v6, Lcom/asus/dm/fota/Header;->fw_priority:Lcom/asus/dm/fota/Common$priority;

    goto :goto_1

    .line 230
    :cond_4
    const-string v6, "Critical"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    :cond_5
    iget-object v6, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    sget-object v7, Lcom/asus/dm/fota/Common$priority;->Critical:Lcom/asus/dm/fota/Common$priority;

    iput-object v7, v6, Lcom/asus/dm/fota/Header;->fw_priority:Lcom/asus/dm/fota/Common$priority;

    goto :goto_1

    .line 234
    :cond_6
    if-eqz v5, :cond_7

    .line 235
    iput-object v3, p0, Lcom/asus/dm/fota/Pack;->mFileOutputName:Ljava/lang/String;

    .line 236
    const/4 v5, 0x0

    goto :goto_2

    .line 237
    :cond_7
    const-string v6, "-p"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 238
    const/4 v4, 0x1

    goto :goto_2

    .line 239
    :cond_8
    const-string v6, "-o"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 240
    const/4 v5, 0x1

    goto :goto_2

    .line 241
    :cond_9
    const-string v6, "ua="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 242
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/dm/fota/Pack;->mFileUaPath:Ljava/lang/String;

    goto :goto_2

    .line 243
    :cond_a
    const-string v6, "fw="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 244
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/dm/fota/Pack;->mFileFwPath:Ljava/lang/String;

    goto :goto_2

    .line 245
    :cond_b
    const-string v6, "fs="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 246
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/dm/fota/Pack;->mFileFsPath:Ljava/lang/String;

    goto :goto_2

    .line 247
    :cond_c
    const-string v6, "fv="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 248
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/dm/fota/Pack;->mFromVersion:Ljava/lang/String;

    goto/16 :goto_2

    .line 249
    :cond_d
    const-string v6, "tv="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 250
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/dm/fota/Pack;->mToVersion:Ljava/lang/String;

    goto/16 :goto_2

    .line 251
    :cond_e
    const-string v6, "sku="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 252
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/dm/fota/Pack;->mSku:Ljava/lang/String;

    goto/16 :goto_2

    .line 253
    :cond_f
    const-string v6, "force="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 254
    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/dm/fota/Pack;->mForce:Ljava/lang/String;

    goto/16 :goto_2

    .line 256
    :cond_10
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignore option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 259
    .end local v3           #s:Ljava/lang/String;
    :cond_11
    return-void
.end method

.method isNoFileTOPack()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget v0, v0, Lcom/asus/dm/fota/Header;->ua_length:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget v0, v0, Lcom/asus/dm/fota/Header;->fs_length:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget v0, v0, Lcom/asus/dm/fota/Header;->fw_length:I

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNoRequiredField()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget-object v0, v0, Lcom/asus/dm/fota/Header;->mFromVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/asus/dm/fota/Pack;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget-object v0, v0, Lcom/asus/dm/fota/Header;->mToVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/asus/dm/fota/Pack;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/dm/fota/Pack;->mHeader:Lcom/asus/dm/fota/Header;

    iget-object v0, v0, Lcom/asus/dm/fota/Header;->mSku:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/asus/dm/fota/Pack;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStringEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 201
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method print_banner()V
    .locals 2

    .prologue
    .line 215
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "====================================================="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    Asus Fota Package Tool: v0.3"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "====================================================="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    return-void
.end method
