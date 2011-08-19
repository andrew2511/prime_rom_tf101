.class public Lcom/google/android/gsf/login/NetworkMonitoringActivity;
.super Landroid/app/Activity;
.source "NetworkMonitoringActivity.java"

# interfaces
.implements Lcom/google/android/gsf/login/NetworkMonitor$Callback;


# instance fields
.field protected mBackendStub:Lcom/google/android/gsf/login/BackendStub;

.field private mGls:Lcom/google/android/gsf/IGoogleLoginService;

.field private mGlsActionQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkMonitor:Lcom/google/android/gsf/login/NetworkMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mNetworkMonitor:Lcom/google/android/gsf/login/NetworkMonitor;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mGlsActionQueue:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public hasNetworkConnection()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mNetworkMonitor:Lcom/google/android/gsf/login/NetworkMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mNetworkMonitor:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/NetworkMonitor;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Lcom/google/android/gsf/login/BackendStub;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BackendStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    .line 50
    new-instance v0, Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gsf/login/NetworkMonitor;-><init>(Landroid/content/Context;Lcom/google/android/gsf/login/NetworkMonitor$Callback;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mNetworkMonitor:Lcom/google/android/gsf/login/NetworkMonitor;

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 57
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mNetworkMonitor:Lcom/google/android/gsf/login/NetworkMonitor;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mNetworkMonitor:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/NetworkMonitor;->close()V

    .line 59
    iput-object v1, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mNetworkMonitor:Lcom/google/android/gsf/login/NetworkMonitor;

    .line 60
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/BackendStub;->setGls(Lcom/google/android/gsf/IGoogleLoginService;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onGlsConnected(Lcom/google/android/gsf/IGoogleLoginService;)V
    .locals 4
    .parameter "gls"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mGls:Lcom/google/android/gsf/IGoogleLoginService;

    .line 74
    iget-object v3, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    invoke-virtual {v3, p1}, Lcom/google/android/gsf/login/BackendStub;->setGls(Lcom/google/android/gsf/IGoogleLoginService;)V

    .line 77
    iget-object v1, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mGlsActionQueue:Ljava/util/ArrayList;

    .line 78
    .local v1, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->mGlsActionQueue:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .local v2, r:Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 80
    .end local v2           #r:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public onNetworkConnected()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "GoogleLoginService"

    const-string v1, "Network is connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public onNetworkDisconnected()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "GoogleLoginService"

    const-string v1, "Network is disconnected, which may affect account setup."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "glsOptionData"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 126
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 127
    const-string v1, "glsOptionData"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 129
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/android/gsf/login/NetworkMonitoringActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "glsOptionData"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 111
    const-string v1, "glsOptionData"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 113
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    return-void
.end method
