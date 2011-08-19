.class Lcom/asus/cm/CMService$MmiCallBackService;
.super Lcom/asus/cm/IMmiCallback$Stub;
.source "CMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmiCallBackService"
.end annotation


# instance fields
.field private mService:Lcom/asus/cm/CMService;

.field final synthetic this$0:Lcom/asus/cm/CMService;


# direct methods
.method constructor <init>(Lcom/asus/cm/CMService;)V
    .locals 1
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/asus/cm/CMService$MmiCallBackService;->this$0:Lcom/asus/cm/CMService;

    invoke-direct {p0}, Lcom/asus/cm/IMmiCallback$Stub;-><init>()V

    .line 752
    iget-object v0, p0, Lcom/asus/cm/CMService$MmiCallBackService;->this$0:Lcom/asus/cm/CMService;

    iput-object v0, p0, Lcom/asus/cm/CMService$MmiCallBackService;->mService:Lcom/asus/cm/CMService;

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
    .line 768
    invoke-static {p1}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->getfumoResult(I)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    move-result-object v0

    .line 769
    .local v0, result:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    if-eqz v0, :cond_0

    .line 770
    iget-object v1, p0, Lcom/asus/cm/CMService$MmiCallBackService;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v1, v0}, Lcom/asus/cm/CMService;->doCancelDMSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V

    .line 774
    :goto_0
    return-void

    .line 772
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

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

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
    .line 764
    iget-object v0, p0, Lcom/asus/cm/CMService$MmiCallBackService;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v0}, Lcom/asus/cm/CMService;->doDownload()V

    .line 765
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
    .line 782
    iget-object v0, p0, Lcom/asus/cm/CMService$MmiCallBackService;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v0}, Lcom/asus/cm/CMService;->doInstall()V

    .line 783
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
    .line 786
    iget-object v0, p0, Lcom/asus/cm/CMService$MmiCallBackService;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v0}, Lcom/asus/cm/CMService;->doPostpone()V

    .line 787
    return-void
.end method

.method public getDLDescriptor()Lcom/asus/cm/RBDownloadDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 760
    iget-object v0, p0, Lcom/asus/cm/CMService$MmiCallBackService;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v0}, Lcom/asus/cm/CMService;->getDLDescriptor()Lcom/asus/cm/RBDownloadDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getUIAlertParaDescriptor()Lcom/asus/cm/UIAlertParaDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/asus/cm/CMService$MmiCallBackService;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v0}, Lcom/asus/cm/CMService;->getUIAlertParaDescriptor()Lcom/asus/cm/UIAlertParaDescriptor;

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
    .line 755
    iget-object v0, p0, Lcom/asus/cm/CMService$MmiCallBackService;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/asus/cm/CMService;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V

    .line 757
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
    .line 777
    iget-object v0, p0, Lcom/asus/cm/CMService$MmiCallBackService;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v0, p1}, Lcom/asus/cm/CMService;->prepareDLNotification(Z)V

    .line 779
    return-void
.end method
