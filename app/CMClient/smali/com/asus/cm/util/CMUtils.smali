.class public Lcom/asus/cm/util/CMUtils;
.super Ljava/lang/Object;
.source "CMUtils.java"


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
    .locals 6

    .prologue
    .line 170
    new-instance v2, Ljava/io/File;

    const-string v5, "/cache"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 172
    .local v1, childf:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    .end local v1           #childf:Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static createDMTreeFile(Landroid/content/Context;)V
    .locals 5
    .parameter "pContext"

    .prologue
    .line 60
    const-string v3, "tree.xml"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 61
    .local v1, file:Ljava/io/File;
    invoke-static {p0}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v2

    .line 63
    .local v2, regMgr:Lcom/asus/cm/CMCRegistryManager;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/asus/cm/CMCRegistryManager;->getCurrentTree()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 65
    :cond_0
    :try_start_0
    const-string v3, "DMUtils"

    const-string v4, "start to write tree.xml"

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v3, "TMO"

    const-string v4, "ro.product.carrier"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    const v3, 0x7f050008

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMUtils;->createDMTreeFile(Landroid/content/Context;I)V

    .line 68
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMCRegistryManager;->setCurrentTree(I)V

    .line 74
    :goto_0
    const-string v3, "DMUtils"

    const-string v4, "finish to write tree.xml"

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    :goto_1
    return-void

    .line 70
    :cond_2
    const v3, 0x7f050001

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMUtils;->createDMTreeFile(Landroid/content/Context;I)V

    .line 71
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMCRegistryManager;->setCurrentTree(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 76
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "DMUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 85
    .local v3, in:Ljava/io/InputStream;
    new-instance v4, Ljava/io/LineNumberReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 87
    .local v4, lineReader:Ljava/io/LineNumberReader;
    const-string v6, "tree.xml"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 88
    .local v2, fOut:Ljava/io/FileOutputStream;
    const-string v0, ""

    .line 91
    .local v0, content:Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/asus/cm/util/TreeReplacer;->getTreeReplacer(Landroid/content/Context;I)Lcom/asus/cm/util/TreeReplacer;

    move-result-object v5

    .line 92
    .local v5, t:Lcom/asus/cm/util/TreeReplacer;
    :goto_0
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {v5, v0}, Lcom/asus/cm/util/TreeReplacer;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Lcom/asus/cm/exception/NoSuchTreeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v5           #t:Lcom/asus/cm/util/TreeReplacer;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 98
    .local v1, e:Lcom/asus/cm/exception/NoSuchTreeException;
    invoke-virtual {v1}, Lcom/asus/cm/exception/NoSuchTreeException;->printStackTrace()V

    .line 101
    .end local v1           #e:Lcom/asus/cm/exception/NoSuchTreeException;
    :cond_0
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->close()V

    .line 102
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 104
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
    .line 125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 128
    .local v6, sAry:[Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 131
    :try_start_0
    invoke-interface {p0, p1}, Lcom/asus/dmlib/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, subNode:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 133
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 135
    :cond_0
    if-eqz v6, :cond_1

    .line 136
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 138
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #s:Ljava/lang/String;
    .end local v7           #subNode:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 143
    .local v1, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    .line 148
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_1
    return-object v4
.end method

.method public static getCreateBootmarkInDb()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/asus/cm/util/CMUtils;->mCreateBootmarkInDb:Z

    return v0
.end method

.method public static getDeleteBootmarkInDb()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/asus/cm/util/CMUtils;->mDeleteBootmarkInDb:Z

    return v0
.end method

.method public static isEnoughDiskSpaceToDownload(J)Z
    .locals 8
    .parameter "dlFileSizeInBytes"

    .prologue
    .line 50
    new-instance v6, Landroid/os/StatFs;

    const-string v7, "/data"

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 51
    .local v6, st:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v2, v7

    .line 52
    .local v2, blkNum:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v4, v7

    .line 53
    .local v4, blkSize:J
    mul-long v0, v2, v4

    .line 55
    .local v0, availableDiskSpace:J
    cmp-long v7, v0, p0

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static setCreateBootmarkInDb(Z)V
    .locals 0
    .parameter "isNeedToUpBootmarkDb"

    .prologue
    .line 112
    sput-boolean p0, Lcom/asus/cm/util/CMUtils;->mCreateBootmarkInDb:Z

    .line 113
    return-void
.end method

.method public static setDeleteBootmarkInDb(Z)V
    .locals 0
    .parameter "deleteBootmarkInDb"

    .prologue
    .line 120
    sput-boolean p0, Lcom/asus/cm/util/CMUtils;->mDeleteBootmarkInDb:Z

    .line 121
    return-void
.end method

.method public static waitforCall()V
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 158
    .local v0, t:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 159
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-lez v1, :cond_0

    .line 160
    const-string v1, "DMUtils"

    const-string v2, "in call.. waiting...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method
