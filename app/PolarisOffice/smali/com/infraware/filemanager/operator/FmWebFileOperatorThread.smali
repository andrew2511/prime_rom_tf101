.class public Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;
.super Ljava/lang/Object;
.source "FmWebFileOperatorThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;,
        Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;
    }
.end annotation


# instance fields
.field protected m_oHandler:Landroid/os/Handler;

.field m_oWebEventListener:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;

.field protected m_runInitLogin:Ljava/lang/Runnable;

.field protected m_runInitState:Ljava/lang/Runnable;

.field protected m_runPostScan:Ljava/lang/Runnable;

.field protected m_runUpdateList:Ljava/lang/Runnable;

.field protected m_runUpdateMedia:Ljava/lang/Runnable;

.field protected uiUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;)V
    .locals 1
    .parameter "a_oWebEventListener"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oWebEventListener:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;

    .line 259
    new-instance v0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$1;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$1;-><init>(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;)V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->uiUpdateHandler:Landroid/os/Handler;

    .line 313
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oHandler:Landroid/os/Handler;

    .line 314
    new-instance v0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$2;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$2;-><init>(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;)V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_runUpdateList:Ljava/lang/Runnable;

    .line 322
    new-instance v0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$3;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$3;-><init>(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;)V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_runUpdateMedia:Ljava/lang/Runnable;

    .line 332
    new-instance v0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$4;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$4;-><init>(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;)V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_runPostScan:Ljava/lang/Runnable;

    .line 343
    new-instance v0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$5;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$5;-><init>(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;)V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_runInitState:Ljava/lang/Runnable;

    .line 351
    new-instance v0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$6;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$6;-><init>(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;)V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_runInitLogin:Ljava/lang/Runnable;

    .line 34
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oWebEventListener:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;

    .line 35
    return-void
.end method

.method private createFileOperationThread(Ljava/lang/String;Ljava/lang/String;II)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    .locals 8
    .parameter "a_strID"
    .parameter "a_strThreadType"
    .parameter "serviceType"
    .parameter "a_nOperation"

    .prologue
    const/4 v7, 0x0

    .line 99
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v2

    .line 100
    .local v2, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oWebEventListener:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;

    const/4 v4, 0x2

    const/16 v5, 0xa

    const/4 v6, -0x7

    invoke-interface {v3, v4, v5, v6}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;->onResult(III)V

    move-object v3, v7

    .line 117
    :goto_0
    return-object v3

    .line 105
    :cond_0
    invoke-virtual {p0, p4, v7}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->getWebInfoObj(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;

    move-result-object v0

    .line 114
    .local v0, container:Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;
    invoke-virtual {v2, p2, p3, p1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->createThreadByType(Ljava/lang/String;ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v1

    .line 115
    .local v1, oFileThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;->mRunnableSuccess:Ljava/lang/Runnable;

    iget-object v5, v0, Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;->mRunnableFail:Ljava/lang/Runnable;

    iget-object v6, v0, Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;->mRunnableCancel:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->setPostProcess(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    move-object v3, v1

    .line 117
    goto :goto_0
.end method


# virtual methods
.method public authAccount(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 7
    .parameter "a_strID"
    .parameter "a_strPassword"
    .parameter "serviceType"
    .parameter "isRefresh"

    .prologue
    .line 71
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v2

    .line 72
    .local v2, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oWebEventListener:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;

    const/4 v4, 0x2

    const/16 v5, 0xa

    const/4 v6, -0x7

    invoke-interface {v3, v4, v5, v6}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;->onResult(III)V

    .line 75
    const/4 v3, 0x0

    .line 92
    :goto_0
    return v3

    .line 78
    :cond_0
    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->getWebInfoObj(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;

    move-result-object v0

    .line 87
    .local v0, container:Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;
    const-string v3, "LOGIN"

    invoke-virtual {v2, v3, p3, p1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->createThreadByType(Ljava/lang/String;ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/thread/LoginThread;

    .line 88
    .local v1, loginThread:Lcom/infraware/filemanager/webstorage/thread/LoginThread;
    invoke-virtual {v1, p2}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->setPassword(Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;->mRunnableSuccess:Ljava/lang/Runnable;

    iget-object v5, v0, Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;->mRunnableFail:Ljava/lang/Runnable;

    iget-object v6, v0, Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;->mRunnableCancel:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->setPostProcess(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {v1, p4}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->setRefresh(Z)V

    .line 91
    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->start()V

    .line 92
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .parameter "a_strID"
    .parameter "a_oContext"
    .parameter "a_strFileName"
    .parameter "serviceType"

    .prologue
    const/4 v2, 0x3

    .line 158
    .line 159
    const-string v1, "FILE OPERATION"

    .line 158
    invoke-direct {p0, p1, v1, p4, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->createFileOperationThread(Ljava/lang/String;Ljava/lang/String;II)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;

    .line 162
    .local v0, oFileOperationThread:Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;
    if-nez v0, :cond_0

    .line 163
    const/4 v1, 0x0

    .line 166
    :goto_0
    return v1

    .line 164
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p3}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->setOperation(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->start()V

    .line 166
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public deleteFolder(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .parameter "a_strID"
    .parameter "a_oContext"
    .parameter "a_strFolderName"
    .parameter "serviceType"

    .prologue
    const/16 v2, 0x10

    .line 169
    .line 170
    const-string v1, "FILE OPERATION"

    .line 169
    invoke-direct {p0, p1, v1, p4, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->createFileOperationThread(Ljava/lang/String;Ljava/lang/String;II)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;

    .line 173
    .local v0, oFileOperationThread:Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;
    if-nez v0, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 177
    :goto_0
    return v1

    .line 175
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p3}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->setOperation(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->start()V

    .line 177
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public deleteMultiFile(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Z
    .locals 3
    .parameter "a_strID"
    .parameter "a_oContext"
    .parameter
    .parameter "serviceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 180
    .line 181
    .local p3, a_oDeleteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "FILE OPERATION"

    .line 183
    const/4 v2, 0x3

    .line 180
    invoke-direct {p0, p1, v1, p4, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->createFileOperationThread(Ljava/lang/String;Ljava/lang/String;II)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;

    .line 184
    .local v0, oFileOperationThread:Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;
    if-nez v0, :cond_0

    .line 185
    const/4 v1, 0x0

    .line 188
    :goto_0
    return v1

    .line 186
    :cond_0
    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->setMultiOperation(ILjava/lang/String;Ljava/util/List;)V

    .line 187
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->start()V

    .line 188
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "a_strID"
    .parameter "a_strLocalPath"
    .parameter "a_strNewName"
    .parameter "serviceType"

    .prologue
    .line 191
    .line 192
    const-string v1, "DOWNLOAD"

    .line 194
    const/16 v2, 0xc

    .line 191
    invoke-direct {p0, p1, v1, p4, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->createFileOperationThread(Ljava/lang/String;Ljava/lang/String;II)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;

    .line 195
    .local v0, oFileDownloadThread:Lcom/infraware/filemanager/webstorage/thread/DownloadThread;
    if-nez v0, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 202
    :goto_0
    return v1

    .line 198
    :cond_0
    invoke-virtual {v0, p2}, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->setPath(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p3}, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->setWebPath(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->start()V

    .line 202
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getWebInfoObj(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;
    .locals 10
    .parameter "aOperationMode"
    .parameter "aSrcFullPath"

    .prologue
    .line 221
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 222
    .local v9, networkHandler:Landroid/os/Handler;
    new-instance v0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->uiUpdateHandler:Landroid/os/Handler;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;-><init>(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;IILjava/lang/String;Landroid/os/Handler;)V

    .line 223
    .local v0, networkSuccessRunnable:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;
    new-instance v1, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;

    const/4 v4, 0x2

    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->uiUpdateHandler:Landroid/os/Handler;

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;-><init>(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;IILjava/lang/String;Landroid/os/Handler;)V

    .line 224
    .local v1, networkFailRunnable:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;
    new-instance v2, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;

    const/4 v5, 0x3

    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->uiUpdateHandler:Landroid/os/Handler;

    move-object v3, p0

    move v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;-><init>(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;IILjava/lang/String;Landroid/os/Handler;)V

    .line 227
    .local v2, networkCancelRunnable:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$NetworkCallback;
    new-instance v3, Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;

    iget-object v8, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->uiUpdateHandler:Landroid/os/Handler;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 229
    .local v3, container:Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;
    return-object v3
.end method

.method public loginWebStorage(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 7
    .parameter "a_strID"
    .parameter "a_strPassword"
    .parameter "serviceType"
    .parameter "isRefresh"

    .prologue
    const/16 v6, 0xa

    .line 44
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v2

    .line 45
    .local v2, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oWebEventListener:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;

    const/4 v4, 0x2

    const/4 v5, -0x7

    invoke-interface {v3, v4, v6, v5}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;->onResult(III)V

    .line 48
    const/4 v3, 0x0

    .line 65
    :goto_0
    return v3

    .line 51
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v6, v3}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->getWebInfoObj(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;

    move-result-object v0

    .line 60
    .local v0, container:Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;
    const-string v3, "LOGIN"

    invoke-virtual {v2, v3, p3, p1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->createThreadByType(Ljava/lang/String;ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/thread/LoginThread;

    .line 61
    .local v1, loginThread:Lcom/infraware/filemanager/webstorage/thread/LoginThread;
    invoke-virtual {v1, p2}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->setPassword(Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;->mRunnableSuccess:Ljava/lang/Runnable;

    iget-object v5, v0, Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;->mRunnableFail:Ljava/lang/Runnable;

    iget-object v6, v0, Lcom/infraware/filemanager/webstorage/thread/WebInfoContainer;->mRunnableCancel:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->setPostProcess(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 63
    invoke-virtual {v1, p4}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->setRefresh(Z)V

    .line 64
    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->start()V

    .line 65
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public makeNewFolder(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "a_strID"
    .parameter "a_strFolderName"
    .parameter "serviceType"

    .prologue
    const/16 v2, 0xd

    .line 135
    .line 136
    const-string v1, "FILE OPERATION"

    .line 135
    invoke-direct {p0, p1, v1, p3, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->createFileOperationThread(Ljava/lang/String;Ljava/lang/String;II)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;

    .line 139
    .local v0, oFileOperationThread:Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;
    if-nez v0, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 143
    :goto_0
    return v1

    .line 141
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p2}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->setOperation(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->start()V

    .line 143
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onInitLogin()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_runInitLogin:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    return-void
.end method

.method public onInitState()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_runInitState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    return-void
.end method

.method public onPostScan()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_runPostScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method

.method public onUpdateList()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_runUpdateList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method public onUpdateMedia()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_runUpdateMedia:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method public refreshData(Ljava/lang/String;I)Z
    .locals 4
    .parameter "a_strID"
    .parameter "serviceType"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x11

    .line 121
    .line 122
    const-string v1, "FILE OPERATION"

    .line 121
    invoke-direct {p0, p1, v1, p2, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->createFileOperationThread(Ljava/lang/String;Ljava/lang/String;II)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;

    .line 125
    .local v0, oFileOperationThread:Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;
    if-nez v0, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 130
    :goto_0
    return v1

    .line 128
    :cond_0
    invoke-virtual {v0, v2, v3, v3}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->setOperation(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->start()V

    .line 130
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "a_strID"
    .parameter "a_strOldName"
    .parameter "a_strNewName"
    .parameter "serviceType"

    .prologue
    const/4 v2, 0x4

    .line 147
    .line 148
    const-string v1, "FILE OPERATION"

    .line 147
    invoke-direct {p0, p1, v1, p4, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->createFileOperationThread(Ljava/lang/String;Ljava/lang/String;II)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;

    .line 151
    .local v0, oFileOperationThread:Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;
    if-nez v0, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 155
    :goto_0
    return v1

    .line 153
    :cond_0
    invoke-virtual {v0, v2, p2, p3}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->setOperation(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->start()V

    .line 155
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setEventListener(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;)V
    .locals 0
    .parameter "a_oWebEventListener"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->m_oWebEventListener:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;

    .line 39
    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "a_strID"
    .parameter "a_strLocalPath"
    .parameter "a_strNewName"
    .parameter "serviceType"

    .prologue
    .line 206
    .line 207
    const-string v1, "UPLOAD"

    .line 209
    const/16 v2, 0xb

    .line 206
    invoke-direct {p0, p1, v1, p4, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->createFileOperationThread(Ljava/lang/String;Ljava/lang/String;II)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;

    .line 210
    .local v0, oFileUploadThread:Lcom/infraware/filemanager/webstorage/thread/UploadThread;
    if-nez v0, :cond_0

    .line 211
    const/4 v1, 0x0

    .line 217
    :goto_0
    return v1

    .line 213
    :cond_0
    sget-object v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentPW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->setPassword(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, p2}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->setPath(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p3}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->setWebPath(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->start()V

    .line 217
    const/4 v1, 0x1

    goto :goto_0
.end method
