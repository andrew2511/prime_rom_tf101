.class public Lcom/infraware/filemanager/operator/FmRecentFileOperator;
.super Lcom/infraware/filemanager/operator/FmFileOperator;
.source "FmRecentFileOperator.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "a_oContext"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmFileOperator;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oContext:Landroid/app/Activity;

    .line 20
    new-instance v0, Lcom/infraware/filemanager/FmFileListData;

    invoke-direct {v0, p1}, Lcom/infraware/filemanager/FmFileListData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    .line 21
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    const/4 v1, 0x1

    iput v1, v0, Lcom/infraware/filemanager/FmFileListData;->m_nAdapterMode:I

    .line 22
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    const-string v1, "/"

    iput-object v1, v0, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/infraware/filemanager/FmFileRecent;->loadRecentFileList(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public makeFileList(Ljava/lang/String;)I
    .locals 7
    .parameter "a_strPath"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 28
    const/4 v2, 0x0

    .line 30
    .local v2, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    new-instance v2, Lcom/infraware/filemanager/FmFileItem;

    .end local v2           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    invoke-direct {v2}, Lcom/infraware/filemanager/FmFileItem;-><init>()V

    .line 31
    .restart local v2       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    iput-boolean v5, v2, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    .line 32
    iput v5, v2, Lcom/infraware/filemanager/FmFileItem;->m_nType:I

    .line 33
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v3, v3, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    iput-object v3, v2, Lcom/infraware/filemanager/FmFileItem;->m_strPath:Ljava/lang/String;

    .line 34
    const-string v3, ".."

    iput-object v3, v2, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    .line 35
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/infraware/filemanager/FmFileItem;->m_nUpdateTime:J

    .line 36
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v3, v3, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v3, v2}, Lcom/infraware/filemanager/FmFileAdapter;->addList(Lcom/infraware/filemanager/FmFileItem;)V

    .line 39
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    sget v3, Lcom/infraware/filemanager/FmFileRecent;->m_nRecentFileCount:I

    if-lt v0, v3, :cond_0

    move v3, v6

    .line 53
    :goto_1
    return v3

    .line 41
    :cond_0
    new-instance v2, Lcom/infraware/filemanager/FmFileItem;

    .end local v2           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    invoke-direct {v2}, Lcom/infraware/filemanager/FmFileItem;-><init>()V

    .line 42
    .restart local v2       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    iput-boolean v6, v2, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    .line 43
    iput v5, v2, Lcom/infraware/filemanager/FmFileItem;->m_nType:I

    .line 44
    sget-object v3, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    move v3, v5

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/infraware/filemanager/FmFileRecent;->m_strRecentFileList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, oFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/infraware/filemanager/FmFileUtil;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/infraware/filemanager/FmFileItem;->m_strPath:Ljava/lang/String;

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/infraware/filemanager/FmFileItem;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/infraware/filemanager/FmFileItem;->m_nUpdateTime:J

    .line 51
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v3, v3, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v3, v2}, Lcom/infraware/filemanager/FmFileAdapter;->addList(Lcom/infraware/filemanager/FmFileItem;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClrKey(Landroid/app/Activity;)I
    .locals 4
    .parameter "a_oActivity"

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    const/16 v1, 0x1000

    .line 107
    const/4 v2, 0x0

    .line 105
    invoke-interface {v0, v1, v3, v2}, Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;->onEvent(IILjava/lang/String;)V

    .line 108
    return v3
.end method

.method public onSelect(Landroid/app/Activity;I)I
    .locals 9
    .parameter "a_oActivity"
    .parameter "a_nIndex"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 64
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    invoke-virtual {v3, p2}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v0

    .line 65
    .local v0, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    if-nez v0, :cond_0

    move v3, v6

    .line 100
    :goto_0
    return v3

    .line 68
    :cond_0
    iget-boolean v3, v0, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    const/16 v4, 0x1000

    invoke-interface {v3, v4, v7, v8}, Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;->onEvent(IILjava/lang/String;)V

    move v3, v7

    .line 73
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, strAbsolutePath:Ljava/lang/String;
    iget v3, v0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    const/16 v4, 0x17

    if-ne v3, v4, :cond_2

    move v3, v6

    .line 78
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v1}, Lcom/infraware/filemanager/FmFileUtil;->getFileSize(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 82
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0284

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, strErrorMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oContext:Landroid/app/Activity;

    .line 84
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oContext:Landroid/app/Activity;

    const v5, 0x7f0a0365

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    invoke-static {v4, v3, v2}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 87
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/infraware/filemanager/FmFileRecent;->deleteRecentFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/infraware/filemanager/FmFileRecent;->loadRecentFileList(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->updateFileList()I

    .line 90
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oContext:Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 91
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->invalidateOptionsMenuIfPossible(Landroid/app/Activity;)V

    .line 92
    :cond_3
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    if-eqz v3, :cond_4

    .line 93
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    invoke-interface {v3, v6, v7, v8}, Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;->onEvent(IILjava/lang/String;)V

    :cond_4
    move v3, v6

    .line 97
    goto :goto_0

    .line 100
    .end local v2           #strErrorMsg:Ljava/lang/String;
    :cond_5
    iget v3, v0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    invoke-virtual {p0, p1, v1, v3, v6}, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->excuteFile(Landroid/app/Activity;Ljava/lang/String;IZ)I

    move-result v3

    goto :goto_0
.end method

.method public updateFileList()I
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->clearFileList()V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/operator/FmRecentFileOperator;->makeFileList(Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x0

    return v0
.end method
