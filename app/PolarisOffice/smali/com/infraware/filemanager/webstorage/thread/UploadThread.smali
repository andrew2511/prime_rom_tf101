.class public Lcom/infraware/filemanager/webstorage/thread/UploadThread;
.super Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
.source "UploadThread.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    .line 13
    const-string v0, "UPLOAD"

    invoke-direct {p0, v0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v0, "UPLOAD"

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->threadType:Ljava/lang/String;

    .line 17
    iput p1, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->serviceType:I

    .line 18
    iput-object p2, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->userId:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 26
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v0

    .line 27
    .local v0, webManager:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->serviceType:I

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->webPath:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->upload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)I

    move-result v6

    .line 28
    .local v6, bResult:I
    invoke-static {v6}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setErrorCode(I)V

    .line 29
    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->postSuccess:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->postSuccess:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->done()V

    .line 50
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->isCancel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->postCancel:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->postCancel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    goto :goto_0

    .line 44
    :cond_3
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->postFailure:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->postFailure:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
