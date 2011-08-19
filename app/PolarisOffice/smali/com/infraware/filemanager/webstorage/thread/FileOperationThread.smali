.class public Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;
.super Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
.source "FileOperationThread.java"


# instance fields
.field private m_nFileOperation:I

.field private m_oDeleteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_strDestName:Ljava/lang/String;

.field private m_strSrcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    .line 17
    const-string v0, "FILE OPERATION"

    invoke-direct {p0, v0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "FILE OPERATION"

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->threadType:Ljava/lang/String;

    .line 21
    iput p1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->serviceType:I

    .line 22
    iput-object p2, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->userId:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 42
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v0

    .line 43
    .local v0, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    const/4 v6, 0x0

    .line 45
    .local v6, bResult:Z
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_nFileOperation:I

    sparse-switch v1, :sswitch_data_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 48
    :sswitch_0
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->serviceType:I

    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_strDestName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->isExist(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 49
    if-eqz v6, :cond_3

    .line 82
    :cond_1
    :goto_1
    if-eqz v6, :cond_6

    .line 84
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->postSuccess:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->postSuccess:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    :cond_2
    :goto_2
    invoke-super {p0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->done()V

    goto :goto_0

    .line 51
    :cond_3
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->serviceType:I

    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_strDestName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->createFolder(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 52
    if-nez v6, :cond_1

    goto :goto_1

    .line 55
    :sswitch_1
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->serviceType:I

    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_strSrcName:Ljava/lang/String;

    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_strDestName:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->rename(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z

    move-result v6

    .line 56
    goto :goto_1

    .line 58
    :sswitch_2
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->serviceType:I

    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_strDestName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->removeFile(ILjava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z

    move-result v6

    .line 59
    goto :goto_1

    .line 61
    :sswitch_3
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->serviceType:I

    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_strDestName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->removeFolder(ILjava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z

    move-result v6

    .line 62
    goto :goto_1

    .line 64
    :sswitch_4
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->serviceType:I

    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->refreshData(ILjava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z

    move-result v6

    .line 65
    goto :goto_1

    .line 67
    :sswitch_5
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_oDeleteList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 69
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_oDeleteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v7, v1, :cond_4

    .line 71
    if-nez v6, :cond_1

    .line 73
    if-eqz v6, :cond_5

    const/4 v1, 0x1

    :goto_4
    invoke-static {v1}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setErrorCode(I)V

    goto :goto_1

    .line 70
    :cond_4
    iget v2, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->serviceType:I

    sget-object v3, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_oDeleteList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->removeFile(ILjava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z

    move-result v6

    .line 69
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 73
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 89
    .end local v7           #i:I
    :cond_6
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->isCancel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 91
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->postCancel:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->postCancel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 96
    :cond_7
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->postFailure:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->postFailure:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0xd -> :sswitch_0
        0x10 -> :sswitch_3
        0x11 -> :sswitch_4
        0x14 -> :sswitch_5
    .end sparse-switch
.end method

.method public setMultiOperation(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "a_nFileOperation"
    .parameter "a_strSrcName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, a_oDeleteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput p1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_nFileOperation:I

    .line 35
    iput-object p2, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_strSrcName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_oDeleteList:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setOperation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "a_nFileOperation"
    .parameter "a_strSrcName"
    .parameter "a_strDestName"

    .prologue
    .line 27
    iput p1, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_nFileOperation:I

    .line 28
    iput-object p2, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_strSrcName:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;->m_strDestName:Ljava/lang/String;

    .line 30
    return-void
.end method
