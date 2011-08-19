.class public Lcom/android/emailcommon/service/AccountServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "AccountServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IAccountService;


# instance fields
.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IAccountService;


# direct methods
.method static synthetic access$000(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public accountDeleted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$4;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy$4;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;)V

    const-string v1, "accountDeleted"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 80
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountColor(J)I
    .locals 2
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$6;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "getAccountColor"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 101
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 102
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 103
    const v0, -0xffff01

    .line 105
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object p0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "accountType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$7;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/AccountServiceProxy$7;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/String;)V

    const-string v1, "getConfigurationData"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 116
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 117
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object p0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Bundle;

    move-object v0, p0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$8;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy$8;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;)V

    const-string v1, "getDeviceId"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 131
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 132
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object p0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public notifyLoginFailed(J)V
    .locals 2
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$1;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "notifyLoginFailed"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 53
    return-void
.end method

.method public notifyLoginSucceeded(J)V
    .locals 2
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$2;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "notifyLoginSucceeded"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 62
    return-void
.end method

.method public notifyNewMessages(J)V
    .locals 2
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$3;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "notifyNewMessages"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 71
    return-void
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 1
    .parameter "binder"

    .prologue
    .line 39
    invoke-static {p1}, Lcom/android/emailcommon/service/IAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;

    .line 40
    return-void
.end method

.method public restoreAccountsIfNeeded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$5;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy$5;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;)V

    const-string v1, "restoreAccountsIfNeeded"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 90
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 91
    return-void
.end method
