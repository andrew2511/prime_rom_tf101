.class public Lcom/infraware/filemanager/FmFileThreadLocalLoad;
.super Lcom/infraware/filemanager/FmFileThread;
.source "FmFileThreadLocalLoad.java"


# instance fields
.field m_nFileIndex:I

.field m_nFileOperation:I

.field m_oDestFileListData:Lcom/infraware/filemanager/FmFileListData;

.field m_oSrcFileListData:Lcom/infraware/filemanager/FmFileListData;

.field m_strFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/infraware/filemanager/FmFileThread;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/filemanager/FmFileThreadLocalLoad;->m_nFileOperation:I

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/filemanager/FmFileThreadLocalLoad;->m_nFileIndex:I

    .line 28
    return-void
.end method


# virtual methods
.method public clearLocalFileList()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/infraware/filemanager/FmFileThreadLocalLoad;->m_oDestFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v0, v0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileAdapter;->clearList()V

    .line 41
    return-void
.end method

.method public getFileMgrOperation()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onCancel()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/infraware/filemanager/FmFileThread;->onCancel()V

    return-void
.end method

.method public bridge synthetic onEnd()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/infraware/filemanager/FmFileThread;->onEnd()V

    return-void
.end method

.method public bridge synthetic onResult()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/infraware/filemanager/FmFileThread;->onResult()V

    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/infraware/filemanager/FmFileThreadLocalLoad;->onEnd()V

    .line 37
    return-void
.end method

.method public setFileListData(Lcom/infraware/filemanager/FmFileListData;Lcom/infraware/filemanager/FmFileListData;Ljava/lang/String;)V
    .locals 0
    .parameter "a_oSrcFileListData"
    .parameter "a_oDestFileListData"
    .parameter "a_strCurPath"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileThreadLocalLoad;->m_oSrcFileListData:Lcom/infraware/filemanager/FmFileListData;

    .line 15
    iput-object p2, p0, Lcom/infraware/filemanager/FmFileThreadLocalLoad;->m_oDestFileListData:Lcom/infraware/filemanager/FmFileListData;

    .line 16
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "a_strFilePath"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileThreadLocalLoad;->m_strFilePath:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setOperation(II)V
    .locals 0
    .parameter "a_nFileOperation"
    .parameter "a_nFileIndex"

    .prologue
    .line 19
    iput p1, p0, Lcom/infraware/filemanager/FmFileThreadLocalLoad;->m_nFileOperation:I

    .line 20
    iput p2, p0, Lcom/infraware/filemanager/FmFileThreadLocalLoad;->m_nFileIndex:I

    .line 21
    return-void
.end method

.method public bridge synthetic setRunnable(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/filemanager/FmFileThread;->setRunnable(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
