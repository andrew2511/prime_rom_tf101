.class public Lcom/asus/dm/ConnectivityStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityStateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectivityStateReceiver"


# instance fields
.field private mRegMgr:Lcom/asus/dm/DMCRegistryManager;


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
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    const-string v6, "ConnectivityStateReceiver:onReceive"

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-string v6, "noConnectivity"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 33
    .local v5, noConnectivity:Z
    iget-object v6, p0, Lcom/asus/dm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    if-nez v6, :cond_0

    .line 34
    invoke-static {p1}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/dm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    .line 36
    :cond_0
    if-nez v5, :cond_1

    iget-object v6, p0, Lcom/asus/dm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v6}, Lcom/asus/dm/DMCRegistryManager;->getDLResume()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/asus/dm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v6}, Lcom/asus/dm/DMCRegistryManager;->getState()Lcom/asus/dm/DMClient$DMClientState;

    move-result-object v6

    sget-object v7, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_UPDATE_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    if-eq v6, v7, :cond_1

    .line 37
    const-string v6, "ConnectivityStateReceiver"

    const-string v7, "===== call mFumo.resumeDLSession() !!!! ====="

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.asus.dm.DMService.resumeDownload"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, i:Landroid/content/Intent;
    const-class v6, Lcom/asus/dm/DMService;

    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    iget-object v6, p0, Lcom/asus/dm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v6}, Lcom/asus/dm/DMCRegistryManager;->getBootCompletedDelay()Z

    move-result v6

    if-nez v6, :cond_5

    .line 48
    if-nez v5, :cond_2

    iget-object v6, p0, Lcom/asus/dm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v6}, Lcom/asus/dm/DMCRegistryManager;->getDLResume()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/asus/dm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v6}, Lcom/asus/dm/DMCRegistryManager;->getState()Lcom/asus/dm/DMClient$DMClientState;

    move-result-object v6

    sget-object v7, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_DOWNLOAD_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    if-eq v6, v7, :cond_2

    .line 52
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_3

    .line 55
    const-string v6, "===== ConnectivityManager is NULL"

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
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
    const-string v6, "===== ActiveNetworkInfo is NULL"

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 65
    .local v4, nType:I
    iget-object v6, p0, Lcom/asus/dm/ConnectivityStateReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v6}, Lcom/asus/dm/DMCRegistryManager;->getLastFotaPollingSuccess()Z

    move-result v3

    .line 66
    .local v3, lastFotaPollingSuccess:Z
    const-string v6, "ConnectivityStateReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===== Network type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",  LastFotaPollingSuccess: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ====="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 71
    :pswitch_0
    if-nez v3, :cond_2

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.asus.dm.DMService.doFotaPolling"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .restart local v1       #i:Landroid/content/Intent;
    const-class v6, Lcom/asus/dm/DMService;

    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 83
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v3           #lastFotaPollingSuccess:Z
    .end local v4           #nType:I
    :cond_5
    const-string v6, "===== Bypassing bDelay(30s), do nothing ====="

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
