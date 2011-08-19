.class public Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;
.super Landroid/content/BroadcastReceiver;
.source "GTalkHeartbeatAlarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$2;,
        Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;
    }
.end annotation


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnection:Lorg/jivesoftware/smack/XMPPConnection;

.field private mContext:Landroid/content/Context;

.field private mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

.field private mHeartbeatAlarmIntent:Landroid/content/Intent;

.field private mHeartbeatAlarmSender:Landroid/app/PendingIntent;

.field private mHeartbeatInterval:J

.field private final mHeartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

.field private mNextAlarmTime:J

.field private mResetConnectionTs:J

.field private mTimer:J

.field private mUseWifiHeartbeatInterval:Z

.field private mWaitingForAck:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V
    .locals 5
    .parameter "context"
    .parameter "alarmManager"
    .parameter "gTalkConnection"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    .line 87
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    .line 88
    new-instance v0, Lorg/jivesoftware/smack/packet/HeartbeatStat;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jivesoftware/smack/packet/HeartbeatStat;-><init>(ZJLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    .line 89
    return-void
.end method

.method private asyncResetConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 320
    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$1;

    const-string v1, "reset-XMPP-connection"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$1;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;Ljava/lang/String;Lorg/jivesoftware/smack/XMPPConnection;)V

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$1;->start()V

    .line 326
    return-void
.end method

.method private cancelAlarm()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatAlarmSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 237
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mNextAlarmTime:J

    .line 238
    return-void
.end method

.method private computeHeartbeatInterval()J
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 189
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 191
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->computeHeartbeatType()Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    move-result-object v6

    .line 193
    .local v6, type:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;
    sget-object v8, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$2;->$SwitchMap$com$google$android$gsf$gtalkservice$GTalkHeartbeatAlarm$HeartbeatType:[I

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 204
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getNosyncHeartbeatInterval()I

    move-result v8

    int-to-long v2, v8

    .line 209
    .local v2, retVal:J
    :goto_0
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getHeartbeatInterval()J

    move-result-wide v4

    .line 210
    .local v4, serverInterval:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    .line 211
    move-wide v2, v4

    .line 214
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mUseWifiHeartbeatInterval:Z

    .line 217
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkType()I

    move-result v1

    .line 219
    .local v1, lastNetworkType:I
    if-ne v1, v10, :cond_1

    .line 220
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getWifiHeartbeatInterval()I

    move-result v7

    .line 222
    .local v7, wifiHeartbeatInterval:I
    int-to-long v8, v7

    cmp-long v8, v2, v8

    if-lez v8, :cond_1

    .line 223
    int-to-long v2, v7

    .line 224
    iput-boolean v10, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mUseWifiHeartbeatInterval:Z

    .line 225
    sget-boolean v8, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v8, :cond_1

    const-string v8, "use wifi heartbeat interval"

    invoke-direct {p0, v8}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 229
    .end local v7           #wifiHeartbeatInterval:I
    :cond_1
    return-wide v2

    .line 195
    .end local v1           #lastNetworkType:I
    .end local v2           #retVal:J
    .end local v4           #serverInterval:J
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getActiveHeartbeatInterval()I

    move-result v8

    int-to-long v2, v8

    .line 196
    .restart local v2       #retVal:J
    goto :goto_0

    .line 198
    .end local v2           #retVal:J
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getIdleHeartbeatInterval()I

    move-result v8

    int-to-long v2, v8

    .line 199
    .restart local v2       #retVal:J
    goto :goto_0

    .line 201
    .end local v2           #retVal:J
    :pswitch_2
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getSyncHeartbeatInterval()I

    move-result v8

    int-to-long v2, v8

    .line 202
    .restart local v2       #retVal:J
    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private computeHeartbeatType()Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;
    .locals 5

    .prologue
    .line 157
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v0

    .line 158
    .local v0, imSession:Lcom/google/android/gsf/gtalkservice/ImSession;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    .line 161
    .local v1, presence:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v3

    .line 164
    .local v3, show:Lcom/google/android/gtalkservice/Presence$Show;
    sget-object v4, Lcom/google/android/gtalkservice/Presence$Show;->AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/google/android/gtalkservice/Presence$Show;->EXTENDED_AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    if-ne v3, v4, :cond_1

    .line 165
    :cond_0
    sget-object v2, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->IDLE:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    .line 177
    .end local v3           #show:Lcom/google/android/gtalkservice/Presence$Show;
    .local v2, retVal:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;
    :goto_0
    return-object v2

    .line 167
    .end local v2           #retVal:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;
    .restart local v3       #show:Lcom/google/android/gtalkservice/Presence$Show;
    :cond_1
    sget-object v2, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->ACTIVE:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    .restart local v2       #retVal:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;
    goto :goto_0

    .line 170
    .end local v2           #retVal:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;
    .end local v3           #show:Lcom/google/android/gtalkservice/Presence$Show;
    :cond_2
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isAutoSyncEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 171
    sget-object v2, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->SYNC:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    .restart local v2       #retVal:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;
    goto :goto_0

    .line 173
    .end local v2           #retVal:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;
    :cond_3
    sget-object v2, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;->NOSYNC:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;

    .restart local v2       #retVal:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm$HeartbeatType;
    goto :goto_0
.end method

.method private getHeartbeatAckInterval()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getHeartbeatAckTimeout()I

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 433
    const-string v0, "GTalkService/c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HeartbeatAlarm] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void
.end method

.method private resetHeartbeatTimer()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->cancelAlarm()V

    .line 347
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->setAlarm()V

    .line 348
    return-void
.end method

.method private setAlarm()V
    .locals 7

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mTimer:J

    .line 134
    .local v0, oldTimer:J
    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mWaitingForAck:Z

    if-eqz v2, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->getHeartbeatAckInterval()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mTimer:J

    .line 142
    :goto_0
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mTimer:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlarm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mTimer:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s from now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 146
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mTimer:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mNextAlarmTime:J

    .line 147
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mNextAlarmTime:J

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatAlarmSender:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 150
    return-void

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->computeHeartbeatInterval()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatInterval:J

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mTimer:J

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->getHeartbeatStat()Lorg/jivesoftware/smack/packet/HeartbeatStat;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatInterval:J

    iput-wide v3, v2, Lorg/jivesoftware/smack/packet/HeartbeatStat;->interval:J

    goto :goto_0
.end method


# virtual methods
.method public clearAlarm()V
    .locals 1

    .prologue
    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatAlarmIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 246
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_0

    const-string v0, "clearAlarm"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->cancelAlarm()V

    .line 249
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatAlarmIntent:Landroid/content/Intent;

    .line 251
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatAlarmSender:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatAlarmSender:Landroid/app/PendingIntent;

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mWaitingForAck:Z

    .line 258
    :cond_1
    :goto_0
    monitor-exit p0

    .line 259
    return-void

    .line 255
    :cond_2
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_1

    .line 256
    const-string v0, "clearAlarm: alarm not set!"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 11
    .parameter "out"

    .prologue
    const-wide/16 v9, 0x0

    const-wide/16 v7, 0x3e8

    .line 410
    const-string v4, "Heartbeat"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    const-string v4, "---------"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Heartbeat interval: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatInterval:J

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "heartbeat type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mUseWifiHeartbeatInterval:Z

    if-eqz v5, :cond_1

    const-string v5, "wifi"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current timer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mTimer:J

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WaitingForAck: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mWaitingForAck:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 418
    .local v2, now:J
    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mNextAlarmTime:J

    sub-long/2addr v4, v2

    div-long v0, v4, v7

    .line 419
    .local v0, diff:J
    cmp-long v4, v0, v9

    if-lez v4, :cond_2

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next heartbeat alarm will trigger in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    :goto_1
    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mResetConnectionTs:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_0

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Heartbeat reset connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mResetConnectionTs:J

    sub-long v5, v2, v5

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ago"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    :cond_0
    return-void

    .line 413
    .end local v0           #diff:J
    .end local v2           #now:J
    :cond_1
    const-string v5, "cell"

    goto/16 :goto_0

    .line 423
    .restart local v0       #diff:J
    .restart local v2       #now:J
    :cond_2
    const-string v4, "No heartbeat alarm set"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getHeartbeatStat()Lorg/jivesoftware/smack/packet/HeartbeatStat;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    return-object v0
.end method

.method public initStat(Lorg/jivesoftware/smack/packet/HeartbeatConfig;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jivesoftware/smack/packet/HeartbeatStat;->timeout:Z

    .line 391
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jivesoftware/smack/packet/HeartbeatStat;->ip:Ljava/lang/String;

    .line 394
    if-eqz p1, :cond_2

    .line 395
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server sent heartbeat config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    iget-object v1, p1, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->ip:Ljava/lang/String;

    iput-object v1, v0, Lorg/jivesoftware/smack/packet/HeartbeatStat;->ip:Ljava/lang/String;

    .line 399
    iget-object v0, p1, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->uploadStat:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    iget-object v1, p1, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->uploadStat:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setUploadHeartbeatStat(Z)V

    .line 403
    :cond_1
    iget-wide v0, p1, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->interval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    iget-wide v1, p1, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->interval:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setHeartbeatInterval(J)V

    .line 407
    :cond_2
    return-void
.end method

.method public markPacketReception()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatAlarmIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 360
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mWaitingForAck:Z

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mWaitingForAck:Z

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->resetHeartbeatTimer()V

    .line 365
    :cond_1
    return-void
.end method

.method public markPacketTransmission()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 270
    new-instance v1, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v2, "HeartbeatAlarm"

    invoke-direct {v1, v2}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 272
    .local v1, wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const-string v3, "HeartbeatAlarm"

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->acquireSimpleWakeLock(Ljava/lang/String;)V

    .line 275
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 277
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    :cond_0
    const-string v2, "GTalkService"

    const-string v3, "Ignoring attempt to send heartbeat on dead connection."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 315
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const-string v3, "HeartbeatAlarm"

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->releaseSimpleWakeLock(Ljava/lang/String;)V

    .line 317
    :goto_0
    return-void

    .line 282
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mWaitingForAck:Z

    if-eqz v2, :cond_3

    .line 283
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v2, :cond_2

    .line 284
    const-string v2, "reset connection, heartbeat timeout!"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionError(I)V

    .line 290
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    new-instance v3, Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->addConnectionEvent(Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;)V

    .line 295
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkType()I

    move-result v0

    .line 298
    .local v0, lastNetworkType:I
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatInterval:J

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getHostIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/android/gsf/gtalkservice/LogTag;->logHeartbeatReset(IILjava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->getHeartbeatStat()Lorg/jivesoftware/smack/packet/HeartbeatStat;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/jivesoftware/smack/packet/HeartbeatStat;->timeout:Z

    .line 305
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->asyncResetConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mResetConnectionTs:J

    .line 308
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->clearAlarm()V

    .line 309
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mWaitingForAck:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    .end local v0           #lastNetworkType:I
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 315
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const-string v3, "HeartbeatAlarm"

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->releaseSimpleWakeLock(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->sendHeartbeatToServer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 314
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 315
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const-string v4, "HeartbeatAlarm"

    invoke-virtual {v3, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->releaseSimpleWakeLock(Ljava/lang/String;)V

    throw v2
.end method

.method public sendHeartbeatToServer()V
    .locals 1

    .prologue
    .line 331
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "sent heartbeat to server"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendHeartbeat()V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mWaitingForAck:Z

    .line 336
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->resetHeartbeatTimer()V

    .line 337
    return-void
.end method

.method public setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 98
    return-void
.end method

.method public startAlarm()V
    .locals 4

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mResetConnectionTs:J

    .line 106
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatAlarmIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 107
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_0

    const-string v0, "startAlarm: already started, bail"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_2

    const-string v0, "startAlarm"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->log(Ljava/lang/String;)V

    .line 113
    :cond_2
    monitor-enter p0

    .line 114
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mWaitingForAck:Z

    .line 116
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.intent.action.GTALK_HEARTBEAT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.intent.action.GTALK_HEARTBEAT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatAlarmIntent:Landroid/content/Intent;

    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatAlarmIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->mHeartbeatAlarmSender:Landroid/app/PendingIntent;

    .line 124
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->setAlarm()V

    .line 125
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
