.class public Lcom/android/commands/monkey/MonkeyNetworkMonitor;
.super Landroid/content/IIntentReceiver$Stub;
.source "MonkeyNetworkMonitor.java"


# static fields
.field private static final LDEBUG:Z


# instance fields
.field private final filter:Landroid/content/IntentFilter;

.field private mCollectionStartTime:J

.field private mElapsedTime:J

.field private mEventTime:J

.field private mLastNetworkType:I

.field private mMobileElapsedTime:J

.field private mWifiElapsedTime:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 32
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->filter:Landroid/content/IntentFilter;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    .line 38
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    .line 39
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    .line 40
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    return-void
.end method

.method private updateNetworkStats()V
    .registers 7

    .prologue
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 61
    .local v2, timeNow:J
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mEventTime:J

    sub-long v0, v2, v4

    .line 62
    .local v0, delta:J
    iget v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    packed-switch v4, :pswitch_data_20

    .line 75
    :goto_d
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mCollectionStartTime:J

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    .line 76
    return-void

    .line 65
    :pswitch_14
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    goto :goto_d

    .line 69
    :pswitch_1a
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    goto :goto_d

    .line 62
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public dump()V
    .registers 7

    .prologue
    .line 100
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "## Network stats: elapsed time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms mobile, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms wifi, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms not connected)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .registers 10
    .parameter "intent"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 48
    .local v0, ni:Landroid/net/NetworkInfo;
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->updateNetworkStats()V

    .line 49
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_20

    .line 51
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    .line 56
    :cond_19
    :goto_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mEventTime:J

    .line 57
    return-void

    .line 52
    :cond_20
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_19

    .line 54
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    goto :goto_19
.end method

.method public register(Landroid/app/IActivityManager;)V
    .registers 4
    .parameter "am"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->filter:Landroid/content/IntentFilter;

    invoke-interface {p1, v1, p0, v0, v1}, Landroid/app/IActivityManager;->registerReceiver(Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    .line 80
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    .line 81
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mCollectionStartTime:J

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mEventTime:J

    .line 83
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->updateNetworkStats()V

    .line 97
    return-void
.end method

.method public unregister(Landroid/app/IActivityManager;)V
    .registers 2
    .parameter "am"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 93
    return-void
.end method
