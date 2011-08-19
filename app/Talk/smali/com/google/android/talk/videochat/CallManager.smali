.class public Lcom/google/android/talk/videochat/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Lcom/google/android/talk/videochat/LibjingleEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;,
        Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;,
        Lcom/google/android/talk/videochat/CallManager$LocalHandler;,
        Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;,
        Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;,
        Lcom/google/android/talk/videochat/CallManager$CallStatistics;,
        Lcom/google/android/talk/videochat/CallManager$StatsUpdate;,
        Lcom/google/android/talk/videochat/CallManager$Mode;
    }
.end annotation


# static fields
.field private static WAIT_FOR_WIFI_RETRY_INTERVAL:I

.field private static WAIT_FOR_WIFI_TIMEOUT:I

.field private static sInstance:Lcom/google/android/talk/videochat/CallManager;

.field private static sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothReceiver:Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;

.field private mBluetoothState:I

.field private mCallBoundaryCallback:Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;

.field private mCallStateListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/talk/videochat/ICallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnginePrepared:Z

.field private mImSessionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gtalkservice/IImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mInCall:Z

.field private mInCallLocalJid:Ljava/lang/String;

.field private mInCallRemoteJid:Ljava/lang/String;

.field private mIncomingCallRemoteJid:Ljava/lang/String;

.field private mInitiatingCall:Z

.field private mLastLibjingleCallStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/talk/videochat/CallState;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLibjingleCallStatisticsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/talk/videochat/CallManager$CallStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

.field private mLibjingleEventHandler:Lcom/google/android/talk/videochat/LibjingleEventHandler;

.field private mLocalHandler:Landroid/os/Handler;

.field private final mLogLibjinglePackets:Z

.field private mNeedToResolveRemoteJid:Z

.field private mNetworkStateReceiver:Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;

.field private mNotifiedRemoteJid:Ljava/lang/String;

.field private mProcessingTerminateCallForNetworkLoss:Z

.field private mRandomGenerator:Ljava/util/Random;

.field private mRemoteJidAccountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReportDeclineJids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReportTerminateJids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRinger:Lcom/google/android/talk/videochat/CallRinger;

.field private mSavedMuteState:Z

.field private mService:Lcom/google/android/talk/videochat/VideoChatService;

.field private mSessionIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartWaitForWifiTime:J

.field private mTerminateCallBecauseOfNetworkLossRunnable:Ljava/lang/Runnable;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateReceiver:Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;

.field private onBluetoothTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 314
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/talk/videochat/CallManager;->sInstanceLock:Ljava/lang/Object;

    .line 1005
    const/16 v0, 0x2710

    sput v0, Lcom/google/android/talk/videochat/CallManager;->WAIT_FOR_WIFI_TIMEOUT:I

    .line 1006
    const/16 v0, 0x3e8

    sput v0, Lcom/google/android/talk/videochat/CallManager;->WAIT_FOR_WIFI_RETRY_INTERVAL:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/talk/videochat/VideoChatService;)V
    .locals 7
    .parameter "service"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mRandomGenerator:Ljava/util/Random;

    .line 185
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mReportTerminateJids:Ljava/util/ArrayList;

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mReportDeclineJids:Ljava/util/ArrayList;

    .line 213
    iput v5, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    .line 220
    new-instance v2, Lcom/google/android/talk/videochat/CallManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/videochat/CallManager$1;-><init>(Lcom/google/android/talk/videochat/CallManager;)V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->onBluetoothTimeoutRunnable:Ljava/lang/Runnable;

    .line 1007
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/talk/videochat/CallManager;->mStartWaitForWifiTime:J

    .line 1866
    iput-boolean v5, p0, Lcom/google/android/talk/videochat/CallManager;->mProcessingTerminateCallForNetworkLoss:Z

    .line 1882
    new-instance v2, Lcom/google/android/talk/videochat/CallManager$5;

    invoke-direct {v2, p0}, Lcom/google/android/talk/videochat/CallManager$5;-><init>(Lcom/google/android/talk/videochat/CallManager;)V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mTerminateCallBecauseOfNetworkLossRunnable:Ljava/lang/Runnable;

    .line 326
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->initHandlers()V

    .line 327
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager;->mService:Lcom/google/android/talk/videochat/VideoChatService;

    .line 328
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    .line 329
    new-instance v2, Lcom/google/android/talk/videochat/Libjingle;

    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingleEventHandler:Lcom/google/android/talk/videochat/LibjingleEventHandler;

    invoke-direct {v2, v3, v4}, Lcom/google/android/talk/videochat/Libjingle;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    .line 330
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v2}, Lcom/google/android/talk/videochat/Libjingle;->init()V

    .line 331
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mAudioManager:Landroid/media/AudioManager;

    .line 332
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 333
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    .line 334
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    .line 335
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    .line 336
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mRemoteJidAccountMap:Ljava/util/HashMap;

    .line 337
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mImSessionMap:Ljava/util/HashMap;

    .line 338
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mSessionIdMap:Ljava/util/HashMap;

    .line 339
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 340
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x3

    const-string v4, "VideoChatWifiLock"

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 342
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 344
    const-string v2, "talk.libjinglepackets"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    or-int/lit8 v2, v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/talk/videochat/CallManager;->mLogLibjinglePackets:Z

    .line 347
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->wifiRequiredForVideoChat(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, wifiStateFilter:Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    new-instance v2, Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;

    invoke-direct {v2, p0, v6}, Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;-><init>(Lcom/google/android/talk/videochat/CallManager;Lcom/google/android/talk/videochat/CallManager$1;)V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiStateReceiver:Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;

    .line 352
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiStateReceiver:Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    .end local v1           #wifiStateFilter:Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, networkStateFilter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;

    invoke-direct {v2, p0, v6}, Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;-><init>(Lcom/google/android/talk/videochat/CallManager;Lcom/google/android/talk/videochat/CallManager$1;)V

    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mNetworkStateReceiver:Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;

    .line 357
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager;->mNetworkStateReceiver:Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->registerForBluetoothIntentBroadcast()V

    .line 360
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/CallManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->onBluetoothTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/videochat/CallManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/videochat/CallManager;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/talk/videochat/CallManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/google/android/talk/videochat/CallManager;->mStartWaitForWifiTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/google/android/talk/videochat/CallManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/google/android/talk/videochat/CallManager;->mStartWaitForWifiTime:J

    return-wide p1
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/google/android/talk/videochat/CallManager;->WAIT_FOR_WIFI_TIMEOUT:I

    return v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/google/android/talk/videochat/CallManager;->WAIT_FOR_WIFI_RETRY_INTERVAL:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/videochat/CallManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/talk/videochat/CallManager;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/CallManager;->declineCall(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/talk/videochat/CallManager;Ljava/lang/String;JZLcom/google/android/talk/videochat/CallState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/google/android/talk/videochat/CallManager;->handleApprovedIncomingCall(Ljava/lang/String;JZLcom/google/android/talk/videochat/CallState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/talk/videochat/CallManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/talk/videochat/CallManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/talk/videochat/CallManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mImSessionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/CallManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->cancelBluetoothTimer()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/talk/videochat/CallManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->postFatalNetworkLoss()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/talk/videochat/CallManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/talk/videochat/CallManager;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CallManager;->terminateCall(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/google/android/talk/videochat/CallManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mIncomingCallRemoteJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/talk/videochat/CallManager;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CallManager;->getRemoteJidAccountId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/google/android/talk/videochat/CallManager;)Lcom/google/android/talk/videochat/Libjingle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/videochat/CallManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CallManager;->updateBluetoothState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/videochat/CallManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/videochat/CallManager;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/videochat/CallManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/videochat/CallManager;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method private static calculateMedian(Ljava/util/ArrayList;)D
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .prologue
    .local p0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v6, 0x1

    .line 1909
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1910
    .local v2, size:I
    if-nez v2, :cond_0

    .line 1911
    const-wide/16 v4, 0x0

    .line 1926
    :goto_0
    return-wide v4

    .line 1914
    :cond_0
    new-array v3, v2, [D

    .line 1915
    .local v3, values:[D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1916
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1915
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1919
    :cond_1
    invoke-static {v3}, Ljava/util/Arrays;->sort([D)V

    .line 1920
    div-int/lit8 v1, v2, 0x2

    .line 1921
    .local v1, middle:I
    rem-int/lit8 v4, v2, 0x2

    if-ne v4, v6, :cond_2

    .line 1923
    aget-wide v4, v3, v1

    goto :goto_0

    .line 1926
    :cond_2
    sub-int v4, v1, v6

    aget-wide v4, v3, v4

    aget-wide v6, v3, v1

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    goto :goto_0
.end method

.method private callStarting(Ljava/lang/String;)V
    .locals 5
    .parameter "remoteJid"

    .prologue
    const/4 v4, 0x1

    .line 1560
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/talk/videochat/CallManager;->mInitiatingCall:Z

    .line 1561
    iput-boolean v4, p0, Lcom/google/android/talk/videochat/CallManager;->mInCall:Z

    .line 1562
    const/4 v1, 0x0

    .line 1563
    .local v1, stats:Lcom/google/android/talk/videochat/CallManager$CallStatistics;
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    monitor-enter v3

    .line 1564
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;

    move-object v1, v0

    .line 1565
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    if-eqz v1, :cond_0

    .line 1567
    iput-boolean v4, v1, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mCallAccepted:Z

    .line 1569
    :cond_0
    return-void

    .line 1565
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private cancelBluetoothTimer()V
    .locals 2

    .prologue
    .line 721
    const-string v0, "Canceling bluetooth timer"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->onBluetoothTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 723
    return-void
.end method

.method private declineCall(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "remoteJid"
    .parameter "reportDecline"

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    const-string v0, "declineCall: not initialized!"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 561
    const/4 v0, 0x0

    .line 570
    :goto_0
    return v0

    .line 564
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "declineCall for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/Libjingle;->declineCall(Ljava/lang/String;)V

    .line 567
    if-eqz p2, :cond_1

    .line 568
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mReportDeclineJids:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findInBlackList(Ljava/lang/String;Lcom/google/android/talk/util/SessionStanzaParser;)Z
    .locals 2
    .parameter "remoteJid"
    .parameter "stanza"

    .prologue
    .line 903
    const-string v0, "voice.google.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/talk/util/SessionStanzaParser;->isValidSessionStanza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findInBlackList: found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 905
    const/4 v0, 0x1

    .line 908
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lcom/google/android/talk/videochat/VideoChatService;)Lcom/google/android/talk/videochat/CallManager;
    .locals 2
    .parameter "service"

    .prologue
    .line 317
    sget-object v0, Lcom/google/android/talk/videochat/CallManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_0
    sget-object v1, Lcom/google/android/talk/videochat/CallManager;->sInstance:Lcom/google/android/talk/videochat/CallManager;

    if-nez v1, :cond_0

    .line 319
    new-instance v1, Lcom/google/android/talk/videochat/CallManager;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/CallManager;-><init>(Lcom/google/android/talk/videochat/VideoChatService;)V

    sput-object v1, Lcom/google/android/talk/videochat/CallManager;->sInstance:Lcom/google/android/talk/videochat/CallManager;

    .line 321
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    sget-object v0, Lcom/google/android/talk/videochat/CallManager;->sInstance:Lcom/google/android/talk/videochat/CallManager;

    return-object v0

    .line 321
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getPublicLibjingleCallState(I)I
    .locals 1
    .parameter "rawLibjingleCallState"

    .prologue
    const/4 v0, -0x1

    .line 1254
    packed-switch p1, :pswitch_data_0

    .line 1269
    :goto_0
    :pswitch_0
    return v0

    .line 1256
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1257
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1258
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1259
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1262
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 1263
    :pswitch_6
    const/16 v0, 0x8

    goto :goto_0

    .line 1265
    :pswitch_7
    const/16 v0, 0xa

    goto :goto_0

    .line 1266
    :pswitch_8
    const/16 v0, 0xb

    goto :goto_0

    .line 1267
    :pswitch_9
    const/16 v0, 0xc

    goto :goto_0

    .line 1268
    :pswitch_a
    const/16 v0, 0xd

    goto :goto_0

    .line 1254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private getRemoteJidAccountId(Ljava/lang/String;)J
    .locals 3
    .parameter "remoteJid"

    .prologue
    .line 1246
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mRemoteJidAccountMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1247
    .local v0, accountId:Ljava/lang/Long;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method private grabAudioFocus()V
    .locals 3

    .prologue
    .line 1751
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mSavedMuteState:Z

    .line 1755
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grabAudioFocus: set audio mode to MODE_IN_COMMUNICATION, saved_mute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/videochat/CallManager;->mSavedMuteState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isBluetoothAvailable()Z

    move-result v0

    .line 1760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grabAudioFocus: BT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 1761
    if-eqz v0, :cond_0

    .line 1762
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->turnOnBluetooth()V

    .line 1764
    :cond_0
    return-void
.end method

.method private handleApprovedIncomingCall(Ljava/lang/String;JZLcom/google/android/talk/videochat/CallState;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1101
    const-string v0, "talk:videochat"

    const-string v1, "handleApprovedIncomingCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-direct/range {p0 .. p5}, Lcom/google/android/talk/videochat/CallManager;->sendPostNotifierIntent(Ljava/lang/String;JZLcom/google/android/talk/videochat/CallState;)V

    .line 1103
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager;->mIncomingCallRemoteJid:Ljava/lang/String;

    .line 1104
    return-void
.end method

.method private handleIncomingCall(Ljava/lang/String;JZ)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1012
    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1013
    const/4 v9, 0x0

    .line 1015
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isInOrInitiatingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    invoke-direct {p0, p1, v5}, Lcom/google/android/talk/videochat/CallManager;->declineCall(Ljava/lang/String;Z)Z

    .line 1021
    const-string v0, "talk:videochat"

    const-string v2, "Already in call. Declining new call"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    .line 1022
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->asyncReportMissedCall(Ljava/lang/String;JZZ)V

    .line 1097
    :goto_0
    return-void

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->wifiRequiredForVideoChat(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1038
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1042
    invoke-direct {p0, p1, v5}, Lcom/google/android/talk/videochat/CallManager;->declineCall(Ljava/lang/String;Z)Z

    .line 1043
    const-string v0, "talk:videochat"

    const-string v2, "Wifi disabled. Declining new call"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->asyncReportMissedCall(Ljava/lang/String;JZZ)V

    goto :goto_0

    .line 1047
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v2, :cond_3

    .line 1049
    const-string v0, "talk:videochat"

    const-string v2, "Wi-Fi doesn\'t have a connection. Let\'s see if it can get one..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1053
    iget-wide v2, p0, Lcom/google/android/talk/videochat/CallManager;->mStartWaitForWifiTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 1054
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/videochat/CallManager;->mStartWaitForWifiTime:J

    .line 1057
    :cond_2
    new-instance v2, Lcom/google/android/talk/videochat/CallManager$2;

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/google/android/talk/videochat/CallManager$2;-><init>(Lcom/google/android/talk/videochat/CallManager;Ljava/lang/String;Ljava/lang/String;JZLcom/google/android/talk/videochat/CallState;)V

    .line 1090
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    sget v1, Lcom/google/android/talk/videochat/CallManager;->WAIT_FOR_WIFI_RETRY_INTERVAL:I

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    .line 1096
    invoke-direct/range {v4 .. v9}, Lcom/google/android/talk/videochat/CallManager;->handleApprovedIncomingCall(Ljava/lang/String;JZLcom/google/android/talk/videochat/CallState;)V

    goto :goto_0
.end method

.method private initHandlers()V
    .locals 2

    .prologue
    .line 366
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 367
    new-instance v1, Lcom/google/android/talk/videochat/LibjingleEventHandler;

    invoke-direct {v1, v0}, Lcom/google/android/talk/videochat/LibjingleEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingleEventHandler:Lcom/google/android/talk/videochat/LibjingleEventHandler;

    .line 368
    new-instance v1, Lcom/google/android/talk/videochat/CallManager$LocalHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/videochat/CallManager$LocalHandler;-><init>(Lcom/google/android/talk/videochat/CallManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    .line 377
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingleEventHandler:Lcom/google/android/talk/videochat/LibjingleEventHandler;

    invoke-virtual {v1, p0}, Lcom/google/android/talk/videochat/LibjingleEventHandler;->setCallback(Lcom/google/android/talk/videochat/LibjingleEventCallback;)V

    .line 378
    return-void

    .line 369
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    new-instance v1, Lcom/google/android/talk/videochat/LibjingleEventHandler;

    invoke-direct {v1, v0}, Lcom/google/android/talk/videochat/LibjingleEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingleEventHandler:Lcom/google/android/talk/videochat/LibjingleEventHandler;

    .line 371
    new-instance v1, Lcom/google/android/talk/videochat/CallManager$LocalHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/videochat/CallManager$LocalHandler;-><init>(Lcom/google/android/talk/videochat/CallManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    goto :goto_0

    .line 373
    :cond_1
    new-instance v1, Lcom/google/android/talk/videochat/LibjingleEventHandler;

    invoke-direct {v1}, Lcom/google/android/talk/videochat/LibjingleEventHandler;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingleEventHandler:Lcom/google/android/talk/videochat/LibjingleEventHandler;

    .line 374
    new-instance v1, Lcom/google/android/talk/videochat/CallManager$LocalHandler;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/CallManager$LocalHandler;-><init>(Lcom/google/android/talk/videochat/CallManager;)V

    iput-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private initializeStats(Ljava/lang/String;)V
    .locals 3
    .parameter "remoteJid"

    .prologue
    .line 1572
    new-instance v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/CallManager$CallStatistics;-><init>(Lcom/google/android/talk/videochat/CallManager;)V

    .line 1573
    .local v0, stats:Lcom/google/android/talk/videochat/CallManager$CallStatistics;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mCallStartTime:J

    .line 1574
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mCallElapsedRealtimeAtStart:J

    .line 1575
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mSessionIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mSessionId:Ljava/lang/String;

    .line 1576
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    monitor-enter v1

    .line 1577
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    monitor-exit v1

    .line 1579
    return-void

    .line 1578
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private log(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 2019
    const/4 v0, 0x3

    const-string v1, "talk:videochat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CallManager] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 2020
    return-void
.end method

.method private logCallPerfStats(Ljava/lang/String;IZ)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    monitor-enter v1

    .line 1360
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;

    .line 1361
    if-nez v0, :cond_0

    .line 1362
    monitor-exit v1

    .line 1469
    :goto_0
    return-void

    .line 1364
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1368
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE MMM d HH:mm:ss yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1369
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1371
    iget-wide v5, v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mCallElapsedRealtimeAtStart:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 1375
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<sta:callPerfStats sessionId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " remoteUser=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" startTime=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mCallStartTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" callLength=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" callAccepted=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mCallAccepted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" callErrorCode=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" terminateCode=\"-1\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callType=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1389
    if-eqz p3, :cond_2

    .line 1390
    const-string v1, "video"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    :goto_1
    const-string v1, "\" xmlns:sta=\"google:call-perf-stats\">"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    iget-object v4, v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/talk/util/CircularArray;

    monitor-enter v4

    .line 1396
    :try_start_1
    iget-object v1, v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/talk/util/CircularArray;

    invoke-virtual {v1}, Lcom/google/android/talk/util/CircularArray;->count()I

    move-result v5

    .line 1397
    const/4 v1, 0x0

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_5

    .line 1398
    iget-object v1, v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/talk/util/CircularArray;

    invoke-virtual {v1, v6}, Lcom/google/android/talk/util/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/videochat/CallManager$StatsUpdate;

    .line 1401
    const-string v2, "unk"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1403
    :try_start_2
    new-instance v2, Lorg/json/JSONTokener;

    iget-object v7, v1, Lcom/google/android/talk/videochat/CallManager$StatsUpdate;->mLogString:Ljava/lang/String;

    invoke-direct {v2, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1404
    const-string v7, "reporttype"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1405
    const-string v8, "connectionInfo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1407
    const-string v7, "mediatype"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1408
    const-string v8, "voice"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1409
    const-string v7, "rtp"

    .line 1415
    :goto_3
    const-string v8, "<sta:dataPoint timeStamp=\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v1, Lcom/google/android/talk/videochat/CallManager$StatsUpdate;->mSecondsSinceCallStart:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\"><sta:connection flags=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "flags"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "rtt=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "rtt"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "totalBytesSent=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "bytessent"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "totalBytesRecv=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "bytesrcv"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "bytesSecondSent=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "bitratesend"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    div-int/lit8 v8, v8, 0x8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "bytesSecondRecv=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "bitratercv"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    div-int/lit8 v8, v8, 0x8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\">"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    const-string v1, "<sta:candidate endpoint=\"local\" address=\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "localaddr"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" name=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" type=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "localtype"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" protocol=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "localprotocol"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\"/>"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    const-string v1, "<sta:candidate endpoint=\"remote\" address=\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "remoteaddr"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\" name=\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "\" type=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "remotetype"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "\" protocol=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "remoteprotocol"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    const-string v1, "</sta:connection></sta:dataPoint>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1397
    :cond_1
    :goto_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_2

    .line 1365
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1392
    :cond_2
    const-string v1, "audio"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1410
    :cond_3
    :try_start_4
    const-string v8, "video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1411
    const-string v7, "video_rtp"

    goto/16 :goto_3

    .line 1413
    :cond_4
    const-string v7, "unknown"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 1464
    :cond_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1466
    const-string v0, "</sta:callPerfStats>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->sendIQStanzaWithExtension(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1464
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 1460
    :catch_0
    move-exception v1

    goto :goto_4
.end method

.method private onBluetoothTimeout()V
    .locals 1

    .prologue
    .line 726
    const-string v0, "Starting or stopping Bluetooth timed out"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 729
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->cancelBluetoothTimer()V

    .line 731
    iget v0, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    packed-switch v0, :pswitch_data_0

    .line 744
    :goto_0
    return-void

    .line 733
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->updateBluetoothState(I)V

    goto :goto_0

    .line 739
    :pswitch_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->updateBluetoothState(I)V

    goto :goto_0

    .line 731
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private postFatalNetworkLoss()V
    .locals 3

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mTerminateCallBecauseOfNetworkLossRunnable:Ljava/lang/Runnable;

    monitor-enter v0

    .line 1873
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/talk/videochat/CallManager;->mProcessingTerminateCallForNetworkLoss:Z

    if-nez v1, :cond_0

    .line 1874
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mTerminateCallBecauseOfNetworkLossRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1875
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/talk/videochat/CallManager;->mProcessingTerminateCallForNetworkLoss:Z

    .line 1879
    :goto_0
    monitor-exit v0

    .line 1880
    return-void

    .line 1877
    :cond_0
    const-string v1, "talk:videochat"

    const-string v2, "Already processing a fatal network loss report. Drop this one."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1879
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private prepareEngine(Ljava/lang/String;)V
    .locals 1
    .parameter "localJid"

    .prologue
    .line 405
    monitor-enter p0

    .line 406
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mEnginePrepared:Z

    if-eqz v0, :cond_0

    .line 407
    monitor-exit p0

    .line 415
    :goto_0
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mEnginePrepared:Z

    .line 412
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CallManager;->prepareJingleInfo(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/Libjingle;->prepareEngine(Ljava/lang/String;)V

    .line 414
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private prepareJingleInfo(Ljava/lang/String;)V
    .locals 4
    .parameter "jid"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mService:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v1}, Lcom/google/android/talk/videochat/JingleInfoManager;->getJingleInfoStanza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, jingleInfo:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### prepareJingleInfo: use stored jingle info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->handleJingleInfoStanza(Ljava/lang/String;)V

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mService:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v1, p1}, Lcom/google/android/talk/videochat/JingleInfoManager;->queryJingleInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method private recordAndReportCallStateUpdate()V
    .locals 7

    .prologue
    .line 1211
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1239
    :goto_0
    return-void

    .line 1215
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1217
    .local v1, inCallBareJid:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    monitor-enter v3

    .line 1218
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/videochat/CallState;

    .line 1219
    .local v0, callState:Lcom/google/android/talk/videochat/CallState;
    if-nez v0, :cond_1

    .line 1221
    monitor-exit v3

    goto :goto_0

    .line 1238
    .end local v0           #callState:Lcom/google/android/talk/videochat/CallState;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1224
    .restart local v0       #callState:Lcom/google/android/talk/videochat/CallState;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/talk/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    .line 1225
    iput-object v1, v0, Lcom/google/android/talk/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    .line 1226
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    iget-object v5, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/talk/videochat/Libjingle;->isVideo(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/talk/videochat/CallState;->video:Z

    .line 1227
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isMute()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/talk/videochat/CallState;->mute:Z

    .line 1228
    iget v4, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    iput v4, v0, Lcom/google/android/talk/videochat/CallState;->bluetoothState:I

    .line 1229
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    iget-object v5, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/talk/videochat/Libjingle;->isSecure(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/talk/videochat/CallState;->secure:Z

    .line 1232
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallState;->clone()Lcom/google/android/talk/videochat/CallState;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1237
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1238
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private recordAndReportCallStateUpdate(ILjava/lang/String;ZZ)V
    .locals 10
    .parameter "libjingleCallState"
    .parameter "remoteJid"
    .parameter "isVideo"
    .parameter "isSecure"

    .prologue
    .line 1171
    invoke-static {p2}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1172
    .local v8, remoteBareJid:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    monitor-enter v9

    .line 1173
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CallManager;->getPublicLibjingleCallState(I)I

    move-result v2

    .line 1174
    .local v2, publicLibjingleCallState:I
    if-ltz v2, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/videochat/CallState;

    .line 1176
    .local v0, callState:Lcom/google/android/talk/videochat/CallState;
    if-nez v0, :cond_1

    .line 1177
    new-instance v0, Lcom/google/android/talk/videochat/CallState;

    .end local v0           #callState:Lcom/google/android/talk/videochat/CallState;
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isMute()Z

    move-result v4

    iget v5, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    move-object v1, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/videochat/CallState;-><init>(Ljava/lang/String;IZZIZ)V

    .line 1193
    .restart local v0       #callState:Lcom/google/android/talk/videochat/CallState;
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallState;->clone()Lcom/google/android/talk/videochat/CallState;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1198
    .local v7, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1200
    .end local v0           #callState:Lcom/google/android/talk/videochat/CallState;
    .end local v7           #msg:Landroid/os/Message;
    :cond_0
    monitor-exit v9

    .line 1201
    return-void

    .line 1185
    .restart local v0       #callState:Lcom/google/android/talk/videochat/CallState;
    :cond_1
    iput-object p2, v0, Lcom/google/android/talk/videochat/CallState;->remoteFullJid:Ljava/lang/String;

    .line 1186
    iput-object v8, v0, Lcom/google/android/talk/videochat/CallState;->remoteBareJid:Ljava/lang/String;

    .line 1187
    iput v2, v0, Lcom/google/android/talk/videochat/CallState;->libjingleCallState:I

    .line 1188
    iput-boolean p3, v0, Lcom/google/android/talk/videochat/CallState;->video:Z

    .line 1189
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isMute()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/talk/videochat/CallState;->mute:Z

    .line 1190
    iget v1, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    iput v1, v0, Lcom/google/android/talk/videochat/CallState;->bluetoothState:I

    .line 1191
    iput-boolean p4, v0, Lcom/google/android/talk/videochat/CallState;->secure:Z

    goto :goto_0

    .line 1200
    .end local v0           #callState:Lcom/google/android/talk/videochat/CallState;
    .end local v2           #publicLibjingleCallState:I
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private recordRemoteJidAccountId(Ljava/lang/String;J)V
    .locals 3
    .parameter "remoteJid"
    .parameter "accountId"

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mRemoteJidAccountMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    return-void
.end method

.method private registerForBluetoothIntentBroadcast()V
    .locals 3

    .prologue
    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForBluetoothIntentBroadcast: mBluetoothReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothReceiver:Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 748
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothReceiver:Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;

    if-nez v1, :cond_0

    .line 749
    new-instance v1, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;-><init>(Lcom/google/android/talk/videochat/CallManager;)V

    iput-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothReceiver:Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;

    .line 750
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 751
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothReceiver:Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 755
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releaseAudioFocus()V
    .locals 2

    .prologue
    .line 1768
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->turnOffBluetooth()V

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAudioFocus: set mute to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/videochat/CallManager;->mSavedMuteState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and audio to MODE_NORMAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 1771
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 1772
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mSavedMuteState:Z

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->setMute(Z)V

    .line 1773
    return-void
.end method

.method private releaseEngine()V
    .locals 1

    .prologue
    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mEnginePrepared:Z

    if-nez v0, :cond_0

    .line 420
    const-string v0, "releaseEngine: mEnginePrepared=false, bail..."

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 421
    monitor-exit p0

    .line 427
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mEnginePrepared:Z

    .line 425
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/Libjingle;->releaseEngine()V

    .line 426
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private replyToCallStateUpdateRequest()V
    .locals 4

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    if-nez v0, :cond_0

    .line 1167
    :goto_0
    return-void

    .line 1154
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    monitor-enter v1

    .line 1155
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStateMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/videochat/CallState;

    .line 1156
    if-eqz v0, :cond_1

    .line 1158
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isMute()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/talk/videochat/CallState;->mute:Z

    .line 1160
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallState;->clone()Lcom/google/android/talk/videochat/CallState;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1162
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1166
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1164
    :cond_1
    :try_start_1
    const-string v0, "talk:videochat"

    const-string v2, "requestCallStateUpdate() failed: No record for inCallBareJid"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1779
    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    .line 1780
    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInCall:Z

    .line 1781
    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInitiatingCall:Z

    .line 1782
    iput-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    .line 1783
    iput-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mIncomingCallRemoteJid:Ljava/lang/String;

    .line 1784
    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mProcessingTerminateCallForNetworkLoss:Z

    .line 1785
    invoke-static {}, Lcom/google/android/talk/videochat/CameraManager;->getInstance()Lcom/google/android/talk/videochat/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CameraManager;->reset()V

    .line 1786
    return-void
.end method

.method private sendCallPerfStanza(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "callPerfStanza"
    .parameter "remoteJid"

    .prologue
    .line 812
    invoke-direct {p0, p2}, Lcom/google/android/talk/videochat/CallManager;->getRemoteJidAccountId(Ljava/lang/String;)J

    move-result-wide v0

    .line 813
    .local v0, accountId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 814
    const-string v4, "talk:videochat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCallPerfStanza: failed to find account_id for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", drop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :goto_0
    return-void

    .line 820
    :cond_0
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mImSessionMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gtalkservice/IImSession;

    .line 821
    .local v3, session:Lcom/google/android/gtalkservice/IImSession;
    if-nez v3, :cond_1

    .line 822
    const-string v4, "talk:videochat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCallPerfStanza: no IImSession for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", drop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 833
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-interface {v3}, Lcom/google/android/gtalkservice/IImSession;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/google/android/talk/videochat/SessionStanzaSender;->sendCallPerfStatsStanza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 835
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 836
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "talk:videochat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCallPerfStanza caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 839
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 840
    const-string v4, "talk"

    const-string v5, "[CallManager] sendCallPerfStatsStanza"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendDismissNotifierIntent(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1131
    monitor-enter p0

    .line 1132
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mNotifiedRemoteJid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mNotifiedRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDismissNotifierIntent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotifiedRemoteJid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mNotifiedRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 1135
    monitor-exit p0

    .line 1143
    :goto_0
    return-void

    .line 1138
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mNotifiedRemoteJid:Ljava/lang/String;

    .line 1139
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.CANCEL_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1142
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1139
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendIQStanzaWithExtension(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<cli:iq to=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallLocalJid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" type=\"get\" id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mRandomGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " xmlns:cli=\"jabber:client\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</cli:iq>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/videochat/CallManager;->sendCallPerfStanza(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    return-void
.end method

.method private sendPostNotifierIntent(Ljava/lang/String;JZLcom/google/android/talk/videochat/CallState;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1111
    monitor-enter p0

    .line 1112
    :try_start_0
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager;->mNotifiedRemoteJid:Ljava/lang/String;

    .line 1113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.POST_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/talk/videochat/NotificationReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1119
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1120
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1121
    const-string v1, "isvideo"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1122
    const-string v1, "iscollision"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1124
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1125
    return-void

    .line 1113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startBluetoothTimer()V
    .locals 4

    .prologue
    .line 716
    const-string v0, "Starting bluetooth timer"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->onBluetoothTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 718
    return-void
.end method

.method private startOutgoingCallRinger()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 1582
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1584
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    if-nez v0, :cond_0

    .line 1585
    new-instance v0, Lcom/google/android/talk/videochat/CallRinger;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mLocalHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/videochat/CallRinger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    .line 1586
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    const-string v1, "android.resource://com.google.android.talk/raw/outgoing_call_ring"

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/CallRinger;->setRingtoneUrl(Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    invoke-virtual {v0, v3}, Lcom/google/android/talk/videochat/CallRinger;->setStreamType(I)V

    .line 1590
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallRinger;->startRing()V

    .line 1591
    return-void
.end method

.method private stopOutgoingCallRinger()V
    .locals 2

    .prologue
    .line 1594
    const-string v0, "stopOutgoingCallRinger"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 1595
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallRinger;->stopRing()V

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1599
    return-void
.end method

.method private stripTempEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "rawRemoteJid"

    .prologue
    .line 999
    if-eqz p1, :cond_0

    const-string v0, "/videochat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1002
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private terminateCall(Z)Z
    .locals 3
    .parameter "reportTerminate"

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isInOrInitiatingCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 592
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/videochat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/Libjingle;->terminateCall(Ljava/lang/String;)V

    .line 599
    :goto_0
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->stopOutgoingCallRinger()V

    .line 601
    if-eqz p1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mReportTerminateJids:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_0
    const/4 v0, 0x1

    .line 606
    :goto_1
    return v0

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/Libjingle;->terminateCall(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private trackCallSessionId(Lcom/google/android/talk/util/SessionStanzaParser;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1545
    iget-object v0, p1, Lcom/google/android/talk/util/SessionStanzaParser;->mId:Ljava/lang/String;

    .line 1546
    if-eqz v0, :cond_0

    .line 1547
    const-string v1, "initiate"

    iget-object v2, p1, Lcom/google/android/talk/util/SessionStanzaParser;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1548
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mSessionIdMap:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    const-string v1, "talk:videochat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  for starting call with: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1551
    :cond_1
    const-string v1, "terminate"

    iget-object v2, p1, Lcom/google/android/talk/util/SessionStanzaParser;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mSessionIdMap:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    const-string v1, "talk:videochat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  for terminated call with: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterForBluetoothIntentBroadcast()V
    .locals 2

    .prologue
    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterForBluetoothIntentBroadcast: mBluetoothReceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothReceiver:Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothReceiver:Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothReceiver:Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothReceiver:Lcom/google/android/talk/videochat/CallManager$BluetoothReceiver;

    .line 763
    :cond_0
    return-void
.end method

.method private updateBluetoothState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 664
    iget v0, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    if-ne p1, v0, :cond_0

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bluetooth state is already "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", not notifying listeners"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 673
    :goto_0
    return-void

    .line 669
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating Bluetooth state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 670
    iput p1, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    .line 672
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->recordAndReportCallStateUpdate()V

    goto :goto_0
.end method


# virtual methods
.method public acceptCall(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 2
    .parameter "localJid"
    .parameter "remoteJid"
    .parameter "accountId"

    .prologue
    const/4 v1, 0x0

    .line 531
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    const-string v0, "acceptCall: not initialized!"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    move v0, v1

    .line 544
    :goto_0
    return v0

    .line 536
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    .line 537
    iput-object p2, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    .line 538
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallLocalJid:Ljava/lang/String;

    .line 539
    invoke-direct {p0, p2}, Lcom/google/android/talk/videochat/CallManager;->callStarting(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptCall for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 542
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/talk/videochat/CallManager;->recordRemoteJidAccountId(Ljava/lang/String;J)V

    .line 543
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/Libjingle;->acceptCall(Ljava/lang/String;)V

    .line 544
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 766
    invoke-interface {p1}, Lcom/google/android/talk/videochat/ICallStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 768
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 769
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/videochat/ICallStateListener;

    .line 770
    .local v1, csl:Lcom/google/android/talk/videochat/ICallStateListener;
    invoke-interface {v1}, Lcom/google/android/talk/videochat/ICallStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 771
    monitor-exit v3

    .line 777
    .end local v1           #csl:Lcom/google/android/talk/videochat/ICallStateListener;
    :goto_0
    return-void

    .line 775
    :cond_1
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 776
    monitor-exit v3

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public asyncReportEndCause(Ljava/lang/String;JZI)V
    .locals 8
    .parameter "remoteBareJid"
    .parameter "accountId"
    .parameter "isVideo"
    .parameter "endCause"

    .prologue
    .line 1511
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/google/android/talk/videochat/CallManager$4;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/videochat/CallManager$4;-><init>(Lcom/google/android/talk/videochat/CallManager;JLjava/lang/String;ZI)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1542
    return-void
.end method

.method public asyncReportMissedCall(Ljava/lang/String;JZZ)V
    .locals 8
    .parameter "remoteBareJid"
    .parameter "accountId"
    .parameter "isVideo"
    .parameter "noWifi"

    .prologue
    .line 1477
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/google/android/talk/videochat/CallManager$3;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/videochat/CallManager$3;-><init>(Lcom/google/android/talk/videochat/CallManager;JLjava/lang/String;ZZ)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1502
    return-void
.end method

.method public declineCall(Ljava/lang/String;)Z
    .locals 1
    .parameter "remoteJid"

    .prologue
    .line 548
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/talk/videochat/CallManager;->declineCall(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 20
    .parameter

    .prologue
    .line 1935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_1

    .line 2016
    :cond_0
    :goto_0
    return-void

    .line 1939
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1940
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1941
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1942
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1943
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1944
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1945
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1946
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1947
    const-string v2, "Stats history"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    move-object v3, v0

    monitor-enter v3

    .line 1951
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    move-object v4, v0

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/videochat/CallManager$CallStatistics;

    .line 1952
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1954
    if-eqz v2, :cond_0

    .line 1958
    iget-object v13, v2, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/talk/util/CircularArray;

    monitor-enter v13

    .line 1959
    :try_start_1
    iget-object v3, v2, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/talk/util/CircularArray;

    invoke-virtual {v3}, Lcom/google/android/talk/util/CircularArray;->count()I

    move-result v14

    .line 1960
    const/4 v3, 0x0

    move v15, v3

    :goto_1
    if-ge v15, v14, :cond_4

    .line 1961
    iget-object v3, v2, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/talk/util/CircularArray;

    invoke-virtual {v3, v15}, Lcom/google/android/talk/util/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/talk/videochat/CallManager$StatsUpdate;

    .line 1962
    new-instance v16, Ljava/util/Date;

    move-object v0, v3

    iget-wide v0, v0, Lcom/google/android/talk/videochat/CallManager$StatsUpdate;->mTime:J

    move-wide/from16 v17, v0

    invoke-direct/range {v16 .. v18}, Ljava/util/Date;-><init>(J)V

    .line 1965
    const-string v17, "unk"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1967
    :try_start_2
    new-instance v4, Lorg/json/JSONTokener;

    move-object v0, v3

    iget-object v0, v0, Lcom/google/android/talk/videochat/CallManager$StatsUpdate;->mLogString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 1968
    const-string v18, "reporttype"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1969
    const-string v18, "videomediaengine"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1970
    const-string v18, "bitratercv"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1971
    const-string v18, "bitratesend"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1972
    const-string v18, "frameratercv"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1973
    const-string v18, "frameratesend"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    move-object/from16 v4, v17

    .line 1985
    :goto_3
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " -- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v16, " -- "

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lcom/google/android/talk/videochat/CallManager$StatsUpdate;->mLogString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1960
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto/16 :goto_1

    .line 1952
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 1974
    :cond_3
    :try_start_5
    const-string v18, "videorenderer"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1975
    const-string v18, "renderer_framerate"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1976
    const-string v18, "video_framerate"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    const-string v18, "video_renderered_framerate"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1979
    const-string v18, "video_dropped_framerate"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 1982
    :catch_0
    move-exception v4

    move-object/from16 v4, v17

    goto/16 :goto_3

    .line 1988
    :cond_4
    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1989
    const-string v2, "Median video rates"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   Receive bitrate             "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/talk/videochat/CallManager;->calculateMedian(Ljava/util/ArrayList;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "           FPS                 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Lcom/google/android/talk/videochat/CallManager;->calculateMedian(Ljava/util/ArrayList;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      Send bitrate             "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Lcom/google/android/talk/videochat/CallManager;->calculateMedian(Ljava/util/ArrayList;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "           FPS                 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Lcom/google/android/talk/videochat/CallManager;->calculateMedian(Ljava/util/ArrayList;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Renderer FPS                "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lcom/google/android/talk/videochat/CallManager;->calculateMedian(Ljava/util/ArrayList;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "           Rendered video FPS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/google/android/talk/videochat/CallManager;->calculateMedian(Ljava/util/ArrayList;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2002
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "           Rcv video FPS      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10}, Lcom/google/android/talk/videochat/CallManager;->calculateMedian(Ljava/util/ArrayList;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "           Dropped video FPS  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/google/android/talk/videochat/CallManager;->calculateMedian(Ljava/util/ArrayList;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2007
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/videochat/CallManager;->isInOrInitiatingCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2008
    const-string v2, "Call info"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/videochat/CallManager;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "in call"

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    sessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CallManager;->mSessionIdMap:Ljava/util/HashMap;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    remoteJid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/talk/videochat/Libjingle;->isVideo(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "       secure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/talk/videochat/Libjingle;->isSecure(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1988
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 2009
    :cond_5
    const-string v3, "initiating call"

    goto/16 :goto_4
.end method

.method public getBluetoothState()I
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    return v0
.end method

.method public getConnectedCallRemoteJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->stripTempEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLibjingle()Lcom/google/android/talk/videochat/Libjingle;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    return-object v0
.end method

.method public handleCallStateChanged(IILjava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 1603
    invoke-static {p3}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1604
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v0, p3}, Lcom/google/android/talk/videochat/Libjingle;->isSecure(Ljava/lang/String;)Z

    move-result v6

    .line 1605
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v0, p3}, Lcom/google/android/talk/videochat/Libjingle;->isVideo(Ljava/lang/String;)Z

    move-result v4

    .line 1607
    invoke-direct {p0, p3}, Lcom/google/android/talk/videochat/CallManager;->getRemoteJidAccountId(Ljava/lang/String;)J

    move-result-wide v2

    .line 1608
    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-nez v0, :cond_0

    .line 1609
    const-string v0, "talk:videochat"

    const-string v7, "call state change with a remoteJid from an unknown accountId"

    invoke-static {v0, v7}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1747
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1616
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/google/android/talk/videochat/CallManager;->initializeStats(Ljava/lang/String;)V

    .line 1617
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;

    if-eqz v0, :cond_2

    .line 1618
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;->onInit(Ljava/lang/String;JZ)V

    .line 1621
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->startOutgoingCallRinger()V

    .line 1622
    invoke-direct {p0, p1, p3, v4, v6}, Lcom/google/android/talk/videochat/CallManager;->recordAndReportCallStateUpdate(ILjava/lang/String;ZZ)V

    goto :goto_0

    .line 1625
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/google/android/talk/videochat/CallManager;->initializeStats(Ljava/lang/String;)V

    .line 1626
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;

    if-eqz v0, :cond_3

    .line 1627
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;

    invoke-interface {v0, p3, v2, v3, v4}, Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;->onInit(Ljava/lang/String;JZ)V

    .line 1632
    :cond_3
    invoke-direct {p0, p1, p3, v4, v6}, Lcom/google/android/talk/videochat/CallManager;->recordAndReportCallStateUpdate(ILjava/lang/String;ZZ)V

    .line 1634
    invoke-direct {p0, p3, v2, v3, v4}, Lcom/google/android/talk/videochat/CallManager;->handleIncomingCall(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1637
    :pswitch_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mIncomingCallRemoteJid:Ljava/lang/String;

    .line 1638
    invoke-direct {p0, p1, p3, v4, v6}, Lcom/google/android/talk/videochat/CallManager;->recordAndReportCallStateUpdate(ILjava/lang/String;ZZ)V

    goto :goto_0

    .line 1641
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/google/android/talk/videochat/CallManager;->callStarting(Ljava/lang/String;)V

    .line 1643
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->stopOutgoingCallRinger()V

    .line 1644
    invoke-direct {p0, p1, p3, v4, v6}, Lcom/google/android/talk/videochat/CallManager;->recordAndReportCallStateUpdate(ILjava/lang/String;ZZ)V

    goto :goto_0

    .line 1651
    :pswitch_5
    invoke-direct {p0, p1, p3, v4, v6}, Lcom/google/android/talk/videochat/CallManager;->recordAndReportCallStateUpdate(ILjava/lang/String;ZZ)V

    .line 1652
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mReportDeclineJids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 1654
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->asyncReportEndCause(Ljava/lang/String;JZI)V

    .line 1656
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mReportDeclineJids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_6
    move-object v0, p0

    move v5, v9

    .line 1660
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->asyncReportEndCause(Ljava/lang/String;JZI)V

    .line 1662
    invoke-direct {p0, p1, p3, v4, v6}, Lcom/google/android/talk/videochat/CallManager;->recordAndReportCallStateUpdate(ILjava/lang/String;ZZ)V

    goto :goto_0

    .line 1667
    :pswitch_7
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->stopOutgoingCallRinger()V

    .line 1668
    invoke-direct {p0, p3, p2, v4}, Lcom/google/android/talk/videochat/CallManager;->logCallPerfStats(Ljava/lang/String;IZ)V

    .line 1669
    invoke-direct {p0, p1, p3, v4, v6}, Lcom/google/android/talk/videochat/CallManager;->recordAndReportCallStateUpdate(ILjava/lang/String;ZZ)V

    .line 1670
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mReportTerminateJids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 1673
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->asyncReportEndCause(Ljava/lang/String;JZI)V

    .line 1675
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mReportTerminateJids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1676
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInitiatingCall:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move v5, v9

    .line 1681
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->asyncReportEndCause(Ljava/lang/String;JZI)V

    goto/16 :goto_0

    .line 1686
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->stopOutgoingCallRinger()V

    .line 1687
    invoke-direct {p0, p3, p2, v4}, Lcom/google/android/talk/videochat/CallManager;->logCallPerfStats(Ljava/lang/String;IZ)V

    .line 1688
    invoke-direct {p0, p1, p3, v4, v6}, Lcom/google/android/talk/videochat/CallManager;->recordAndReportCallStateUpdate(ILjava/lang/String;ZZ)V

    .line 1689
    const/4 v0, 0x2

    .line 1690
    iget-boolean v5, p0, Lcom/google/android/talk/videochat/CallManager;->mInitiatingCall:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v9

    :goto_1
    move-object v0, p0

    .line 1696
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->asyncReportEndCause(Ljava/lang/String;JZI)V

    goto/16 :goto_0

    .line 1700
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->wifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1701
    const-string v0, "Acquiring WiFi lock"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1704
    :cond_5
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;

    if-eqz v0, :cond_6

    .line 1705
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;

    invoke-interface {v0, p3, v2, v3, v4}, Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;->onConnect(Ljava/lang/String;JZ)V

    .line 1708
    :cond_6
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->grabAudioFocus()V

    .line 1709
    invoke-direct {p0, p1, p3, v4, v6}, Lcom/google/android/talk/videochat/CallManager;->recordAndReportCallStateUpdate(ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1716
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_DEINIT remoteJid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInCallRemoteJid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 1717
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->stopOutgoingCallRinger()V

    .line 1719
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/google/android/talk/ActivityUtils;->isLooseJidMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mIncomingCallRemoteJid:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/google/android/talk/ActivityUtils;->isLooseJidMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_7
    move v0, v5

    .line 1721
    :goto_2
    if-eqz v0, :cond_8

    .line 1724
    const-string v1, "Releasing WiFi lock if we had it"

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 1725
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1726
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->reset()V

    .line 1728
    :cond_8
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 1736
    :cond_9
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->releaseAudioFocus()V

    .line 1739
    :cond_a
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;

    if-eqz v0, :cond_b

    .line 1740
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;

    invoke-interface {v0, p3, v2, v3}, Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;->onDeinit(Ljava/lang/String;J)V

    .line 1743
    :cond_b
    invoke-direct {p0, p3}, Lcom/google/android/talk/videochat/CallManager;->sendDismissNotifierIntent(Ljava/lang/String;)V

    .line 1744
    invoke-direct {p0, p1, p3, v4, v6}, Lcom/google/android/talk/videochat/CallManager;->recordAndReportCallStateUpdate(ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_c
    move v0, v9

    .line 1719
    goto :goto_2

    :cond_d
    move v5, v0

    goto/16 :goto_1

    .line 1612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public handleIncomingMessage(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/talk/util/SessionStanzaParser;)Z
    .locals 7
    .parameter "localJid"
    .parameter "remoteJid"
    .parameter "accountId"
    .parameter "stanza"

    .prologue
    const/4 v6, 0x0

    .line 913
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 914
    const-string v3, "talk:videochat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleIncomingMessage: not initialized, drop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p5, Lcom/google/android/talk/util/SessionStanzaParser;->mRawStanza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    .line 970
    :goto_0
    return v3

    .line 919
    :cond_0
    invoke-direct {p0, p2, p5}, Lcom/google/android/talk/videochat/CallManager;->findInBlackList(Ljava/lang/String;Lcom/google/android/talk/util/SessionStanzaParser;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 920
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIncomingMessage: drop incoming message from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because it\'s in the blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    move v3, v6

    .line 922
    goto :goto_0

    .line 925
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/talk/videochat/CallManager;->recordRemoteJidAccountId(Ljava/lang/String;J)V

    .line 930
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager;->mImSessionMap:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/IImSession;

    .line 931
    .local v2, session:Lcom/google/android/gtalkservice/IImSession;
    if-nez v2, :cond_2

    .line 932
    const-string v3, "talk:videochat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleIncomingMessage: cannot find IImSession for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", drop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p5, Lcom/google/android/talk/util/SessionStanzaParser;->mRawStanza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    .line 935
    goto :goto_0

    .line 938
    :cond_2
    invoke-direct {p0, p5, p2}, Lcom/google/android/talk/videochat/CallManager;->trackCallSessionId(Lcom/google/android/talk/util/SessionStanzaParser;Ljava/lang/String;)V

    .line 940
    const-string v3, "initiate"

    iget-object v4, p5, Lcom/google/android/talk/util/SessionStanzaParser;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 942
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CallManager;->prepareEngine(Ljava/lang/String;)V

    .line 965
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/talk/videochat/CallManager;->mLogLibjinglePackets:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/google/android/talk/videochat/CallManager;->mInCall:Z

    if-nez v3, :cond_4

    .line 966
    const-string v3, "talk:videochat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INCOMING] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p5, Lcom/google/android/talk/util/SessionStanzaParser;->mRawStanza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_4
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    iget-object v4, p5, Lcom/google/android/talk/util/SessionStanzaParser;->mRawStanza:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/talk/videochat/Libjingle;->processSessionStanza(Ljava/lang/String;)V

    .line 970
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 943
    :cond_5
    iget-boolean v3, p0, Lcom/google/android/talk/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    if-eqz v3, :cond_3

    .line 944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIncomingMessage - resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 946
    iget-object v3, p5, Lcom/google/android/talk/util/SessionStanzaParser;->mInitiator:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p5, Lcom/google/android/talk/util/SessionStanzaParser;->mId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 947
    :cond_6
    const-string v3, "talk:videochat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleIncomingMessage: couldn\'t parse the stanza "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p5, Lcom/google/android/talk/util/SessionStanzaParser;->mRawStanza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    .line 949
    goto/16 :goto_0

    .line 952
    :cond_7
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    iget-object v4, p5, Lcom/google/android/talk/util/SessionStanzaParser;->mId:Ljava/lang/String;

    invoke-virtual {v3, p2, v4}, Lcom/google/android/talk/videochat/Libjingle;->updateRemoteJidForSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    monitor-enter v3

    .line 954
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/videochat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, dummyJid:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;

    .line 956
    .local v0, callStats:Lcom/google/android/talk/videochat/CallManager$CallStatistics;
    if-eqz v0, :cond_8

    .line 957
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    :cond_8
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    iput-object p2, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    .line 962
    iput-boolean v6, p0, Lcom/google/android/talk/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    goto/16 :goto_1

    .line 960
    .end local v0           #callStats:Lcom/google/android/talk/videochat/CallManager$CallStatistics;
    .end local v1           #dummyJid:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public handleJingleInfoStanza(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 988
    const-string v0, "talk:videochat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleJingleInfoStanza: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 991
    const-string v0, "talk:videochat"

    const-string v1, "##### handleJingleInfoStanza: libjingle not initialized!"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :goto_0
    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/Libjingle;->setJingleInfoStanza(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleMessageResponse(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "remoteJid"
    .parameter "accountId"
    .parameter "original"
    .parameter "response"

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    const-string v0, "handleMessageResponse: not initialized!"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 985
    :goto_0
    return-void

    .line 980
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLogLibjinglePackets:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInCall:Z

    if-nez v0, :cond_1

    .line 981
    const-string v0, "talk:videochat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INCOMING] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v0, p4, p5}, Lcom/google/android/talk/videochat/Libjingle;->processSessionStanzaResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleOutgoingSessionStanza(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "sessionStanza"
    .parameter "remoteJid"

    .prologue
    .line 846
    invoke-direct {p0, p2}, Lcom/google/android/talk/videochat/CallManager;->getRemoteJidAccountId(Ljava/lang/String;)J

    move-result-wide v0

    .line 847
    .local v0, accountId:J
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-nez v7, :cond_0

    .line 848
    const-string v7, "talk:videochat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleOutgoingSessionStanza: failed to find account_id for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", drop "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :goto_0
    return-void

    .line 854
    :cond_0
    iget-object v7, p0, Lcom/google/android/talk/videochat/CallManager;->mImSessionMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gtalkservice/IImSession;

    .line 855
    .local v6, session:Lcom/google/android/gtalkservice/IImSession;
    if-nez v6, :cond_1

    .line 856
    const-string v7, "talk:videochat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleOutgoingSessionStanza: no IImSession for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", drop "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 862
    :cond_1
    new-instance v7, Lcom/google/android/talk/util/SessionStanzaParser;

    invoke-direct {v7, p1}, Lcom/google/android/talk/util/SessionStanzaParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, p2}, Lcom/google/android/talk/videochat/CallManager;->trackCallSessionId(Lcom/google/android/talk/util/SessionStanzaParser;Ljava/lang/String;)V

    .line 867
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isInOrInitiatingCall()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/google/android/talk/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    if-eqz v7, :cond_2

    .line 868
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/videochat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, dummyJid:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 871
    .local v4, pos:I
    const/4 v7, -0x1

    if-ne v7, v4, :cond_4

    .line 872
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Outgoing session stanza missing dummy jid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 883
    .end local v2           #dummyJid:Ljava/lang/String;
    .end local v4           #pos:I
    :cond_2
    :goto_1
    :try_start_0
    iget-boolean v7, p0, Lcom/google/android/talk/videochat/CallManager;->mLogLibjinglePackets:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/google/android/talk/videochat/CallManager;->mInCall:Z

    if-nez v7, :cond_3

    .line 884
    const-string v7, "talk:videochat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OUTGOING] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 891
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    invoke-interface {v6}, Lcom/google/android/gtalkservice/IImSession;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p1}, Lcom/google/android/talk/videochat/SessionStanzaSender;->sendSessionStanza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 893
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 894
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "talk:videochat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleOutgoingSessionStanza caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 897
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 898
    .restart local v3       #ex:Landroid/os/RemoteException;
    const-string v7, "talk"

    const-string v8, "[CallManager] handleOutgoingSessionStanza"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 874
    .end local v3           #ex:Landroid/os/RemoteException;
    .restart local v2       #dummyJid:Ljava/lang/String;
    .restart local v4       #pos:I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 875
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    iget-object v7, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public handleStatsUpdate(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    .line 1319
    const-string v1, "talk"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStatsUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 1324
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    monitor-enter v2

    .line 1325
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mLastLibjingleCallStatisticsMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;

    move-object v8, v0

    .line 1326
    monitor-exit v2

    .line 1328
    if-nez v8, :cond_1

    .line 1341
    :goto_0
    return-void

    .line 1326
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1333
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v8, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mCallElapsedRealtimeAtStart:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long v5, v1, v3

    .line 1335
    new-instance v1, Lcom/google/android/talk/videochat/CallManager$StatsUpdate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/talk/videochat/CallManager$StatsUpdate;-><init>(Lcom/google/android/talk/videochat/CallManager;JJLjava/lang/String;)V

    .line 1338
    iget-object v2, v8, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/talk/util/CircularArray;

    monitor-enter v2

    .line 1339
    :try_start_1
    iget-object v3, v8, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/talk/util/CircularArray;

    invoke-virtual {v3, v1}, Lcom/google/android/talk/util/CircularArray;->add(Ljava/lang/Object;)V

    .line 1340
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public initiateCall(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/talk/videochat/CallManager$Mode;)Z
    .locals 4
    .parameter "localJid"
    .parameter "remoteJid"
    .parameter "accountId"
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 487
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    const-string v0, "initiateCall: not initialized!"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    move v0, v2

    .line 520
    :goto_0
    return v0

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isInOrInitiatingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 497
    invoke-static {p2}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    const-string v0, "initiateCall: already in a call"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    move v0, v2

    .line 500
    goto :goto_0

    .line 504
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/talk/videochat/CallManager;->mInitiatingCall:Z

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initiateCall for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 508
    iput-object p2, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallRemoteJid:Ljava/lang/String;

    .line 509
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager;->mInCallLocalJid:Ljava/lang/String;

    .line 510
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gtz v0, :cond_3

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    .line 512
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/talk/videochat/CallManager;->recordRemoteJidAccountId(Ljava/lang/String;J)V

    .line 513
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CallManager;->prepareEngine(Ljava/lang/String;)V

    .line 515
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mNeedToResolveRemoteJid:Z

    if-eqz v0, :cond_2

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/videochat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    sget-object v1, Lcom/google/android/talk/videochat/CallManager$Mode;->VOICE_ONLY:Lcom/google/android/talk/videochat/CallManager$Mode;

    if-ne p5, v1, :cond_4

    move v1, v3

    :goto_2
    invoke-virtual {v0, p2, v1}, Lcom/google/android/talk/videochat/Libjingle;->initiateCall(Ljava/lang/String;Z)V

    move v0, v3

    .line 520
    goto :goto_0

    :cond_3
    move v0, v2

    .line 510
    goto :goto_1

    :cond_4
    move v1, v2

    .line 519
    goto :goto_2
.end method

.method public isBluetoothAvailable()Z
    .locals 4

    .prologue
    .line 647
    const/4 v1, 0x0

    .line 648
    .local v1, isConnected:Z
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1

    .line 649
    iget-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 650
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 655
    .end local v0           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAvailable returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 656
    return v1

    .line 650
    .restart local v0       #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 652
    .end local v0           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    const-string v2, "isBluetoothAvailable: mBluetoothHeadset is null"

    invoke-direct {p0, v2}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInCall:Z

    return v0
.end method

.method public isInOrInitiatingCall()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInCall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInitiatingCall:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/Libjingle;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public isInitiatingCall()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager;->mInitiatingCall:Z

    return v0
.end method

.method public isMute()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 446
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->unregisterForBluetoothIntentBroadcast()V

    .line 448
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->releaseEngine()V

    .line 450
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/Libjingle;->release()V

    .line 451
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiStateReceiver:Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiStateReceiver:Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 453
    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mWifiStateReceiver:Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mNetworkStateReceiver:Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mNetworkStateReceiver:Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 457
    iput-object v2, p0, Lcom/google/android/talk/videochat/CallManager;->mNetworkStateReceiver:Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;

    .line 459
    :cond_1
    sput-object v2, Lcom/google/android/talk/videochat/CallManager;->sInstance:Lcom/google/android/talk/videochat/CallManager;

    .line 460
    return-void
.end method

.method public removeCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    .line 780
    invoke-interface {p1}, Lcom/google/android/talk/videochat/ICallStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 782
    .local v0, binder:Landroid/os/IBinder;
    const/4 v3, 0x0

    .line 783
    .local v3, target:Lcom/google/android/talk/videochat/ICallStateListener;
    iget-object v4, p0, Lcom/google/android/talk/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    monitor-enter v4

    .line 784
    :try_start_0
    iget-object v5, p0, Lcom/google/android/talk/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/videochat/ICallStateListener;

    .line 785
    .local v1, csl:Lcom/google/android/talk/videochat/ICallStateListener;
    invoke-interface {v1}, Lcom/google/android/talk/videochat/ICallStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 786
    move-object v3, v1

    .line 790
    .end local v1           #csl:Lcom/google/android/talk/videochat/ICallStateListener;
    :cond_1
    if-eqz v3, :cond_2

    .line 791
    iget-object v5, p0, Lcom/google/android/talk/videochat/CallManager;->mCallStateListeners:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 793
    :cond_2
    monitor-exit v4

    .line 794
    return-void

    .line 793
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public requestCallStateUpdate()V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->replyToCallStateUpdateRequest()V

    .line 798
    return-void
.end method

.method public setBluetoothHeadset(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 1
    .parameter "bluetoothHeadset"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 390
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->updateBluetoothState(I)V

    .line 394
    :cond_0
    return-void
.end method

.method public setCallBoundaryCallback(Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager;->mCallBoundaryCallback:Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;

    .line 382
    return-void
.end method

.method public setImSession(JLcom/google/android/gtalkservice/IImSession;)V
    .locals 2
    .parameter "accountId"
    .parameter "imSession"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mImSessionMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    return-void
.end method

.method public setImageStabilizationLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/Libjingle;->setImageStabilizationLevel(I)V

    .line 611
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CallManager;->isMute()Z

    move-result v0

    .line 620
    .local v0, wasMute:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wasMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 622
    if-ne v0, p1, :cond_0

    .line 627
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_0
.end method

.method public terminateCall()Z
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->terminateCall(Z)Z

    move-result v0

    return v0
.end method

.method public turnOffBluetooth()V
    .locals 2

    .prologue
    .line 703
    const-string v0, "turnOffBluetooth"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 704
    iget v0, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 706
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->cancelBluetoothTimer()V

    .line 707
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->updateBluetoothState(I)V

    .line 708
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->startBluetoothTimer()V

    .line 709
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 713
    :goto_0
    return-void

    .line 711
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOffBluetooth: state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cannot turn off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public turnOnBluetooth()V
    .locals 2

    .prologue
    .line 680
    const-string v0, "turnOnBluetooth"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 681
    iget v0, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    const-string v0, "turnOnBluetooth: SCO is already on"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    .line 687
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->updateBluetoothState(I)V

    .line 696
    :goto_0
    return-void

    .line 689
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->updateBluetoothState(I)V

    .line 690
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 691
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CallManager;->startBluetoothTimer()V

    goto :goto_0

    .line 694
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnBluetooth: state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/talk/videochat/CallManager;->mBluetoothState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cannot turn on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/CallManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
