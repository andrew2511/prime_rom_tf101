.class public Lcom/infraware/filemanager/FmFileListData;
.super Ljava/lang/Object;
.source "FmFileListData.java"


# instance fields
.field public m_nAdapterMode:I

.field public m_nFilterType:I

.field public m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

.field public m_oFileFilter:Ljava/io/FilenameFilter;

.field public m_oFolderFilter:Lcom/infraware/filemanager/FmFileFilter;

.field public m_strCurPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "a_oContext"

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    .line 11
    iput v2, p0, Lcom/infraware/filemanager/FmFileListData;->m_nAdapterMode:I

    .line 13
    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    .line 15
    const/16 v0, 0x11

    iput v0, p0, Lcom/infraware/filemanager/FmFileListData;->m_nFilterType:I

    .line 16
    new-instance v0, Lcom/infraware/filemanager/FmFileFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/FmFileFilter;-><init>(Z)V

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFolderFilter:Lcom/infraware/filemanager/FmFileFilter;

    .line 17
    new-instance v0, Lcom/infraware/filemanager/FmFileFilter;

    invoke-direct {v0, v2}, Lcom/infraware/filemanager/FmFileFilter;-><init>(Z)V

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileFilter:Ljava/io/FilenameFilter;

    .line 20
    new-instance v0, Lcom/infraware/filemanager/FmFileAdapter;

    invoke-direct {v0, p1}, Lcom/infraware/filemanager/FmFileAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    .line 21
    return-void
.end method


# virtual methods
.method public ClearSelectedFileItems()V
    .locals 4

    .prologue
    .line 96
    iget-object v3, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v3}, Lcom/infraware/filemanager/FmFileAdapter;->getCount()I

    move-result v1

    .line 97
    .local v1, nFileCount:I
    if-gtz v1, :cond_1

    .line 108
    :cond_0
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x0

    .local v0, nCount:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 103
    iget-object v3, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v3, v0}, Lcom/infraware/filemanager/FmFileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/FmFileItem;

    .line 105
    .local v2, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    iget-boolean v3, v2, Lcom/infraware/filemanager/FmFileItem;->m_bIsSelected:Z

    if-eqz v3, :cond_2

    .line 106
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/infraware/filemanager/FmFileItem;->m_bIsSelected:Z

    .line 101
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public existFolderName(Ljava/lang/String;)Z
    .locals 5
    .parameter "a_strName"

    .prologue
    const/4 v4, 0x0

    .line 59
    iget-object v3, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v3}, Lcom/infraware/filemanager/FmFileAdapter;->getCount()I

    move-result v1

    .line 62
    .local v1, nFileCount:I
    const/4 v0, 0x0

    .local v0, nCount:I
    :goto_0
    if-lt v0, v1, :cond_0

    move v3, v4

    .line 73
    :goto_1
    return v3

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v3, v0}, Lcom/infraware/filemanager/FmFileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/FmFileItem;

    .line 65
    .local v2, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    if-nez v2, :cond_1

    move v3, v4

    .line 66
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v2}, Lcom/infraware/filemanager/FmFileItem;->getFullFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 69
    const/4 v3, 0x1

    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getFileItem(I)Lcom/infraware/filemanager/FmFileItem;
    .locals 1
    .parameter "a_nIndex"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 35
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/FmFileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/filemanager/FmFileItem;

    move-object v0, p0

    goto :goto_0
.end method

.method public getFileItem(Ljava/lang/String;)Lcom/infraware/filemanager/FmFileItem;
    .locals 5
    .parameter "a_strName"

    .prologue
    const/4 v4, 0x0

    .line 40
    iget-object v3, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v3}, Lcom/infraware/filemanager/FmFileAdapter;->getCount()I

    move-result v1

    .line 43
    .local v1, nFileCount:I
    const/4 v0, 0x0

    .local v0, nCount:I
    :goto_0
    if-lt v0, v1, :cond_0

    move-object v3, v4

    .line 54
    :goto_1
    return-object v3

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v3, v0}, Lcom/infraware/filemanager/FmFileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/FmFileItem;

    .line 46
    .local v2, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 47
    goto :goto_1

    .line 49
    :cond_1
    iget-object v3, v2, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    .line 50
    goto :goto_1

    .line 43
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSelectedFileItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v4}, Lcom/infraware/filemanager/FmFileAdapter;->getCount()I

    move-result v1

    .line 78
    .local v1, nFileCount:I
    if-gtz v1, :cond_0

    .line 79
    const/4 v4, 0x0

    .line 92
    :goto_0
    return-object v4

    .line 81
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, olistSelectedFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, nCount:I
    :goto_1
    if-lt v0, v1, :cond_2

    :cond_1
    move-object v4, v3

    .line 92
    goto :goto_0

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v4, v0}, Lcom/infraware/filemanager/FmFileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/FmFileItem;

    .line 87
    .local v2, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    if-eqz v2, :cond_1

    .line 89
    iget-boolean v4, v2, Lcom/infraware/filemanager/FmFileItem;->m_bIsSelected:Z

    if-eqz v4, :cond_3

    .line 90
    invoke-virtual {v2}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSubFolderPath(I)Ljava/lang/String;
    .locals 7
    .parameter "a_nIndex"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 111
    iget-object v3, p0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v3, p1}, Lcom/infraware/filemanager/FmFileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/FmFileItem;

    .line 113
    .local v1, oFmFileItem:Lcom/infraware/filemanager/FmFileItem;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 133
    :goto_0
    return-object v3

    .line 116
    :cond_1
    iget-object v3, v1, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v3, v4

    .line 117
    goto :goto_0

    .line 119
    :cond_2
    const/4 v2, 0x0

    .line 120
    .local v2, strNewFolderPath:Ljava/lang/String;
    iget-object v3, v1, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 133
    goto :goto_0

    .line 129
    :cond_3
    iget-object v3, p0, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 130
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, nlastPathIndex:I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "a_strPath"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    .line 29
    return-void
.end method
