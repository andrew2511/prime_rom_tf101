.class public Lcom/asus/dm/util/DMUtils;
.super Ljava/lang/Object;
.source "DMUtils.java"


# static fields
.field public static final FOTASTATUS:Ljava/lang/String; = "/cache/recovery/fota_status"

.field private static final TAG:Ljava/lang/String; = "DMUtils"

.field private static mCreateBootmarkInDb:Z

.field private static mDeleteBootmarkInDb:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 7

    .prologue
    .line 224
    new-instance v2, Ljava/io/File;

    const-string v5, "/cache"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 228
    .local v1, childf:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "recovery"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dlpkgfile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 226
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    .end local v1           #childf:Ljava/io/File;
    :cond_1
    return-void
.end method

.method public static createDMTreeFile(Landroid/content/Context;)V
    .locals 5
    .parameter "pContext"

    .prologue
    .line 63
    const-string v3, "tree.xml"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 64
    .local v1, file:Ljava/io/File;
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v2

    .line 66
    .local v2, regMgr:Lcom/asus/dm/DMCRegistryManager;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/asus/dm/DMCRegistryManager;->getCurrentTree()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 68
    :cond_0
    :try_start_0
    const-string v3, "DMUtils"

    const-string v4, "start to write tree.xml"

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "TMO"

    const-string v4, "ro.product.carrier"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    const v3, 0x7f050008

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMUtils;->createDMTreeFile(Landroid/content/Context;I)V

    .line 71
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMCRegistryManager;->setCurrentTree(I)V

    .line 77
    :goto_0
    const-string v3, "DMUtils"

    const-string v4, "finish to write tree.xml"

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_1
    :goto_1
    return-void

    .line 73
    :cond_2
    const v3, 0x7f050001

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMUtils;->createDMTreeFile(Landroid/content/Context;I)V

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMCRegistryManager;->setCurrentTree(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 79
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "DMUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static createDMTreeFile(Landroid/content/Context;I)V
    .locals 8
    .parameter "pContext"
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 88
    .local v3, in:Ljava/io/InputStream;
    new-instance v4, Ljava/io/LineNumberReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 90
    .local v4, lineReader:Ljava/io/LineNumberReader;
    const-string v6, "tree.xml"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 91
    .local v2, fOut:Ljava/io/FileOutputStream;
    const-string v0, ""

    .line 94
    .local v0, content:Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/asus/dm/util/TreeReplacer;->getTreeReplacer(Landroid/content/Context;I)Lcom/asus/dm/util/TreeReplacer;

    move-result-object v5

    .line 95
    .local v5, t:Lcom/asus/dm/util/TreeReplacer;
    :goto_0
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v5, v0}, Lcom/asus/dm/util/TreeReplacer;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Lcom/asus/dm/exception/NoSuchTreeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v5           #t:Lcom/asus/dm/util/TreeReplacer;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 101
    .local v1, e:Lcom/asus/dm/exception/NoSuchTreeException;
    invoke-virtual {v1}, Lcom/asus/dm/exception/NoSuchTreeException;->printStackTrace()V

    .line 104
    .end local v1           #e:Lcom/asus/dm/exception/NoSuchTreeException;
    :cond_0
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->close()V

    .line 105
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 107
    return-void
.end method

.method public static deleteFotaUpgradeStatus()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery/fota_status"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, fstatus:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 175
    :cond_0
    return-void
.end method

.method public static getAllChildURIs(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "pTree"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/asus/dmlib/vdm/VdmTree;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 182
    .local v6, sAry:[Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 185
    :try_start_0
    invoke-interface {p0, p1}, Lcom/asus/dmlib/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, subNode:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 187
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 189
    :cond_0
    if-eqz v6, :cond_1

    .line 190
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 192
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #s:Ljava/lang/String;
    .end local v7           #subNode:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 197
    .local v1, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    .line 202
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_1
    return-object v4
.end method

.method public static getCreateBootmarkInDb()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/asus/dm/util/DMUtils;->mCreateBootmarkInDb:Z

    return v0
.end method

.method public static getDeleteBootmarkInDb()Z
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/asus/dm/util/DMUtils;->mDeleteBootmarkInDb:Z

    return v0
.end method

.method public static isEnoughDiskSpaceToDownload(J)Z
    .locals 10
    .parameter "dlFileSizeInBytes"

    .prologue
    .line 52
    new-instance v6, Landroid/os/StatFs;

    const-string v7, "/cache"

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 53
    .local v6, st:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v2, v7

    .line 54
    .local v2, blkNum:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v4, v7

    .line 55
    .local v4, blkSize:J
    mul-long v0, v2, v4

    .line 56
    .local v0, availableDiskSpace:J
    const-string v7, "DMUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "availableDiskSpace = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dlFileSizeInBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    cmp-long v7, v0, p0

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static readFotaUpgradeStatus(Lcom/asus/dm/DMCRegistryManager;)I
    .locals 13
    .parameter "regMgr"

    .prologue
    .line 128
    const/4 v8, -0x1

    .line 129
    .local v8, ret:I
    new-instance v5, Ljava/io/File;

    const-string v10, "/cache/recovery/fota_status"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v5, fstatus:Ljava/io/File;
    const/4 v3, 0x0

    .line 131
    .local v3, fin:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 132
    .local v6, lineReader:Ljava/io/LineNumberReader;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 134
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 135
    .end local v3           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/LineNumberReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v10}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 137
    .end local v6           #lineReader:Ljava/io/LineNumberReader;
    .local v7, lineReader:Ljava/io/LineNumberReader;
    :try_start_2
    const-string v0, ""

    .line 138
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 140
    .local v9, status:I
    if-lez v9, :cond_0

    .line 141
    move v8, v9

    .line 142
    invoke-virtual {p0, v9}, Lcom/asus/dm/DMCRegistryManager;->setFotaResult(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    .line 153
    .end local v9           #status:I
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/asus/dm/DMStorage;->getDeltaFullName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, deltaF:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 155
    const-string v10, "DMUtils"

    const-string v11, "-------------- delete deltaF -----------------"

    invoke-static {v10, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 158
    :cond_1
    invoke-static {}, Lcom/asus/dm/util/DMUtils;->deleteFotaUpgradeStatus()V

    .line 160
    :try_start_3
    invoke-virtual {v7}, Ljava/io/LineNumberReader;->close()V

    .line 161
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :goto_0
    move-object v6, v7

    .end local v7           #lineReader:Ljava/io/LineNumberReader;
    .restart local v6       #lineReader:Ljava/io/LineNumberReader;
    move-object v3, v4

    .line 168
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #deltaF:Ljava/io/File;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return v8

    .line 145
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 146
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v10, "DMUtils"

    const-string v11, "file: /cache/recovery/fota_status not found"

    invoke-static {v10, v11}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/asus/dm/DMStorage;->getDeltaFullName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v1       #deltaF:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 155
    const-string v10, "DMUtils"

    const-string v11, "-------------- delete deltaF -----------------"

    invoke-static {v10, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 158
    :cond_3
    invoke-static {}, Lcom/asus/dm/util/DMUtils;->deleteFotaUpgradeStatus()V

    .line 160
    :try_start_5
    invoke-virtual {v6}, Ljava/io/LineNumberReader;->close()V

    .line 161
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 162
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 163
    .local v2, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 147
    .end local v1           #deltaF:Ljava/io/File;
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v10

    move-object v2, v10

    .line 148
    .restart local v2       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v10, "DMUtils"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 153
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/asus/dm/DMStorage;->getDeltaFullName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v1       #deltaF:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 155
    const-string v10, "DMUtils"

    const-string v11, "-------------- delete deltaF -----------------"

    invoke-static {v10, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 158
    :cond_4
    invoke-static {}, Lcom/asus/dm/util/DMUtils;->deleteFotaUpgradeStatus()V

    .line 160
    :try_start_7
    invoke-virtual {v6}, Ljava/io/LineNumberReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 161
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 162
    :catch_3
    move-exception v10

    move-object v2, v10

    goto :goto_3

    .line 149
    .end local v1           #deltaF:Ljava/io/File;
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v10

    move-object v2, v10

    .line 150
    .local v2, e:Ljava/lang/Exception;
    :goto_5
    :try_start_9
    const-string v10, "DMUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 153
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/asus/dm/DMStorage;->getDeltaFullName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v1       #deltaF:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 155
    const-string v10, "DMUtils"

    const-string v11, "-------------- delete deltaF -----------------"

    invoke-static {v10, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 158
    :cond_5
    invoke-static {}, Lcom/asus/dm/util/DMUtils;->deleteFotaUpgradeStatus()V

    .line 160
    :try_start_a
    invoke-virtual {v6}, Ljava/io/LineNumberReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 161
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    .line 162
    :catch_5
    move-exception v10

    move-object v2, v10

    goto :goto_3

    .line 153
    .end local v1           #deltaF:Ljava/io/File;
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_6
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/asus/dm/DMStorage;->getDeltaFullName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v1       #deltaF:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 155
    const-string v11, "DMUtils"

    const-string v12, "-------------- delete deltaF -----------------"

    invoke-static {v11, v12}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 158
    :cond_6
    invoke-static {}, Lcom/asus/dm/util/DMUtils;->deleteFotaUpgradeStatus()V

    .line 160
    :try_start_c
    invoke-virtual {v6}, Ljava/io/LineNumberReader;->close()V

    .line 161
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 153
    :goto_7
    throw v10

    .line 162
    :catch_6
    move-exception v11

    move-object v2, v11

    .line 163
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 162
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v6           #lineReader:Ljava/io/LineNumberReader;
    .restart local v0       #content:Ljava/lang/String;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v7       #lineReader:Ljava/io/LineNumberReader;
    :catch_7
    move-exception v10

    move-object v2, v10

    .line 163
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 162
    .end local v0           #content:Ljava/lang/String;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v7           #lineReader:Ljava/io/LineNumberReader;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    .restart local v6       #lineReader:Ljava/io/LineNumberReader;
    :catch_8
    move-exception v10

    move-object v2, v10

    goto/16 :goto_3

    .local v2, e:Ljava/io/IOException;
    :catch_9
    move-exception v10

    move-object v2, v10

    goto/16 :goto_3

    .line 153
    .end local v1           #deltaF:Ljava/io/File;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v6           #lineReader:Ljava/io/LineNumberReader;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v7       #lineReader:Ljava/io/LineNumberReader;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7           #lineReader:Ljava/io/LineNumberReader;
    .restart local v6       #lineReader:Ljava/io/LineNumberReader;
    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_6

    .line 149
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_a
    move-exception v10

    move-object v2, v10

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v6           #lineReader:Ljava/io/LineNumberReader;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v7       #lineReader:Ljava/io/LineNumberReader;
    :catch_b
    move-exception v10

    move-object v2, v10

    move-object v6, v7

    .end local v7           #lineReader:Ljava/io/LineNumberReader;
    .restart local v6       #lineReader:Ljava/io/LineNumberReader;
    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_5

    .line 147
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_c
    move-exception v10

    move-object v2, v10

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v6           #lineReader:Ljava/io/LineNumberReader;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v7       #lineReader:Ljava/io/LineNumberReader;
    :catch_d
    move-exception v10

    move-object v2, v10

    move-object v6, v7

    .end local v7           #lineReader:Ljava/io/LineNumberReader;
    .restart local v6       #lineReader:Ljava/io/LineNumberReader;
    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 145
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_e
    move-exception v10

    move-object v2, v10

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v6           #lineReader:Ljava/io/LineNumberReader;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v7       #lineReader:Ljava/io/LineNumberReader;
    :catch_f
    move-exception v10

    move-object v2, v10

    move-object v6, v7

    .end local v7           #lineReader:Ljava/io/LineNumberReader;
    .restart local v6       #lineReader:Ljava/io/LineNumberReader;
    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public static setCreateBootmarkInDb(Z)V
    .locals 0
    .parameter "isNeedToUpBootmarkDb"

    .prologue
    .line 115
    sput-boolean p0, Lcom/asus/dm/util/DMUtils;->mCreateBootmarkInDb:Z

    .line 116
    return-void
.end method

.method public static setDeleteBootmarkInDb(Z)V
    .locals 0
    .parameter "deleteBootmarkInDb"

    .prologue
    .line 123
    sput-boolean p0, Lcom/asus/dm/util/DMUtils;->mDeleteBootmarkInDb:Z

    .line 124
    return-void
.end method

.method public static waitforCall()V
    .locals 3

    .prologue
    .line 210
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 212
    .local v0, t:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 213
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-lez v1, :cond_0

    .line 214
    const-string v1, "DMUtils"

    const-string v2, "in call.. waiting...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method
