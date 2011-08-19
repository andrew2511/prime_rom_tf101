.class public Lcom/infraware/filemanager/operator/FmZipFileOperator;
.super Lcom/infraware/filemanager/operator/FmLocalFileOperator;
.source "FmZipFileOperator.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "a_oContext"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;-><init>(Landroid/app/Activity;Z)V

    .line 20
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmZipFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    const/4 v1, 0x2

    iput v1, v0, Lcom/infraware/filemanager/FmFileListData;->m_nAdapterMode:I

    .line 21
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmZipFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    sget-object v1, Lcom/infraware/filemanager/FmFileDefine;->UNZIP_TEMP_PATH:Ljava/lang/String;

    iput-object v1, v0, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "a_oContext"
    .parameter "a_nSrcPath"
    .parameter "a_strDestPath"

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "a_oContext"
    .parameter "a_strFileName"

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public makeFileList(Ljava/lang/String;)I
    .locals 1
    .parameter "a_strPath"

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 118
    invoke-static {}, Lcom/infraware/filemanager/FmFileUnzip;->instance()Lcom/infraware/filemanager/FmFileUnzip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileUnzip;->getZipFileFullPath()Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_0
    invoke-super {p0, p1}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->makeFileList(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public makeNewFile(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "a_oContext"
    .parameter "a_strFileName"

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public makeNewFolder(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "a_oContext"
    .parameter "a_strFolderName"

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public onSelect(Landroid/app/Activity;I)I
    .locals 13
    .parameter "a_oActivity"
    .parameter "a_nIndex"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 47
    iget-object v8, p0, Lcom/infraware/filemanager/operator/FmZipFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    invoke-virtual {v8, p2}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v0

    .line 48
    .local v0, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    if-nez v0, :cond_0

    move v8, v11

    .line 106
    :goto_0
    return v8

    .line 51
    :cond_0
    iget-boolean v8, v0, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v8, :cond_6

    .line 54
    invoke-static {}, Lcom/infraware/filemanager/FmFileDomain;->instance()Lcom/infraware/filemanager/FmFileDomain;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/infraware/filemanager/FmFileDomain;->getOperator(I)Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v1

    .line 55
    .local v1, oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    if-nez v1, :cond_1

    .line 57
    invoke-static {}, Lcom/infraware/filemanager/FmFileDomain;->instance()Lcom/infraware/filemanager/FmFileDomain;

    move-result-object v8

    invoke-virtual {v8, p1, v10}, Lcom/infraware/filemanager/FmFileDomain;->createOperator(Landroid/app/Activity;I)Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v1

    .line 59
    :cond_1
    invoke-static {}, Lcom/infraware/filemanager/FmFileDomain;->instance()Lcom/infraware/filemanager/FmFileDomain;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/infraware/filemanager/FmFileDomain;->releaseOperator(Lcom/infraware/filemanager/operator/FmFileOperator;)V

    .line 60
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileItem;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, ofile:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/infraware/filemanager/operator/FmFileOperator;->getCurrentPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, oLocal:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, strParent:Ljava/lang/String;
    if-nez p2, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 68
    invoke-static {}, Lcom/infraware/filemanager/FmFileUnzip;->instance()Lcom/infraware/filemanager/FmFileUnzip;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/filemanager/FmFileUnzip;->RemoveZipTemp()V

    .line 69
    iget-object v8, p0, Lcom/infraware/filemanager/operator/FmZipFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    if-eqz v8, :cond_2

    .line 71
    iget-object v8, p0, Lcom/infraware/filemanager/operator/FmZipFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    const/high16 v9, 0x1

    invoke-interface {v8, v9, v10, v12}, Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;->onEvent(IILjava/lang/String;)V

    move v8, v10

    .line 74
    goto :goto_0

    :cond_2
    move v8, v11

    .line 76
    goto :goto_0

    .line 78
    :cond_3
    if-nez p2, :cond_4

    iget-object v8, p0, Lcom/infraware/filemanager/operator/FmZipFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v8, v8, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-static {}, Lcom/infraware/filemanager/FmFileUnzip;->instance()Lcom/infraware/filemanager/FmFileUnzip;

    move-result-object v9

    invoke-virtual {v9}, Lcom/infraware/filemanager/FmFileUnzip;->getZipFileFullPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    .line 80
    invoke-static {}, Lcom/infraware/filemanager/FmFileUnzip;->instance()Lcom/infraware/filemanager/FmFileUnzip;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/filemanager/FmFileUnzip;->RemoveZipTemp()V

    .line 83
    :cond_4
    iget-object v8, p0, Lcom/infraware/filemanager/operator/FmZipFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    invoke-virtual {v8, p2}, Lcom/infraware/filemanager/FmFileListData;->getSubFolderPath(I)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, strNewPath:Ljava/lang/String;
    if-nez v6, :cond_5

    move v8, v11

    .line 85
    goto :goto_0

    .line 87
    :cond_5
    iget-object v8, p0, Lcom/infraware/filemanager/operator/FmZipFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v8, v8, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v8}, Lcom/infraware/filemanager/FmFileAdapter;->clearList()V

    .line 88
    iget-object v8, p0, Lcom/infraware/filemanager/operator/FmZipFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iput-object v6, v8, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmZipFileOperator;->makeLocalFileList()I

    move-result v8

    goto/16 :goto_0

    .line 92
    .end local v1           #oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    .end local v3           #oLocal:Ljava/io/File;
    .end local v4           #ofile:Ljava/io/File;
    .end local v6           #strNewPath:Ljava/lang/String;
    .end local v7           #strParent:Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, strAbsolutePath:Ljava/lang/String;
    iget v8, v0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    const/16 v9, 0x17

    if-ne v8, v9, :cond_7

    .line 96
    const v8, 0x7f0a035a

    invoke-static {v10, v8}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II)V

    .line 97
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileProgress;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 98
    invoke-static {}, Lcom/infraware/filemanager/FmFileUnzip;->instance()Lcom/infraware/filemanager/FmFileUnzip;

    move-result-object v2

    .line 99
    .local v2, oFmFileUnzip:Lcom/infraware/filemanager/FmFileUnzip;
    invoke-virtual {v2, v5, v12, p0}, Lcom/infraware/filemanager/FmFileUnzip;->unzipFile(Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;)I

    .line 100
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmZipFileOperator;->clearFileList()V

    .line 101
    invoke-static {v5}, Lcom/infraware/filemanager/FmFileUtil;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/infraware/filemanager/operator/FmZipFileOperator;->makeFileList(Ljava/lang/String;)I

    .line 103
    const/4 v8, 0x3

    goto/16 :goto_0

    .line 106
    .end local v2           #oFmFileUnzip:Lcom/infraware/filemanager/FmFileUnzip;
    :cond_7
    iget v8, v0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    invoke-virtual {p0, p1, v5, v8, v11}, Lcom/infraware/filemanager/operator/FmZipFileOperator;->excuteFile(Landroid/app/Activity;Ljava/lang/String;IZ)I

    move-result v8

    goto/16 :goto_0
.end method

.method public onZipEvent(Z)V
    .locals 4
    .parameter "a_bResult"

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmZipFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 133
    :cond_0
    if-nez p1, :cond_1

    .line 135
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmZipFileOperator;->clearFileList()V

    .line 139
    invoke-virtual {p0, v3}, Lcom/infraware/filemanager/operator/FmZipFileOperator;->makeFileList(Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmZipFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;->onEvent(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public rename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "a_oContext"
    .parameter "a_strOldName"
    .parameter "a_strNewName"

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method
