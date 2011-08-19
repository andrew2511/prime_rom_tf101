.class public Lcom/google/android/gsf/gtalkservice/ReconnectManager;
.super Ljava/lang/Object;
.source "ReconnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/ReconnectManager$ConnectionTask;
    }
.end annotation


# instance fields
.field private mConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/gtalkservice/GTalkConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mInitialReconnectDelay:J

.field mLastInetReportNetworkType:I

.field mLastInetReportStatus:I

.field mLastInetReportTs:J

.field private mLastNetworkAvailable:Z

.field private mLastNetworkBroadcastTs:J

.field private mMaxReconnectDelay:J

.field private mNetworkDownAtLastCheck:Z

.field mNetworkState:Landroid/net/NetworkInfo$State;

.field private mNetworkSuspended:Z

.field mNetworkType:I

.field private mRandomGenerator:Ljava/util/Random;

.field private mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

.field private mReconnectAlarmSet:Z

.field private mReconnectDelay:J

.field private mTimeOfLastNetworkOutage:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkDownAtLastCheck:Z

    .line 46
    iput-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkSuspended:Z

    .line 48
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnections:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mRandomGenerator:Ljava/util/Random;

    .line 76
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mTimeOfLastNetworkOutage:J

    .line 82
    iput v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->initConnectionState()V

    .line 88
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 90
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Alarm;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mContext:Landroid/content/Context;

    const-string v2, "GTALK_CONN_ALARM"

    new-instance v3, Lcom/google/android/gsf/gtalkservice/ReconnectManager$1;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/Alarm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    const-string v1, "com.google.android.intent.action.GTALK_RECONNECT"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Alarm;->setAction(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->handleAlarmCallback()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/ReconnectManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getFirstConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .locals 4

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnections:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-object v1, v0

    .line 121
    :cond_0
    monitor-exit p0

    .line 123
    return-object v1

    .line 121
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleAlarmCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 175
    .local v0, numConnections:I
    if-nez v0, :cond_0

    .line 176
    const-string v1, "GTalkService"

    const-string v2, "[ReconnectMgr] handleAlarmCallback: no connections!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager$2;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$2;-><init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V

    invoke-direct {p0, v1, v2, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->runTaskForConnections(Lcom/google/android/gsf/gtalkservice/ReconnectManager$ConnectionTask;ZI)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 587
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ReonnectMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void
.end method

.method private retryConnection(Z)V
    .locals 3
    .parameter "retryNow"

    .prologue
    const/4 v2, 0x1

    .line 200
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;-><init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->runTaskForConnections(Lcom/google/android/gsf/gtalkservice/ReconnectManager$ConnectionTask;ZI)V

    .line 227
    return-void

    .line 200
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private runTaskForConnections(Lcom/google/android/gsf/gtalkservice/ReconnectManager$ConnectionTask;ZI)V
    .locals 9
    .parameter "task"
    .parameter "runTaskForMainConnectionFirst"
    .parameter "metaData"

    .prologue
    .line 129
    const/4 v6, 0x0

    .line 130
    .local v6, singleConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    const/4 v3, 0x0

    .line 132
    .local v3, listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/GTalkConnection;>;"
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnections:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 137
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnections:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-object v6, v0

    .line 141
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    if-eqz v6, :cond_2

    .line 144
    invoke-interface {p1, v6, p3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$ConnectionTask;->run(Lcom/google/android/gsf/gtalkservice/GTalkConnection;I)V

    .line 171
    :cond_0
    return-void

    .line 139
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnections:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v3           #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/GTalkConnection;>;"
    .local v4, listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/GTalkConnection;>;"
    move-object v3, v4

    .end local v4           #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/GTalkConnection;>;"
    .restart local v3       #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/GTalkConnection;>;"
    goto :goto_0

    .line 141
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 146
    :cond_2
    const/4 v5, 0x0

    .line 148
    .local v5, mainConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    if-eqz p2, :cond_6

    .line 149
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    .line 150
    .local v1, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isMainConnection()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 151
    move-object v5, v1

    .line 155
    .end local v1           #connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    :cond_4
    if-eqz v5, :cond_6

    .line 156
    const-string v7, "GTalkService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runTaskForConnections: first run the task for main connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 160
    :cond_5
    invoke-interface {p1, v5, p3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$ConnectionTask;->run(Lcom/google/android/gsf/gtalkservice/GTalkConnection;I)V

    .line 164
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    .line 165
    .restart local v1       #connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    if-eq v1, v5, :cond_7

    .line 168
    invoke-interface {p1, v1, p3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$ConnectionTask;->run(Lcom/google/android/gsf/gtalkservice/GTalkConnection;I)V

    goto :goto_1
.end method

.method private setConnectionError(I)V
    .locals 2
    .parameter "error"

    .prologue
    .line 230
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$4;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$4;-><init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->runTaskForConnections(Lcom/google/android/gsf/gtalkservice/ReconnectManager$ConnectionTask;ZI)V

    .line 235
    return-void
.end method

.method private setInternalNetworkState(Landroid/net/NetworkInfo$State;I)V
    .locals 2
    .parameter "networkState"
    .parameter "networkType"

    .prologue
    .line 497
    sget-object v0, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkSuspended:Z

    .line 498
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    .line 499
    iput p2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkBroadcastTs:J

    .line 501
    return-void

    .line 497
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldResetReconnectTimer()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 246
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getFirstConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 248
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    if-nez v0, :cond_0

    .line 249
    const-string v3, "GTalkService"

    const-string v4, "[ReconnectMgr] shouldResetReconnectTimer: no connection!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 257
    :goto_0
    return v3

    .line 253
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getLastConnectionAttemptSuccessful()Z

    move-result v1

    .line 254
    .local v1, lastAttemptSuccessful:Z
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isLastConnectionWasOfMinimumDuration()Z

    move-result v2

    .line 257
    .local v2, lastConnectionWasOfMininumDuration:Z
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0
.end method


# virtual methods
.method public addConnection(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelReconnectAlarm()V
    .locals 2

    .prologue
    .line 354
    monitor-enter p0

    .line 355
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarmSet:Z

    if-eqz v0, :cond_2

    .line 356
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cancelReconnectAlarm"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 358
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarmSet:Z

    .line 359
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->stop()V

    .line 363
    :cond_1
    :goto_0
    monitor-exit p0

    .line 364
    return-void

    .line 360
    :cond_2
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const-string v0, "cancelReconnectAlarm: no alarm set"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearReconnectAlarm()V
    .locals 2

    .prologue
    .line 367
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "clearReconnectAlarm"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 369
    :cond_0
    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->clearAlarm()V

    .line 371
    monitor-exit p0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 12
    .parameter "out"

    .prologue
    const-wide/16 v10, 0x3e8

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 547
    .local v5, now:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReconnectManager (now="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    .line 550
    .local v0, alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    if-eqz v0, :cond_2

    .line 551
    const-string v7, "-------------"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Alarm;->dump(Ljava/io/PrintWriter;)V

    .line 553
    const-string v7, "-------------"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getReconnectTime()J

    move-result-wide v3

    .line 555
    .local v3, nextReconnectTime:J
    sub-long v1, v3, v5

    .line 556
    .local v1, diff:J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    .line 557
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    Next reconnect alarm will trigger in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    div-long v8, v1, v10

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    .end local v1           #diff:J
    .end local v3           #nextReconnectTime:J
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    Last network state notification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkBroadcastTs:J

    sub-long v8, v5, v8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkSuspended:Z

    if-eqz v7, :cond_0

    .line 570
    const-string v7, "    network is suspended"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    Last network available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    Current network available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->isNetworkAvailable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last network state notification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last network available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current network available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last Inet report: status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", netType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportNetworkType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportTs:J

    sub-long v8, v5, v8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    return-void

    .line 560
    .restart local v1       #diff:J
    .restart local v3       #nextReconnectTime:J
    :cond_1
    const-string v7, "    No reconnect alarm set"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 563
    .end local v1           #diff:J
    .end local v3           #nextReconnectTime:J
    :cond_2
    const-string v7, "    null alarm!"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 577
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public getInitialDelay()J
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    return-wide v0
.end method

.method public getLastNetworkAvailable()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    return v0
.end method

.method public getNetworkState()Landroid/net/NetworkInfo$State;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    return v0
.end method

.method public getReconnectTime()J
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->getNextAlarmTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeOfLastNetworkOutage()J
    .locals 2

    .prologue
    .line 375
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mTimeOfLastNetworkOutage:J

    return-wide v0
.end method

.method public initConnectionState()V
    .locals 3

    .prologue
    .line 510
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 511
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setInternalNetworkState(Landroid/net/NetworkInfo$State;I)V

    .line 515
    :cond_0
    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 2

    .prologue
    .line 384
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 385
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public networkStateChanged(Landroid/net/NetworkInfo$State;IZZ)V
    .locals 11
    .parameter "networkState"
    .parameter "networkType"
    .parameter "shouldThrottleReconnect"
    .parameter "airplaneModeJustTurnedOn"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 407
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getFirstConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 408
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    const/4 v1, 0x0

    .line 409
    .local v1, connectionState:I
    const/4 v2, 0x0

    .line 410
    .local v2, isConnected:Z
    const/4 v3, 0x0

    .line 411
    .local v3, isConnecting:Z
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->pollNetworkAvailable()Z

    move-result v4

    .line 413
    .local v4, networkAvailable:Z
    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v1

    .line 415
    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    .line 416
    const/4 v3, 0x1

    .line 418
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v2

    .line 422
    :cond_1
    const-string v6, "GTalkService"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 423
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "networkStateChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", shouldThrottleReconnect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", airplaneModeJustTurnedOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", conn_state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", connected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 434
    :cond_2
    if-eqz v4, :cond_5

    if-nez v3, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    if-ne p1, v6, :cond_5

    iget v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    if-ne p2, v6, :cond_5

    .line 438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "### networkStateChanged: detected duplicate network broadcast ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), do nothing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0, v8}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 494
    :cond_4
    :goto_0
    return-void

    .line 447
    :cond_5
    iget-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkSuspended:Z

    .line 448
    .local v5, networkWasSuspended:Z
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setInternalNetworkState(Landroid/net/NetworkInfo$State;I)V

    .line 450
    if-eqz v0, :cond_c

    .line 451
    if-eqz v4, :cond_9

    .line 452
    iput-boolean v9, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkDownAtLastCheck:Z

    .line 453
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionError()I

    move-result v6

    if-ne v6, v8, :cond_6

    .line 455
    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setConnectionError(I)V

    .line 457
    :cond_6
    if-nez v3, :cond_8

    if-nez v2, :cond_7

    if-eqz p3, :cond_7

    if-eqz v5, :cond_8

    .line 464
    :cond_7
    invoke-direct {p0, v8}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->retryConnection(Z)V

    .line 467
    invoke-virtual {p0, v9}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    goto :goto_0

    .line 468
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 471
    invoke-virtual {p0, v8}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 472
    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->retryConnection(Z)V

    goto :goto_0

    .line 476
    :cond_9
    if-nez p4, :cond_a

    iget-boolean v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkDownAtLastCheck:Z

    if-nez v6, :cond_a

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mTimeOfLastNetworkOutage:J

    .line 478
    iput-boolean v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkDownAtLastCheck:Z

    .line 480
    :cond_a
    invoke-direct {p0, v8}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setConnectionError(I)V

    .line 484
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 485
    const-string v6, "GTalkService"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 486
    const-string v6, "force close the connection because network interface is down"

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 488
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->forceCloseConnection()V

    goto :goto_0

    .line 492
    :cond_c
    invoke-virtual {p0, v9}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    goto :goto_0
.end method

.method public pollNetworkAvailable()Z
    .locals 2

    .prologue
    .line 504
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 505
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    .line 506
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    return v1

    .line 505
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeConnection(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 111
    monitor-exit p0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportInetCondition(Z)V
    .locals 5
    .parameter "online"

    .prologue
    .line 530
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    .line 531
    .local v0, networkType:I
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 532
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 537
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### report Inet condition: status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 538
    if-eqz p1, :cond_1

    const/16 v3, 0x64

    move v2, v3

    .line 539
    .local v2, status:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0, v2}, Landroid/net/ConnectivityManager;->reportInetCondition(II)V

    .line 540
    iput v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportStatus:I

    .line 541
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportTs:J

    .line 542
    iput v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportNetworkType:I

    .line 543
    return-void

    .line 538
    .end local v2           #status:I
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0
.end method

.method public resetReconnectionTimer(Z)V
    .locals 9
    .parameter "checkNetworkDowntime"

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x3

    .line 267
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getFirstConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    .line 269
    .local v1, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    if-nez v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 276
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getTimeOfLastNetworkOutage()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getShortNetworkDowntime()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 278
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getMinReconnectDelayLong()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mRandomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getReconnectVariantLong()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    .line 280
    const-string v2, "GTalkService/c"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetReconnectionTimer: to long initial value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    div-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 293
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getMaxReconnectDelay()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMaxReconnectDelay:J

    .line 294
    const-string v2, "GTalkService/c"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetReconnectionTimer: delayMax="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMaxReconnectDelay:J

    div-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 298
    :cond_2
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    goto/16 :goto_0

    .line 285
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getMinReconnectDelayShort()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mRandomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getReconnectVariantShort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    .line 287
    const-string v2, "GTalkService/c"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetReconnectionTimer: to short initial value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    div-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setReconnectAlarm()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x2

    .line 302
    monitor-enter p0

    .line 303
    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarmSet:Z

    if-eqz v4, :cond_1

    .line 304
    const-string v4, "GTalkService/c"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    const-string v4, "setReconnectAlarm: alarm already set"

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 307
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 308
    .local v2, now:J
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getReconnectTime()J

    move-result-wide v0

    .line 309
    .local v0, nextAlarmTime:J
    cmp-long v4, v0, v2

    if-gez v4, :cond_7

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alarm failed to fire: alarmTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 316
    .end local v0           #nextAlarmTime:J
    .end local v2           #now:J
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarmSet:Z

    .line 324
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->shouldResetReconnectTimer()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 325
    const-string v4, "GTalkService/c"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    const-string v4, "setReconnectAlarm: resetting connection timer because the last connection attempt was successful and of minimum duration"

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 331
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 334
    :cond_3
    const-string v4, "GTalkService/c"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setReconnectAlarm: retry in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 338
    :cond_4
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/Alarm;->isStarted()Z

    move-result v4

    if-nez v4, :cond_5

    .line 340
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/Alarm;->initAlarm()V

    .line 342
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gsf/gtalkservice/Alarm;->setTimer(J)V

    .line 343
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/Alarm;->start()V

    .line 347
    :cond_5
    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    mul-long/2addr v4, v9

    iget-wide v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMaxReconnectDelay:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 348
    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    mul-long/2addr v4, v9

    iput-wide v4, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    .line 350
    :cond_6
    monitor-exit p0

    .line 351
    :goto_0
    return-void

    .line 312
    .restart local v0       #nextAlarmTime:J
    .restart local v2       #now:J
    :cond_7
    monitor-exit p0

    goto :goto_0

    .line 350
    .end local v0           #nextAlarmTime:J
    .end local v2           #now:J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
