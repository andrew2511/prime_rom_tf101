.class Lnet/yostore/aws/service/AWSService$1;
.super Lnet/yostore/aws/service/AWSServiceInterface$Stub;
.source "AWSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/AWSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/AWSService;


# direct methods
.method constructor <init>(Lnet/yostore/aws/service/AWSService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    .line 384
    invoke-direct {p0}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addUploadItem(Lnet/yostore/aws/sqlite/entity/UploadItem;)Z
    .locals 1
    .parameter "ui"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v0}, Lnet/yostore/aws/service/AWSService;->access$0(Lnet/yostore/aws/service/AWSService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->insertUploadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    .line 485
    const/4 v0, 0x1

    return v0
.end method

.method public addUploadItemList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 471
    .local p1, uiList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 473
    .local v0, items:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 477
    const/4 v2, 0x1

    return v2

    .line 474
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/sqlite/entity/UploadItem;

    .line 475
    .local v1, ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    iget-object v2, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v2}, Lnet/yostore/aws/service/AWSService;->access$0(Lnet/yostore/aws/service/AWSService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->insertUploadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    goto :goto_0
.end method

.method public clearNotification()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v0}, Lnet/yostore/aws/service/AWSService;->access$9(Lnet/yostore/aws/service/AWSService;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 458
    return-void
.end method

.method public clearUploadQueue(Ljava/lang/String;)V
    .locals 1
    .parameter "userid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v0}, Lnet/yostore/aws/service/AWSService;->access$0(Lnet/yostore/aws/service/AWSService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->clearUploadQueue(Landroid/content/Context;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public createFolder(JLjava/lang/String;Ljava/lang/String;)J
    .locals 2
    .parameter "pfid"
    .parameter "fname"
    .parameter "attr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v0, p1, p2, p3, p4}, Lnet/yostore/aws/service/AWSService;->access$5(Lnet/yostore/aws/service/AWSService;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMySyncFolderId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v0}, Lnet/yostore/aws/service/AWSService;->access$6(Lnet/yostore/aws/service/AWSService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "uid"
    .parameter "pwd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    new-instance v1, Lnet/yostore/aws/model/LoginModel;

    iget-object v3, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v3}, Lnet/yostore/aws/service/AWSService;->access$0(Lnet/yostore/aws/service/AWSService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v4}, Lnet/yostore/aws/service/AWSService;->access$1(Lnet/yostore/aws/service/AWSService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lnet/yostore/aws/model/LoginModel;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 391
    .local v1, loginModel:Lnet/yostore/aws/model/LoginModel;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/yostore/utility/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, hashedPwd:Ljava/lang/String;
    iget-object v3, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v3}, Lnet/yostore/aws/service/AWSService;->access$1(Lnet/yostore/aws/service/AWSService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v3}, Lnet/yostore/aws/service/AWSService;->access$1(Lnet/yostore/aws/service/AWSService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v3}, Lnet/yostore/aws/service/AWSService;->access$1(Lnet/yostore/aws/service/AWSService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v3}, Lnet/yostore/aws/service/AWSService;->access$1(Lnet/yostore/aws/service/AWSService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    invoke-virtual {v1}, Lnet/yostore/aws/model/LoginModel;->validateLogin()I

    move-result v3

    .line 397
    :goto_0
    return v3

    .line 396
    :cond_0
    invoke-virtual {v1, p1, v0}, Lnet/yostore/aws/model/LoginModel;->login(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, returnVal:I
    move v3, v2

    .line 397
    goto :goto_0
.end method

.method public logout()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 405
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 406
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/yostore/aws/service/AWSService;->access$2(Lnet/yostore/aws/service/AWSService;Lnet/yostore/aws/api/ApiConfig;)V

    .line 407
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/yostore/aws/service/AWSService;->access$3(Lnet/yostore/aws/service/AWSService;Z)V

    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public pauseUpload()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v0}, Lnet/yostore/aws/service/AWSService;->access$8(Lnet/yostore/aws/service/AWSService;)V

    .line 451
    return-void
.end method

.method public resetService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-virtual {v0}, Lnet/yostore/aws/service/AWSService;->onDestroy()V

    .line 465
    return-void
.end method

.method public restartUpload()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v0}, Lnet/yostore/aws/service/AWSService;->access$10(Lnet/yostore/aws/service/AWSService;)V

    .line 493
    return-void
.end method

.method public startUpload()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v0}, Lnet/yostore/aws/service/AWSService;->access$7(Lnet/yostore/aws/service/AWSService;)V

    .line 444
    return-void
.end method

.method public updateApiConfig()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$1;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v0}, Lnet/yostore/aws/service/AWSService;->access$4(Lnet/yostore/aws/service/AWSService;)V

    .line 416
    return-void
.end method
