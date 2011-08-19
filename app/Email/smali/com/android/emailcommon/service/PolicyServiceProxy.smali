.class public Lcom/android/emailcommon/service/PolicyServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "PolicyServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IPolicyService;


# instance fields
.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IPolicyService;


# direct methods
.method static synthetic access$002(Lcom/android/emailcommon/service/PolicyServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy$1;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/PolicySet;)V

    const-string v1, "clearUnsupportedPolicies"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 57
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    .line 61
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object p0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/emailcommon/service/PolicySet;

    move-object v0, p0

    goto :goto_0
.end method

.method public isActive(Lcom/android/emailcommon/service/PolicySet;)Z
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy$2;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/PolicySet;)V

    const-string v1, "isActive"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 76
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    .line 80
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object p0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isActiveAdmin()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$3;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy$3;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;)V

    const-string v1, "isActiveAdmin"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 95
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    .line 99
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object p0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isSupported(Lcom/android/emailcommon/service/PolicySet;)Z
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$4;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy$4;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/PolicySet;)V

    const-string v1, "isSupported"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 114
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    .line 118
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object p0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 1
    .parameter "binder"

    .prologue
    .line 43
    invoke-static {p1}, Lcom/android/emailcommon/service/IPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;

    .line 44
    return-void
.end method

.method public policiesRequired(J)V
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy$5;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;J)V

    const-string v1, "policiesRequired"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 133
    return-void
.end method

.method public remoteWipe()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$6;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy$6;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;)V

    const-string v1, "remoteWipe"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 142
    return-void
.end method

.method public setAccountHoldFlag(JZ)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/PolicyServiceProxy$7;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;JZ)V

    const-string v1, "setAccountHoldFlag"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 151
    return-void
.end method

.method public updatePolicies(J)V
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy$8;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;J)V

    const-string v1, "updatePolicies"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 160
    return-void
.end method
