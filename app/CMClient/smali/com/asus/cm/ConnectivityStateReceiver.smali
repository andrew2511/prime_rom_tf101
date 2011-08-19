.class public Lcom/asus/cm/ConnectivityStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityStateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectivityStateReceiver"


# instance fields
.field private mRegMgr:Lcom/asus/cm/CMCRegistryManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    const-string v5, "ConnectivityStateReceiver:onReceive"

    invoke-static {p0, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-string v5, "noConnectivity"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 33
    .local v4, noConnectivity:Z
    iget-object v5, p0, Lcom/asus/cm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    if-nez v5, :cond_0

    .line 34
    invoke-static {p1}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/cm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    .line 36
    :cond_0
    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/asus/cm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v5}, Lcom/asus/cm/CMCRegistryManager;->getDLResume()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/asus/cm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v5}, Lcom/asus/cm/CMCRegistryManager;->getState()Lcom/asus/cm/CMClient$DMClientState;

    move-result-object v5

    sget-object v6, Lcom/asus/cm/CMClient$DMClientState;->CONFIRM_UPDATE_DIALOG:Lcom/asus/cm/CMClient$DMClientState;

    if-eq v5, v6, :cond_1

    .line 37
    const-string v5, "ConnectivityStateReceiver"

    const-string v6, "===== call mFumo.resumeDLSession() !!!! ====="

    invoke-static {v5, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.asus.dm.DMService.resumeDownload"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, i:Landroid/content/Intent;
    const-class v5, Lcom/asus/cm/CMService;

    invoke-virtual {v1, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/asus/cm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v5}, Lcom/asus/cm/CMCRegistryManager;->getBootCompletedDelay()Z

    move-result v5

    if-nez v5, :cond_5

    .line 48
    if-nez v4, :cond_2

    iget-object v5, p0, Lcom/asus/cm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v5}, Lcom/asus/cm/CMCRegistryManager;->getDLResume()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/asus/cm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v5}, Lcom/asus/cm/CMCRegistryManager;->getState()Lcom/asus/cm/CMClient$DMClientState;

    move-result-object v5

    sget-object v6, Lcom/asus/cm/CMClient$DMClientState;->CONFIRM_DOWNLOAD_DIALOG:Lcom/asus/cm/CMClient$DMClientState;

    if-eq v5, v6, :cond_2

    .line 52
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_3

    .line 55
    const-string v5, "===== ConnectivityManager is NULL"

    invoke-static {p0, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_2
    :goto_0
    return-void

    .line 59
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 60
    .local v2, info:Landroid/net/NetworkInfo;
    if-nez v2, :cond_4

    .line 61
    const-string v5, "===== ActiveNetworkInfo is NULL"

    invoke-static {p0, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 66
    .local v3, nType:I
    goto :goto_0

    .line 73
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v3           #nType:I
    :cond_5
    const-string v5, "===== Bypassing bDelay(30s), do nothing ====="

    invoke-static {p0, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
