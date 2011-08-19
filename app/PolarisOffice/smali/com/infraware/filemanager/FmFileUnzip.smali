.class public Lcom/infraware/filemanager/FmFileUnzip;
.super Ljava/lang/Object;
.source "FmFileUnzip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;,
        Lcom/infraware/filemanager/FmFileUnzip$ZipType;
    }
.end annotation


# static fields
.field private static g_oZip:Lcom/infraware/filemanager/FmFileUnzip;


# instance fields
.field m_arDepthPath:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_bCancel:Z

.field private m_bEncryption:Z

.field private m_oHandler:Landroid/os/Handler;

.field m_oIZipEventListener:Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;

.field m_oUnzipThread:Ljava/lang/Thread;

.field m_strDestPath:Ljava/lang/String;

.field m_strFilePath:Ljava/lang/String;

.field private m_strPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/filemanager/FmFileUnzip;->g_oZip:Lcom/infraware/filemanager/FmFileUnzip;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_bCancel:Z

    .line 41
    iput-boolean v1, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_bEncryption:Z

    .line 42
    iput-object v0, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_strPassword:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_arDepthPath:Ljava/util/Vector;

    .line 97
    iput-object v0, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_oIZipEventListener:Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;

    .line 100
    iput-object v0, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_oUnzipThread:Ljava/lang/Thread;

    .line 102
    new-instance v0, Lcom/infraware/filemanager/FmFileUnzip$1;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/FmFileUnzip$1;-><init>(Lcom/infraware/filemanager/FmFileUnzip;)V

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_oHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_arDepthPath:Ljava/util/Vector;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/filemanager/FmFileUnzip;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_oHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "a_strAbsolutePath"

    .prologue
    const/4 v3, 0x1

    .line 123
    move-object v0, p0

    .line 124
    .local v0, strRelativePath:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileUnzip;->instance()Lcom/infraware/filemanager/FmFileUnzip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/filemanager/FmFileUnzip;->getZipFileFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    return-object v0
.end method

.method public static getReleativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "a_strAbsolutePath"

    .prologue
    const/4 v3, 0x1

    .line 116
    move-object v0, p0

    .line 117
    .local v0, strRelativePath:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileUnzip;->instance()Lcom/infraware/filemanager/FmFileUnzip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/filemanager/FmFileUnzip;->getZipFileFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method public static getType(Ljava/lang/String;)I
    .locals 8
    .parameter "a_strFilePath"

    .prologue
    const/4 v7, -0x1

    .line 172
    :try_start_0
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {v4, p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 174
    .local v4, zipFile:Lorg/apache/commons/compress/archivers/zip/ZipFile;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, fis:Ljava/io/FileInputStream;
    new-instance v3, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;

    const-string v6, ""

    invoke-direct {v3, v1, v6}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 176
    .local v3, zdis:Lcom/infraware/filemanager/zip/ZipDecryptInputStream;
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 177
    .local v5, zis:Ljava/util/zip/ZipInputStream;
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 178
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 190
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #zdis:Lcom/infraware/filemanager/zip/ZipDecryptInputStream;
    .end local v4           #zipFile:Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .end local v5           #zis:Ljava/util/zip/ZipInputStream;
    :goto_0
    return v6

    .line 180
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 181
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, msg:Ljava/lang/String;
    if-nez v2, :cond_0

    move v6, v7

    .line 183
    goto :goto_0

    .line 185
    :cond_0
    const-string v6, "NOT_ENC"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    const/4 v6, 0x0

    goto :goto_0

    .line 188
    :cond_1
    const/4 v6, -0x2

    goto :goto_0
.end method

.method public static instance()Lcom/infraware/filemanager/FmFileUnzip;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/infraware/filemanager/FmFileUnzip;->g_oZip:Lcom/infraware/filemanager/FmFileUnzip;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/infraware/filemanager/FmFileUnzip;

    invoke-direct {v0}, Lcom/infraware/filemanager/FmFileUnzip;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/FmFileUnzip;->g_oZip:Lcom/infraware/filemanager/FmFileUnzip;

    .line 57
    :cond_0
    sget-object v0, Lcom/infraware/filemanager/FmFileUnzip;->g_oZip:Lcom/infraware/filemanager/FmFileUnzip;

    return-object v0
.end method


# virtual methods
.method public Cancel()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_bCancel:Z

    .line 134
    return-void
.end method

.method public RemoveZipTemp()V
    .locals 8

    .prologue
    .line 71
    iget-object v5, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_arDepthPath:Ljava/util/Vector;

    iget-object v6, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_arDepthPath:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 72
    .local v4, strPath:Ljava/lang/String;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 73
    .local v3, otime:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 75
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, oFolder:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/text/format/Time;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/text/format/Time;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, delPath:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3c

    if-le v5, v6, :cond_0

    .line 79
    invoke-static {v2}, Lcom/infraware/filemanager/FmFileUtil;->deleteFolder(Ljava/io/File;)V

    .line 95
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, oDelFolder:Ljava/io/File;
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    invoke-static {v1}, Lcom/infraware/filemanager/FmFileUtil;->deleteFolder(Ljava/io/File;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v1}, Lcom/infraware/filemanager/FmFileUtil;->deleteFolder(Ljava/io/File;)V

    .line 91
    invoke-static {v2}, Lcom/infraware/filemanager/FmFileUtil;->deleteFolder(Ljava/io/File;)V

    goto :goto_0
.end method

.method public getZipFileFullPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_arDepthPath:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public unzipEncryptionFile(Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;Ljava/lang/String;)I
    .locals 1
    .parameter "a_strFilePath"
    .parameter "a_strDestPath"
    .parameter "a_oIZipEventListener"
    .parameter "a_strPassword"

    .prologue
    .line 139
    iput-object p4, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_strPassword:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_bEncryption:Z

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Lcom/infraware/filemanager/FmFileUnzip;->unzipFile(Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized unzipFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 27
    .parameter "a_strFilePath"
    .parameter "a_strDestPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    monitor-enter p0

    const/16 v24, 0x0

    :try_start_0
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/infraware/filemanager/FmFileUnzip;->m_bCancel:Z

    .line 197
    if-nez p1, :cond_0

    .line 199
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    const/16 v24, 0x0

    .line 312
    :goto_0
    monitor-exit p0

    return v24

    .line 203
    :cond_0
    if-nez p2, :cond_1

    .line 205
    :try_start_1
    new-instance v15, Ljava/io/File;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v15, oTempFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 208
    .local v12, nFolderPathIndex:I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/infraware/filemanager/FmFileUtil;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "/."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_temp/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 211
    .end local v12           #nFolderPathIndex:I
    .end local v15           #oTempFile:Ljava/io/File;
    :cond_1
    move-object/from16 v19, p2

    .line 212
    .local v19, strTempPath:Ljava/lang/String;
    move-object/from16 v18, p2

    .line 213
    .local v18, strDestPath:Ljava/lang/String;
    const/4 v14, 0x0

    .line 215
    .local v14, nNumbering:I
    new-instance v15, Ljava/io/File;

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .restart local v15       #oTempFile:Ljava/io/File;
    :goto_1
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_2

    .line 227
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/FmFileUnzip;->m_arDepthPath:Ljava/util/Vector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    const-wide/16 v10, 0x0

    .line 232
    .local v10, nBeforeTile:J
    const-wide/16 v8, 0x0

    .line 234
    .local v8, nAfterTile:J
    const/16 v22, 0x0

    .line 236
    .local v22, zipFile:Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :try_start_2
    new-instance v23, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v23 .. v24}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v22           #zipFile:Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .local v23, zipFile:Lorg/apache/commons/compress/archivers/zip/ZipFile;
    move-object/from16 v22, v23

    .line 242
    .end local v23           #zipFile:Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .restart local v22       #zipFile:Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :goto_2
    const/4 v6, 0x0

    .line 243
    .local v6, in:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/infraware/filemanager/FmFileUnzip;->m_bEncryption:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 245
    new-instance v20, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;

    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/FmFileUnzip;->m_strPassword:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 246
    .local v20, zdis:Lcom/infraware/filemanager/zip/ZipDecryptInputStream;
    new-instance v6, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    .end local v6           #in:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    const-string v24, "euc-kr"

    const/16 v25, 0x1

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 247
    .restart local v6       #in:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/infraware/filemanager/FmFileUnzip;->m_bEncryption:Z

    .line 256
    .end local v20           #zdis:Lcom/infraware/filemanager/zip/ZipDecryptInputStream;
    :goto_3
    const v24, 0xa000

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v4, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v4, buf:[B
    move-object/from16 v16, v15

    .line 258
    .end local v15           #oTempFile:Ljava/io/File;
    .local v16, oTempFile:Ljava/io/File;
    :goto_4
    :try_start_4
    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v21

    .local v21, ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    if-nez v21, :cond_4

    .line 304
    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v15, v16

    .line 311
    .end local v16           #oTempFile:Ljava/io/File;
    .end local v21           #ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local v15       #oTempFile:Ljava/io/File;
    :goto_5
    :try_start_5
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 312
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 220
    .end local v4           #buf:[B
    .end local v6           #in:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    .end local v8           #nAfterTile:J
    .end local v10           #nBeforeTile:J
    .end local v22           #zipFile:Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    .line 221
    const-string v24, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 222
    .local v13, nIndex:I
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 223
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 224
    new-instance v15, Ljava/io/File;

    .end local v15           #oTempFile:Ljava/io/File;
    move-object v0, v15

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v15       #oTempFile:Ljava/io/File;
    goto/16 :goto_1

    .line 237
    .end local v13           #nIndex:I
    .restart local v8       #nAfterTile:J
    .restart local v10       #nBeforeTile:J
    .restart local v22       #zipFile:Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :catch_0
    move-exception v24

    move-object/from16 v5, v24

    .line 238
    .local v5, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 239
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 196
    .end local v5           #e:Ljava/lang/Exception;
    .end local v8           #nAfterTile:J
    .end local v10           #nBeforeTile:J
    .end local v14           #nNumbering:I
    .end local v15           #oTempFile:Ljava/io/File;
    .end local v18           #strDestPath:Ljava/lang/String;
    .end local v19           #strTempPath:Ljava/lang/String;
    .end local v22           #zipFile:Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :catchall_0
    move-exception v24

    monitor-exit p0

    throw v24

    .line 251
    .restart local v6       #in:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    .restart local v8       #nAfterTile:J
    .restart local v10       #nBeforeTile:J
    .restart local v14       #nNumbering:I
    .restart local v15       #oTempFile:Ljava/io/File;
    .restart local v18       #strDestPath:Ljava/lang/String;
    .restart local v19       #strTempPath:Ljava/lang/String;
    .restart local v22       #zipFile:Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :cond_3
    :try_start_6
    new-instance v6, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    .end local v6           #in:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v25, "euc-kr"

    const/16 v26, 0x1

    move-object v0, v6

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .restart local v6       #in:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    goto/16 :goto_3

    .line 259
    .end local v15           #oTempFile:Ljava/io/File;
    .restart local v4       #buf:[B
    .restart local v16       #oTempFile:Ljava/io/File;
    .restart local v21       #ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/infraware/filemanager/FmFileUnzip;->m_bCancel:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 261
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 262
    const/16 v24, -0x1

    goto/16 :goto_0

    .line 266
    :cond_5
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 267
    const-string v24, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 268
    .restart local v12       #nFolderPathIndex:I
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 269
    new-instance v15, Ljava/io/File;

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 271
    .end local v16           #oTempFile:Ljava/io/File;
    .restart local v15       #oTempFile:Ljava/io/File;
    :try_start_8
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_6

    .line 273
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v24

    if-nez v24, :cond_6

    .line 275
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 276
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 280
    :cond_6
    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 282
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 283
    .end local v15           #oTempFile:Ljava/io/File;
    .restart local v16       #oTempFile:Ljava/io/File;
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 284
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/infraware/filemanager/MTPSyncManager;->updateFolderCreated(Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4

    .line 306
    .end local v12           #nFolderPathIndex:I
    .end local v21           #ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :catch_1
    move-exception v24

    move-object/from16 v5, v24

    move-object/from16 v15, v16

    .line 307
    .end local v16           #oTempFile:Ljava/io/File;
    .restart local v5       #e:Ljava/lang/Exception;
    .restart local v15       #oTempFile:Ljava/io/File;
    :goto_6
    :try_start_a
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 308
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    .line 288
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v12       #nFolderPathIndex:I
    .restart local v21       #ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_7
    :try_start_b
    new-instance v17, Ljava/io/FileOutputStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 292
    .local v17, out:Ljava/io/OutputStream;
    :goto_7
    invoke-virtual {v6, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->read([B)I

    move-result v7

    .local v7, len:I
    if-gtz v7, :cond_8

    .line 301
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/infraware/filemanager/MTPSyncManager;->updateFileCreated(Ljava/lang/String;)I

    .line 302
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v16, v15

    .end local v15           #oTempFile:Ljava/io/File;
    .restart local v16       #oTempFile:Ljava/io/File;
    goto/16 :goto_4

    .line 293
    .end local v16           #oTempFile:Ljava/io/File;
    .restart local v15       #oTempFile:Ljava/io/File;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/infraware/filemanager/FmFileUnzip;->m_bCancel:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 295
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 296
    const/16 v24, -0x1

    goto/16 :goto_0

    .line 298
    :cond_9
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object v1, v4

    move/from16 v2, v24

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_7

    .line 306
    .end local v7           #len:I
    .end local v17           #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v24

    move-object/from16 v5, v24

    goto :goto_6
.end method

.method public unzipFile(Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;)I
    .locals 2
    .parameter "a_strFilePath"
    .parameter "a_strDestPath"
    .parameter "a_oIZipEventListener"

    .prologue
    .line 146
    iput-object p3, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_oIZipEventListener:Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;

    .line 147
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_strFilePath:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_strDestPath:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/infraware/filemanager/FmFileUnzip$2;

    invoke-direct {v1, p0}, Lcom/infraware/filemanager/FmFileUnzip$2;-><init>(Lcom/infraware/filemanager/FmFileUnzip;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_oUnzipThread:Ljava/lang/Thread;

    .line 164
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileUnzip;->m_oUnzipThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    const/4 v0, 0x0

    return v0
.end method
