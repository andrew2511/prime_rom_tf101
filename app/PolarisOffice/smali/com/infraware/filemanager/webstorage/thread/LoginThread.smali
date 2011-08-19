.class public Lcom/infraware/filemanager/webstorage/thread/LoginThread;
.super Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
.source "LoginThread.java"


# instance fields
.field private isRefresh:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    .line 14
    const-string v0, "LOGIN"

    invoke-direct {p0, v0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->isRefresh:Z

    .line 16
    const-string v0, "LOGIN"

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->threadType:Ljava/lang/String;

    .line 18
    iput p1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->serviceType:I

    .line 19
    iput-object p2, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->userId:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 30
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v0

    .line 31
    .local v0, webManager:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    const/4 v6, 0x0

    .line 33
    .local v6, bResult:I
    iget-boolean v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->isRefresh:Z

    if-eqz v1, :cond_2

    .line 34
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->serviceType:I

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->refreshData(ILjava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const/4 v6, 0x1

    .line 41
    :goto_0
    invoke-static {v6}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setErrorCode(I)V

    .line 43
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->isCancel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->postCancel:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->postCancel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    :cond_0
    :goto_1
    return-void

    .line 37
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 39
    :cond_2
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->serviceType:I

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->password:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->login(ILjava/lang/String;Ljava/lang/String;ZLcom/infraware/filemanager/webstorage/thread/AbstractThread;)I

    move-result v6

    goto :goto_0

    .line 50
    :cond_3
    if-ne v6, v4, :cond_5

    .line 52
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->postSuccess:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 53
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->postSuccess:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :cond_4
    :goto_2
    invoke-super {p0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->done()V

    goto :goto_1

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->postFailure:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 58
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->postFailure:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public setRefresh(Z)V
    .locals 0
    .parameter "isRefresh"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->isRefresh:Z

    .line 25
    return-void
.end method
