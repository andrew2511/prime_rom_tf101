.class public Lcom/android/vending/GTalkServiceHelper;
.super Ljava/lang/Object;
.source "GTalkServiceHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mGTalkServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/vending/GTalkServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/vending/GTalkServiceHelper$1;-><init>(Lcom/android/vending/GTalkServiceHelper;)V

    iput-object v0, p0, Lcom/android/vending/GTalkServiceHelper;->mGTalkServiceConnection:Landroid/content/ServiceConnection;

    .line 39
    iput-object p1, p0, Lcom/android/vending/GTalkServiceHelper;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/android/vending/GTalkServiceHelper;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/vending/GTalkServiceHelper;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object p1
.end method

.method private getGTalkConnection()Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 4

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/vending/GTalkServiceHelper;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    if-nez v2, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/vending/GTalkServiceHelper;->rebindService()V

    .line 117
    const/4 v2, 0x0

    .line 130
    :goto_0
    return-object v2

    .line 120
    :cond_0
    const/4 v1, 0x0

    .line 122
    .local v1, retVal:Lcom/google/android/gtalkservice/IGTalkConnection;
    :try_start_0
    iget-object v2, p0, Lcom/android/vending/GTalkServiceHelper;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v2}, Lcom/google/android/gtalkservice/IGTalkService;->getDefaultConnection()Lcom/google/android/gtalkservice/IGTalkConnection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 127
    :goto_1
    if-nez v1, :cond_1

    .line 128
    const-string v2, "Unable to get service connection using default connection"

    invoke-static {v2}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    :cond_1
    move-object v2, v1

    .line 130
    goto :goto_0

    .line 123
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 124
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to get service connection, caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getLastHeartbeatTimestamp()J
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->LAST_HEARTBEAT_TIMESTAMP:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private rebindService()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/vending/GTalkServiceHelper;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/vending/GTalkServiceHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vending/GTalkServiceHelper;->mGTalkServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/GTalkServiceHelper;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/GTalkServiceHelper;->bindService()V

    .line 98
    return-void
.end method

.method private setLastHeartbeatTimestamp(J)V
    .locals 2
    .parameter "timestamp"

    .prologue
    .line 142
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->LAST_HEARTBEAT_TIMESTAMP:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 143
    return-void
.end method


# virtual methods
.method protected bindService()V
    .locals 4

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/vending/GTalkServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/vending/GTalkServiceHelper;->mGTalkServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-string v0, "Failed to bind service"

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected getHeartbeatIntervalMs(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 154
    sget-object v0, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_HEARTBEAT_FREQUENCY_MS:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v0}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public requestSendHeartbeat()Z
    .locals 9

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 60
    .local v3, timeNow:J
    invoke-direct {p0}, Lcom/android/vending/GTalkServiceHelper;->getLastHeartbeatTimestamp()J

    move-result-wide v7

    sub-long v5, v3, v7

    .line 61
    .local v5, timeSinceLastHeartbeat:J
    iget-object v7, p0, Lcom/android/vending/GTalkServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/android/vending/GTalkServiceHelper;->getHeartbeatIntervalMs(Landroid/content/Context;)J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    .line 62
    const/4 v7, 0x0

    .line 79
    :goto_0
    return v7

    .line 64
    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/android/vending/GTalkServiceHelper;->setLastHeartbeatTimestamp(J)V

    .line 65
    invoke-direct {p0}, Lcom/android/vending/GTalkServiceHelper;->getGTalkConnection()Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 66
    .local v0, gTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;
    if-eqz v0, :cond_1

    .line 68
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gtalkservice/IGTalkConnection;->sendHeartbeat()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :cond_1
    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, re:Landroid/os/RemoteException;
    const-string v7, "RemoteException using service connection"

    invoke-static {v7}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 71
    .end local v2           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 74
    .local v1, ise:Ljava/lang/IllegalStateException;
    const-string v7, "IllegalStateException using service connection"

    invoke-static {v7}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unbindService()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/vending/GTalkServiceHelper;->mGTalkServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/vending/GTalkServiceHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vending/GTalkServiceHelper;->mGTalkServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/GTalkServiceHelper;->mGTalkServiceConnection:Landroid/content/ServiceConnection;

    .line 47
    :cond_0
    return-void
.end method
