.class public Lcom/android/exchange/SecurityPolicyDelegate;
.super Ljava/lang/Object;
.source "SecurityPolicyDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearUnsupportedPolicies(Landroid/content/Context;Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;
    .locals 2
    .parameter "context"
    .parameter "policies"

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolicyService transaction failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isActive(Landroid/content/Context;Lcom/android/emailcommon/service/PolicySet;)Z
    .locals 1
    .parameter "context"
    .parameter "policies"

    .prologue
    .line 30
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Lcom/android/emailcommon/service/PolicySet;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 33
    :goto_0
    return v0

    .line 31
    :catch_0
    move-exception v0

    .line 33
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isActiveAdmin(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActiveAdmin()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported(Landroid/content/Context;Lcom/android/emailcommon/service/PolicySet;)Z
    .locals 1
    .parameter "context"
    .parameter "policies"

    .prologue
    .line 78
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isSupported(Lcom/android/emailcommon/service/PolicySet;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 81
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static policiesRequired(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 38
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy;->policiesRequired(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-void

    .line 39
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 40
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolicyService transaction failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static remoteWipe(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->remoteWipe()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 72
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolicyService transaction failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "newState"

    .prologue
    .line 54
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 56
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolicyService transaction failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static updatePolicies(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 46
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy;->updatePolicies(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 47
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 48
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolicyService transaction failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
