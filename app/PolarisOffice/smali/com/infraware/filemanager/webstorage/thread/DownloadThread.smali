.class public Lcom/infraware/filemanager/webstorage/thread/DownloadThread;
.super Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
.source "DownloadThread.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    .line 15
    const-string v0, "DOWNLOAD"

    invoke-direct {p0, v0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, "DOWNLOAD"

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->threadType:Ljava/lang/String;

    .line 19
    iput p1, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->serviceType:I

    .line 20
    iput-object p2, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->userId:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 28
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v0

    .line 29
    .local v0, webManager:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->serviceType:I

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->webPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->path:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->download(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)I

    move-result v6

    .line 30
    .local v6, bResult:I
    invoke-static {v6}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setErrorCode(I)V

    .line 32
    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->postSuccess:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 35
    new-instance v7, Lcom/infraware/filemanager/bookclip/BookClipHelper;

    invoke-direct {v7}, Lcom/infraware/filemanager/bookclip/BookClipHelper;-><init>()V

    .line 36
    .local v7, book:Lcom/infraware/filemanager/bookclip/BookClipHelper;
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->path:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->DeleteFile(Ljava/lang/String;)Z

    .line 38
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->postSuccess:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .end local v7           #book:Lcom/infraware/filemanager/bookclip/BookClipHelper;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->done()V

    .line 58
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->isCancel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->postCancel:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->postCancel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    goto :goto_0

    .line 52
    :cond_3
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->postFailure:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;->postFailure:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
