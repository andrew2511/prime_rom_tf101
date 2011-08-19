.class public Lcom/android/server/WifiWatchdogService;
.super Ljava/lang/Object;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiWatchdogService$3;,
        Lcom/android/server/WifiWatchdogService$DnsPinger;,
        Lcom/android/server/WifiWatchdogService$AccessPoint;,
        Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;,
        Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;,
        Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;,
        Lcom/android/server/WifiWatchdogService$WatchdogState;
    }
.end annotation


# static fields
.field private static final D:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DBG_ASUS:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogService"

.field private static final V:Z


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

.field private mHandlerConn:Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;

.field private mNumApsChecked:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShouldCancel:Z

.field private mSsid:Ljava/lang/String;

.field private mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

.field private mThread:Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/server/WifiWatchdogService;->DBG_ASUS:Z

    return-void

    :cond_e
    move v0, v1

    goto :goto_b
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->IDLE:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 1203
    new-instance v0, Lcom/android/server/WifiWatchdogService$2;

    invoke-direct {v0, p0}, Lcom/android/server/WifiWatchdogService$2;-><init>(Lcom/android/server/WifiWatchdogService;)V

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    .line 120
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 122
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->createThread()V

    .line 125
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->registerForSettingsChanges()V

    .line 126
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->isWatchdogEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 127
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->registerForWifiBroadcasts()V

    .line 133
    :cond_2f
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WifiWatchdogService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->registerForWifiBroadcasts()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleNetworkChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleBackgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleSleep(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->handleIdle()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->handleDisconnected()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->handleReset()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/WifiWatchdogService;)Landroid/net/wifi/WifiManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiWatchdogService;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->onDisconnected()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->unregisterForWifiBroadcasts()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->onEnabled()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;)Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;)Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService;->mHandlerConn:Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleBackgroundCheckConnection(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/WifiWatchdogService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->isBackgroundCheckEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/WifiWatchdogService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getBackgroundCheckDelayMs()I

    move-result v0

    return v0
.end method

.method private backgroundCheckDnsConnection()V
    .registers 8

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getDns()Ljava/net/InetAddress;

    move-result-object v1

    .line 437
    .local v1, dns:Ljava/net/InetAddress;
    const/4 v3, 0x0

    .line 438
    .local v3, pingCounter:I
    const/4 v2, 0x3

    .line 440
    .local v2, numPings:I
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 463
    :cond_c
    :goto_c
    return-void

    .line 442
    :cond_d
    if-nez v1, :cond_1b

    .line 443
    sget-boolean v4, Lcom/android/server/WifiWatchdogService;->DBG_ASUS:Z

    if-eqz v4, :cond_c

    .line 444
    const-string v4, "WifiWatchdogService"

    const-string v5, "backgroundCheckDnsConnection: DNS is empty, returning false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 449
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v4

    if-nez v4, :cond_c

    .line 451
    sget-boolean v4, Lcom/android/server/WifiWatchdogService;->DBG_ASUS:Z

    if-eqz v4, :cond_47

    .line 452
    const-string v4, "WifiWatchdogService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backgroundCheckDnsConnection: Background checking "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for connectivity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_47
    :goto_47
    if-ge v3, v2, :cond_c

    .line 457
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v4

    if-nez v4, :cond_c

    .line 458
    const/16 v4, 0x1388

    invoke-static {v1, v4}, Lcom/android/server/WifiWatchdogService$DnsPinger;->isDnsReachable(Ljava/net/InetAddress;I)Z

    move-result v0

    .line 459
    .local v0, IsAlive:Z
    sget-boolean v4, Lcom/android/server/WifiWatchdogService;->DBG_ASUS:Z

    if-eqz v4, :cond_85

    .line 460
    const-string v4, "WifiWatchdogService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] DNS alive? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_85
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v4

    if-nez v4, :cond_c

    .line 456
    add-int/lit8 v3, v3, 0x1

    goto :goto_47
.end method

.method private backgroundCheckDnsConnectivity()Z
    .registers 3

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getDns()Ljava/net/InetAddress;

    move-result-object v0

    .line 468
    .local v0, dns:Ljava/net/InetAddress;
    if-nez v0, :cond_8

    .line 472
    const/4 v1, 0x0

    .line 480
    :goto_7
    return v1

    :cond_8
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getBackgroundCheckTimeoutMs()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/WifiWatchdogService$DnsPinger;->isDnsReachable(Ljava/net/InetAddress;I)Z

    move-result v1

    goto :goto_7
.end method

.method private blacklistAp(Ljava/lang/String;)V
    .registers 4
    .parameter "bssid"

    .prologue
    .line 802
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 814
    :cond_6
    :goto_6
    return-void

    .line 807
    :cond_7
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v0

    if-nez v0, :cond_6

    .line 809
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addToBlacklist(Ljava/lang/String;)Z

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blacklisting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private cancelCurrentAction()V
    .registers 2

    .prologue
    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    .line 488
    return-void
.end method

.method private checkDnsConnectivity()Z
    .registers 15

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getDns()Ljava/net/InetAddress;

    move-result-object v1

    .line 349
    .local v1, dns:Ljava/net/InetAddress;
    if-nez v1, :cond_8

    .line 353
    const/4 v11, 0x0

    .line 432
    :goto_7
    return v11

    .line 360
    :cond_8
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getInitialIgnoredPingCount()I

    move-result v5

    .line 361
    .local v5, numInitialIgnoredPings:I
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingCount()I

    move-result v6

    .line 362
    .local v6, numPings:I
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingDelayMs()I

    move-result v9

    .line 363
    .local v9, pingDelay:I
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getAcceptablePacketLossPercentage()I

    move-result v0

    .line 366
    .local v0, acceptableLoss:I
    const/4 v4, 0x0

    .line 367
    .local v4, ignoredPingCounter:I
    const/4 v8, 0x0

    .line 368
    .local v8, pingCounter:I
    const/4 v10, 0x0

    .line 371
    .local v10, successCounter:I
    if-nez v6, :cond_25

    .line 372
    const/4 v11, 0x1

    goto :goto_7

    .line 396
    .local v2, dnsAlive:Z
    :cond_1f
    int-to-long v11, v9

    :try_start_20
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_45

    .line 376
    :goto_23
    add-int/lit8 v4, v4, 0x1

    .end local v2           #dnsAlive:Z
    :cond_25
    if-ge v4, v5, :cond_54

    .line 377
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_2f

    const/4 v11, 0x0

    goto :goto_7

    .line 379
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingTimeoutMs()I

    move-result v11

    invoke-static {v1, v11}, Lcom/android/server/WifiWatchdogService$DnsPinger;->isDnsReachable(Ljava/net/InetAddress;I)Z

    move-result v2

    .line 380
    .restart local v2       #dnsAlive:Z
    if-eqz v2, :cond_3d

    .line 385
    add-int/lit8 v8, v8, 0x1

    .line 386
    add-int/lit8 v10, v10, 0x1

    .line 393
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_1f

    const/4 v11, 0x0

    goto :goto_7

    .line 397
    :catch_45
    move-exception v3

    .line 398
    .local v3, e:Ljava/lang/InterruptedException;
    const-string v11, "WifiWatchdogService"

    const-string v12, "Interrupted while pausing between pings"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 420
    .end local v2           #dnsAlive:Z
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_4e
    int-to-long v11, v9

    :try_start_4f
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_52} :catch_72

    .line 403
    :goto_52
    add-int/lit8 v8, v8, 0x1

    :cond_54
    if-ge v8, v6, :cond_7b

    .line 404
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_5e

    const/4 v11, 0x0

    goto :goto_7

    .line 406
    :cond_5e
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingTimeoutMs()I

    move-result v11

    invoke-static {v1, v11}, Lcom/android/server/WifiWatchdogService$DnsPinger;->isDnsReachable(Ljava/net/InetAddress;I)Z

    move-result v11

    if-eqz v11, :cond_6a

    .line 407
    add-int/lit8 v10, v10, 0x1

    .line 417
    :cond_6a
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_4e

    const/4 v11, 0x0

    goto :goto_7

    .line 421
    :catch_72
    move-exception v3

    .line 422
    .restart local v3       #e:Ljava/lang/InterruptedException;
    const-string v11, "WifiWatchdogService"

    const-string v12, "Interrupted while pausing between pings"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    .line 426
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_7b
    sub-int v11, v6, v10

    mul-int/lit8 v11, v11, 0x64

    div-int v7, v11, v6

    .line 428
    .local v7, packetLossPercentage:I
    const-string v11, "WifiWatchdogService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "% packet loss (acceptable is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-nez v11, :cond_ae

    if-gt v7, v0, :cond_ae

    const/4 v11, 0x1

    goto/16 :goto_7

    :cond_ae
    const/4 v11, 0x0

    goto/16 :goto_7
.end method

.method private createThread()V
    .registers 2

    .prologue
    .line 275
    new-instance v0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

    invoke-direct {v0, p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;-><init>(Lcom/android/server/WifiWatchdogService;)V

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mThread:Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

    .line 276
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mThread:Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->start()V

    .line 277
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->waitForHandlerCreation()V

    .line 278
    return-void
.end method

.method private getAcceptablePacketLossPercentage()I
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_acceptable_packet_loss_percentage"

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getApCount()I
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_ap_count"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getBackgroundCheckDelayMs()I
    .registers 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_background_check_delay_ms"

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getBackgroundCheckTimeoutMs()I
    .registers 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_background_check_timeout_ms"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getDns()Ljava/net/InetAddress;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 326
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_11

    .line 327
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/WifiWatchdogService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 331
    :cond_11
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 333
    .local v1, linkProperties:Landroid/net/LinkProperties;
    if-nez v1, :cond_1c

    move-object v2, v4

    .line 338
    .end local p0
    :goto_1b
    return-object v2

    .line 335
    .restart local p0
    :cond_1c
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    .line 336
    .local v0, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_2a

    :cond_28
    move-object v2, v4

    goto :goto_1b

    .line 338
    :cond_2a
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/InetAddress;

    move-object v2, p0

    goto :goto_1b
.end method

.method private getInitialIgnoredPingCount()I
    .registers 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_initial_ignored_ping_count"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getMaxApChecks()I
    .registers 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_max_ap_checks"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPingCount()I
    .registers 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_ping_count"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPingDelayMs()I
    .registers 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_ping_delay_ms"

    const/16 v2, 0xfa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPingTimeoutMs()I
    .registers 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_ping_timeout_ms"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getWatchList()Ljava/lang/String;
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_watch_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleApAlive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 4
    .parameter "ap"

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 778
    :goto_6
    return-void

    .line 770
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AP is alive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/WifiWatchdogService$AccessPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->backgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_6
.end method

.method private handleApUnresponsive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 4
    .parameter "ap"

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 799
    :goto_6
    return-void

    .line 789
    :cond_7
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->SWITCHING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AP is dead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/WifiWatchdogService$AccessPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 796
    iget-object v0, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->blacklistAp(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reassociate()Z

    goto :goto_6
.end method

.method private handleBackgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 6
    .parameter "ap"

    .prologue
    .line 857
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    .line 864
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v3, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-ne v2, v3, :cond_a

    .line 913
    :cond_9
    :goto_9
    return-void

    .line 872
    :cond_a
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 873
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 881
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 890
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->backgroundCheckDnsConnectivity()Z

    move-result v1

    .line 896
    .local v1, isApAlive:Z
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v2

    if-nez v2, :cond_9

    .line 901
    if-eqz v1, :cond_46

    .line 903
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v2, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->backgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_9

    .line 907
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background check failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WifiWatchdogService$AccessPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 911
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v2, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->checkAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_9
.end method

.method private handleBackgroundCheckConnection(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 6
    .parameter "ap"

    .prologue
    .line 818
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v2, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-ne v1, v2, :cond_2b

    .line 819
    sget-boolean v1, Lcom/android/server/WifiWatchdogService;->DBG_ASUS:Z

    if-eqz v1, :cond_2a

    .line 820
    const-string v1, "WifiWatchdogService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBackgroundCheckConnection: Sleeping (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), so returning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_2a
    :goto_2a
    return-void

    .line 826
    :cond_2b
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 827
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 828
    :cond_43
    sget-boolean v1, Lcom/android/server/WifiWatchdogService;->DBG_ASUS:Z

    if-eqz v1, :cond_2a

    .line 829
    const-string v1, "WifiWatchdogService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBackgroundCheckConnection: We are no longer connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and instead are on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 835
    :cond_6a
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7c

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    .line 836
    :cond_7c
    sget-boolean v1, Lcom/android/server/WifiWatchdogService;->DBG_ASUS:Z

    if-eqz v1, :cond_2a

    .line 837
    const-string v1, "WifiWatchdogService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBackgroundCheckConnection: We are no longer connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and instead are on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 844
    :cond_a3
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->backgroundCheckDnsConnection()V

    goto :goto_2a
.end method

.method private handleCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 5
    .parameter "ap"

    .prologue
    .line 716
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    .line 723
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v2, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-ne v1, v2, :cond_a

    .line 759
    :goto_9
    return-void

    .line 730
    :cond_a
    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->CHECKING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v1, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 736
    iget v1, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    .line 737
    iget v1, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getMaxApChecks()I

    move-result v2

    if-le v1, v2, :cond_24

    .line 742
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sleep(Ljava/lang/String;)V

    goto :goto_9

    .line 747
    :cond_24
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->checkDnsConnectivity()Z

    move-result v0

    .line 754
    .local v0, isApAlive:Z
    if-eqz v0, :cond_2e

    .line 755
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleApAlive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_9

    .line 757
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleApUnresponsive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_9
.end method

.method private handleDisconnected()V
    .registers 2

    .prologue
    .line 961
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    .line 962
    return-void
.end method

.method private handleIdle()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 970
    iput-boolean v2, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    .line 977
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-ne v0, v1, :cond_2a

    .line 978
    const-string v0, "WifiWatchdogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Sleeping (in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), so returning"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :goto_29
    return-void

    .line 983
    :cond_2a
    invoke-direct {p0, v2}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    goto :goto_29
.end method

.method private handleNetworkChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "ssid"

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    .line 706
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    .line 707
    return-void
.end method

.method private handleReset()V
    .registers 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->clearBlacklist()Z

    .line 1007
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    .line 1008
    return-void
.end method

.method private handleSleep(Ljava/lang/String;)V
    .registers 4
    .parameter "ssid"

    .prologue
    .line 923
    if-eqz p1, :cond_29

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 924
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Going to sleep for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->clearBlacklist()Z

    .line 941
    :cond_29
    return-void
.end method

.method private hasRequiredNumberOfAps(Ljava/lang/String;)Z
    .registers 10
    .parameter "ssid"

    .prologue
    const/4 v7, 0x0

    .line 663
    iget-object v6, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 664
    .local v4, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v4, :cond_b

    move v6, v7

    .line 694
    :goto_a
    return v6

    .line 671
    :cond_b
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getApCount()I

    move-result v2

    .line 672
    .local v2, numApsRequired:I
    const/4 v1, 0x0

    .line 673
    .local v1, numApsFound:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 674
    .local v5, resultsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    if-ge v0, v5, :cond_34

    .line 675
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 676
    .local v3, result:Landroid/net/wifi/ScanResult;
    if-nez v3, :cond_22

    .line 674
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 677
    :cond_22
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_1f

    .line 679
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 680
    add-int/lit8 v1, v1, 0x1

    .line 682
    if-lt v1, v2, :cond_1f

    .line 686
    const/4 v6, 0x1

    goto :goto_a

    .end local v3           #result:Landroid/net/wifi/ScanResult;
    :cond_34
    move v6, v7

    .line 694
    goto :goto_a
.end method

.method private isBackgroundCheckEnabled()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 224
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_background_check_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_d

    move v0, v2

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isOnWatchList(Ljava/lang/String;)Z
    .registers 10
    .parameter "ssid"

    .prologue
    const/4 v7, 0x0

    .line 641
    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getWatchList()Ljava/lang/String;

    move-result-object v5

    .local v5, watchList:Ljava/lang/String;
    if-nez v5, :cond_b

    .end local v5           #watchList:Ljava/lang/String;
    :cond_9
    move v6, v7

    .line 653
    :goto_a
    return v6

    .line 645
    .restart local v5       #watchList:Ljava/lang/String;
    :cond_b
    const-string v6, " *, *"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, list:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_14
    if-ge v1, v2, :cond_23

    aget-object v4, v0, v1

    .line 648
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 649
    const/4 v6, 0x1

    goto :goto_a

    .line 647
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .end local v4           #name:Ljava/lang/String;
    :cond_23
    move v6, v7

    .line 653
    goto :goto_a
.end method

.method private isWatchdogEnabled()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 161
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_d

    move v0, v2

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static myLogD(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 317
    const-string v0, "WifiWatchdogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method private static myLogV(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 313
    const-string v0, "WifiWatchdogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method private onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->cancelCurrentAction()V

    .line 523
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 528
    :cond_f
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->dispatchNetworkChanged(Ljava/lang/String;)V

    .line 531
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiWatchdogService;->requiresWatchdog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") requires the watchdog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    new-instance v1, Lcom/android/server/WifiWatchdogService$AccessPoint;

    invoke-direct {v1, p1, p2}, Lcom/android/server/WifiWatchdogService$AccessPoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->checkAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    .line 547
    :goto_44
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandlerConn:Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;

    new-instance v1, Lcom/android/server/WifiWatchdogService$AccessPoint;

    invoke-direct {v1, p1, p2}, Lcom/android/server/WifiWatchdogService$AccessPoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;->backgroundCheckConnection(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    .line 548
    return-void

    .line 541
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") does not require the watchdog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->idle()V

    goto :goto_44
.end method

.method private onDisconnected()V
    .registers 2

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->cancelCurrentAction()V

    .line 573
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->dispatchDisconnected()V

    .line 575
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->idle()V

    .line 576
    return-void
.end method

.method private onEnabled()V
    .registers 2

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->cancelCurrentAction()V

    .line 556
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->reset()V

    .line 557
    return-void
.end method

.method private registerForSettingsChanges()V
    .registers 6

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v1, "wifi_watchdog_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/WifiWatchdogService$1;

    iget-object v4, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/WifiWatchdogService$1;-><init>(Lcom/android/server/WifiWatchdogService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/WifiWatchdogService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 155
    return-void
.end method

.method private registerForWifiBroadcasts()V
    .registers 4

    .prologue
    .line 257
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    return-void
.end method

.method private requiresWatchdog(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    const/4 v2, 0x0

    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-nez p1, :cond_12

    .line 597
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    .line 599
    if-nez p1, :cond_12

    move v1, v2

    .line 635
    :goto_11
    return v1

    .line 608
    :cond_12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 610
    if-nez v0, :cond_20

    .line 611
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 613
    :cond_20
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p2

    .line 614
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v2

    .line 619
    goto :goto_11

    .line 623
    :cond_2c
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->isOnWatchList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    move v1, v2

    .line 627
    goto :goto_11

    .line 631
    :cond_34
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->hasRequiredNumberOfAps(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    move v1, v2

    .line 632
    goto :goto_11

    .line 635
    :cond_3c
    const/4 v1, 0x1

    goto :goto_11
.end method

.method private setIdleState(Z)V
    .registers 4
    .parameter "forceIdleState"

    .prologue
    .line 995
    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-eq v0, v1, :cond_c

    .line 996
    :cond_8
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->IDLE:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 998
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    .line 999
    return-void
.end method

.method private shouldCancel()Z
    .registers 2

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    return v0
.end method

.method private unregisterForWifiBroadcasts()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    return-void
.end method

.method private waitForHandlerCreation()V
    .registers 4

    .prologue
    .line 295
    monitor-enter p0

    .line 296
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mHandlerConn:Lcom/android/server/WifiWatchdogService$WifiWatchdogConnectionHandler;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_16

    if-nez v1, :cond_19

    .line 299
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_16
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_1

    .line 300
    :catch_d
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_e
    const-string v1, "WifiWatchdogService"

    const-string v2, "Interrupted while waiting on handler."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 304
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_16

    .line 305
    return-void
.end method
