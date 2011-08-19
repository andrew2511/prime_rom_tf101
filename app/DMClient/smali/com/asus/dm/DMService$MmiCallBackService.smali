.class Lcom/asus/dm/DMService$MmiCallBackService;
.super Lcom/asus/dm/IMmiCallback$Stub;
.source "DMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmiCallBackService"
.end annotation


# instance fields
.field private mService:Lcom/asus/dm/DMService;

.field final synthetic this$0:Lcom/asus/dm/DMService;


# direct methods
.method constructor <init>(Lcom/asus/dm/DMService;)V
    .locals 1
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/asus/dm/DMService$MmiCallBackService;->this$0:Lcom/asus/dm/DMService;

    invoke-direct {p0}, Lcom/asus/dm/IMmiCallback$Stub;-><init>()V

    .line 688
    iget-object v0, p0, Lcom/asus/dm/DMService$MmiCallBackService;->this$0:Lcom/asus/dm/DMService;

    iput-object v0, p0, Lcom/asus/dm/DMService$MmiCallBackService;->mService:Lcom/asus/dm/DMService;

    return-void
.end method


# virtual methods
.method public doCancelDMSession(I)V
    .locals 3
    .parameter "resultCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {p1}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->getfumoResult(I)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    move-result-object v0

    .line 705
    .local v0, result:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    if-eqz v0, :cond_0

    .line 706
    iget-object v1, p0, Lcom/asus/dm/DMService$MmiCallBackService;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v1, v0}, Lcom/asus/dm/DMService;->doCancelDMSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V

    .line 710
    :goto_0
    return-void

    .line 708
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doDownload()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 700
    iget-object v0, p0, Lcom/asus/dm/DMService$MmiCallBackService;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v0}, Lcom/asus/dm/DMService;->doDownload()V

    .line 701
    return-void
.end method

.method public doInstall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Lcom/asus/dm/DMService$MmiCallBackService;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v0}, Lcom/asus/dm/DMService;->doInstall()V

    .line 719
    return-void
.end method

.method public doPostpone()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lcom/asus/dm/DMService$MmiCallBackService;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v0}, Lcom/asus/dm/DMService;->doPostpone()V

    .line 723
    return-void
.end method

.method public getDLDescriptor()Lcom/asus/dm/RBDownloadDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 696
    iget-object v0, p0, Lcom/asus/dm/DMService$MmiCallBackService;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v0}, Lcom/asus/dm/DMService;->getDLDescriptor()Lcom/asus/dm/RBDownloadDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPostQuota()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 731
    iget-object v0, p0, Lcom/asus/dm/DMService$MmiCallBackService;->this$0:Lcom/asus/dm/DMService;

    invoke-virtual {v0}, Lcom/asus/dm/DMService;->getPostQuota()I

    move-result v0

    return v0
.end method

.method public getUIAlertParaDescriptor()Lcom/asus/dm/UIAlertParaDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 726
    iget-object v0, p0, Lcom/asus/dm/DMService$MmiCallBackService;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v0}, Lcom/asus/dm/DMService;->getUIAlertParaDescriptor()Lcom/asus/dm/UIAlertParaDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    .locals 1
    .parameter "pEventId"
    .parameter "pBitflags"
    .parameter "pConfirmed"
    .parameter "pUserInput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/asus/dm/DMService$MmiCallBackService;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/asus/dm/DMService;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V

    .line 693
    return-void
.end method

.method public prepareDLNotification(Z)V
    .locals 1
    .parameter "notifyUser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lcom/asus/dm/DMService$MmiCallBackService;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v0, p1}, Lcom/asus/dm/DMService;->prepareDLNotification(Z)V

    .line 715
    return-void
.end method
