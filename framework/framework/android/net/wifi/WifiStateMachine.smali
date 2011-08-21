.class public Landroid/net/wifi/WifiStateMachine;
.super Lcom/android/internal/util/HierarchicalStateMachine;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateMachine$SoftApStartedState;,
        Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectedState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectingState;,
        Landroid/net/wifi/WifiStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$ConnectingState;,
        Landroid/net/wifi/WifiStateMachine$ConnectModeState;,
        Landroid/net/wifi/WifiStateMachine$ScanModeState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppingState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;,
        Landroid/net/wifi/WifiStateMachine$DriverFailedState;,
        Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;,
        Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;,
        Landroid/net/wifi/WifiStateMachine$DriverLoadedState;,
        Landroid/net/wifi/WifiStateMachine$DriverLoadingState;,
        Landroid/net/wifi/WifiStateMachine$InitialState;,
        Landroid/net/wifi/WifiStateMachine$DefaultState;,
        Landroid/net/wifi/WifiStateMachine$StateChangeResult;
    }
.end annotation


# static fields
.field private static final ACTION_ADHOC_CONNECTED_CHECK:Ljava/lang/String; = "com.android.server.WifiManager.action.ADHOC_CONNECTED_CHECK"

.field private static final ACTION_START_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.START_SCAN"

.field private static final ADHOC_CHECK_DISCONNECT_IN_SUSPEND_MS:J = 0x2bf20L

.field private static final ADHOC_CONNECTED_CHECK_REQUEST:I = 0x0

.field private static final ADHOC_NOT_FOUND_IN_SCAN_RESULT:I = 0x3

.field private static final ADHOC_SAME_RSSI_TRIGGER_SCAN:I = 0x5

.field static final AUTHENTICATION_FAILURE_EVENT:I = 0x10028

.field static final BASE:I = 0x10000

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x10034

.field static final CMD_ADHOC_RSSI_POLL:I = 0x1005c

.field static final CMD_BLACKLIST_NETWORK:I = 0x10039

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x10019

.field static final CMD_CLEAR_BLACKLIST:I = 0x1003a

.field static final CMD_CONNECT_NETWORK:I = 0x10056

.field static final CMD_DISABLE_NETWORK:I = 0x10038

.field static final CMD_DISCONNECT:I = 0x1004a

.field static final CMD_ENABLE_ALL_NETWORKS:I = 0x10037

.field static final CMD_ENABLE_BACKGROUND_SCAN:I = 0x1005b

.field static final CMD_ENABLE_NETWORK:I = 0x10036

.field static final CMD_ENABLE_RSSI_POLL:I = 0x10052

.field static final CMD_FORGET_NETWORK:I = 0x10058

.field static final CMD_GET_AP_CONFIG:I = 0x10018

.field static final CMD_LOAD_DRIVER:I = 0x10001

.field static final CMD_LOAD_DRIVER_FAILURE:I = 0x10004

.field static final CMD_LOAD_DRIVER_SUCCESS:I = 0x10003

.field static final CMD_PING_SUPPLICANT:I = 0x10033

.field static final CMD_REASSOCIATE:I = 0x1004c

.field static final CMD_RECONNECT:I = 0x1004b

.field static final CMD_REMOVE_NETWORK:I = 0x10035

.field static final CMD_REQUEST_CM_WAKELOCK:I = 0x10051

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x1006f

.field static final CMD_RESET_WPS_STATE:I = 0x1007a

.field static final CMD_RSSI_POLL:I = 0x10053

.field static final CMD_SAVE_CONFIG:I = 0x1003b

.field static final CMD_SAVE_NETWORK:I = 0x10057

.field static final CMD_SET_AP_CONFIG:I = 0x10017

.field static final CMD_SET_COUNTRY_CODE:I = 0x10050

.field static final CMD_SET_FREQUENCY_BAND:I = 0x1005a

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x1004d

.field static final CMD_SET_SCAN_MODE:I = 0x10048

.field static final CMD_SET_SCAN_TYPE:I = 0x10049

.field static final CMD_START_AP:I = 0x10015

.field static final CMD_START_DRIVER:I = 0x1000d

.field static final CMD_START_PACKET_FILTERING:I = 0x10054

.field static final CMD_START_SCAN:I = 0x10047

.field static final CMD_START_SUPPLICANT:I = 0x1000b

.field static final CMD_START_WPS:I = 0x10059

.field static final CMD_STATIC_IP_FAILURE:I = 0x10010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x1000f

.field static final CMD_STOP_AP:I = 0x10016

.field static final CMD_STOP_DRIVER:I = 0x1000e

.field static final CMD_STOP_PACKET_FILTERING:I = 0x10055

.field static final CMD_STOP_SUPPLICANT:I = 0x1000c

.field static final CMD_UNLOAD_DRIVER:I = 0x10002

.field static final CMD_UNLOAD_DRIVER_FAILURE:I = 0x10006

.field static final CMD_UNLOAD_DRIVER_SUCCESS:I = 0x10005

.field private static final CONNECT_MODE:I = 0x1

.field private static final DBG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DBG_ASUS:Z = false

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DEFAULT_SCAN_INTERVAL_MS:J = 0xea60L

.field static final DRIVER_START_EVENT:I = 0x10021

.field static final DRIVER_STOP_EVENT:I = 0x10022

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_WIFI_EVENT_HANDLED:I = 0xc366

.field private static final EVENTLOG_WIFI_STATE_CHANGED:I = 0xc365

.field private static final FAILURE:I = -0x1

.field private static final MAX_RSSI:I = 0x100

.field private static final MIN_RSSI:I = -0xc8

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field static final NETWORK_CONNECTION_EVENT:I = 0x10024

.field static final NETWORK_DISCONNECTION_EVENT:I = 0x10025

.field private static final POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field static final POWER_MODE_ACTIVE:I = 0x1

.field static final POWER_MODE_AUTO:I = 0x0

.field private static final PRODUCT_NAME:Ljava/lang/String; = null

.field private static final SCAN_ACTIVE:I = 0x1

.field private static final SCAN_ONLY_MODE:I = 0x2

.field private static final SCAN_PASSIVE:I = 0x2

.field private static final SCAN_REQUEST:I = 0x0

.field static final SCAN_RESULTS_EVENT:I = 0x10026

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

#the value of this static final field might be set in the static constructor
.field private static final SKU_WIFI:Z = false

.field private static final SOFTAP_IFACE:Ljava/lang/String; = "wl0.1"

.field private static final SOFT_AP_RUNNING:I = 0x1

.field private static final SOFT_AP_STOPPED:I = 0x0

.field private static final SUCCESS:I = 0x1

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x10027

.field static final SUP_CONNECTION_EVENT:I = 0x1001f

.field static final SUP_DISCONNECTION_EVENT:I = 0x10020

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field static final WAPI_AUTHENTICATION_FAILURE_EVENT:I = 0x1002b

.field static final WAPI_CERTIFICATE_FAILURE_EVENT:I = 0x1002a

.field static final WPS_COMPLETED_EVENT:I = 0x10079

.field static final WPS_OVERLAP_EVENT:I = 0x10029

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAdHocAlarmEnabled:Z

.field private mAdHocConnectedCheckIntent:Landroid/app/PendingIntent;

.field private mAdHocModeAP:Z

.field private mAdHocSameRSSICount:I

.field private mAdHocScanResultCount:I

.field private mAdHocWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectModeState:Lcom/android/internal/util/HierarchicalState;

.field private mConnectedState:Lcom/android/internal/util/HierarchicalState;

.field private mConnectingState:Lcom/android/internal/util/HierarchicalState;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/HierarchicalState;

.field private mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDisconnectedState:Lcom/android/internal/util/HierarchicalState;

.field private mDisconnectingState:Lcom/android/internal/util/HierarchicalState;

.field private mDriverFailedState:Lcom/android/internal/util/HierarchicalState;

.field private mDriverLoadedState:Lcom/android/internal/util/HierarchicalState;

.field private mDriverLoadingState:Lcom/android/internal/util/HierarchicalState;

.field private mDriverStartedState:Lcom/android/internal/util/HierarchicalState;

.field private mDriverStartingState:Lcom/android/internal/util/HierarchicalState;

.field private mDriverStoppedState:Lcom/android/internal/util/HierarchicalState;

.field private mDriverStoppingState:Lcom/android/internal/util/HierarchicalState;

.field private mDriverUnloadedState:Lcom/android/internal/util/HierarchicalState;

.field private mDriverUnloadingState:Lcom/android/internal/util/HierarchicalState;

.field private mEnableBackgroundScan:Z

.field private mEnableRssiPolling:Z

.field private mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mInitialState:Lcom/android/internal/util/HierarchicalState;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsRunning:Z

.field private mIsScanMode:Z

.field private final mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastBssid:Ljava/lang/String;

.field private final mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastNetworkId:I

.field private mLastRSSI:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSignalLevel:I

.field private mLastfetchBssid:Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPNOWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPowerMode:I

.field private mReconnectCount:I

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mRssiPollToken:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mScanIntent:Landroid/app/PendingIntent;

.field private mScanModeState:Lcom/android/internal/util/HierarchicalState;

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResultIsPending:Z

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftApStartedState:Lcom/android/internal/util/HierarchicalState;

.field private mSupplicantRestartCount:I

.field private mSupplicantStartedState:Lcom/android/internal/util/HierarchicalState;

.field private mSupplicantStartingState:Lcom/android/internal/util/HierarchicalState;

.field private mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

.field private mSupplicantStoppingState:Lcom/android/internal/util/HierarchicalState;

.field private mTriggerAdHocScanCheck:Z

.field private mWaitForWpsCompletionState:Lcom/android/internal/util/HierarchicalState;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;

.field private nwService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_34

    move v0, v2

    :goto_c
    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    .line 114
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 142
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->PRODUCT_NAME:Ljava/lang/String;

    .line 143
    const-string/jumbo v0, "ro.carrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi-only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->SKU_WIFI:Z

    return-void

    :cond_34
    move v0, v1

    .line 103
    goto :goto_c
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14
    .parameter "context"
    .parameter "wlanInterface"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 507
    const-string v4, "WifiStateMachine"

    invoke-direct {p0, v4}, Lcom/android/internal/util/HierarchicalStateMachine;-><init>(Ljava/lang/String;)V

    .line 120
    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 123
    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    .line 124
    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    .line 125
    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    .line 126
    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 127
    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    .line 128
    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    .line 130
    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    .line 134
    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mTriggerAdHocScanCheck:Z

    .line 136
    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocAlarmEnabled:Z

    .line 137
    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    .line 138
    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocSameRSSICount:I

    .line 139
    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocScanResultCount:I

    .line 161
    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    .line 196
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 199
    new-instance v4, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v4}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 395
    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    .line 411
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DefaultState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    .line 413
    new-instance v4, Landroid/net/wifi/WifiStateMachine$InitialState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$InitialState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    .line 415
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/HierarchicalState;

    .line 417
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/HierarchicalState;

    .line 419
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DriverFailedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DriverFailedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/HierarchicalState;

    .line 421
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/HierarchicalState;

    .line 423
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/HierarchicalState;

    .line 425
    new-instance v4, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/HierarchicalState;

    .line 427
    new-instance v4, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/HierarchicalState;

    .line 429
    new-instance v4, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/HierarchicalState;

    .line 431
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DriverStartingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/HierarchicalState;

    .line 433
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DriverStartedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/HierarchicalState;

    .line 435
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/HierarchicalState;

    .line 437
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/HierarchicalState;

    .line 439
    new-instance v4, Landroid/net/wifi/WifiStateMachine$ScanModeState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$ScanModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/HierarchicalState;

    .line 441
    new-instance v4, Landroid/net/wifi/WifiStateMachine$ConnectModeState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/HierarchicalState;

    .line 443
    new-instance v4, Landroid/net/wifi/WifiStateMachine$ConnectingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$ConnectingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/HierarchicalState;

    .line 445
    new-instance v4, Landroid/net/wifi/WifiStateMachine$ConnectedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/HierarchicalState;

    .line 447
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DisconnectingState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/HierarchicalState;

    .line 449
    new-instance v4, Landroid/net/wifi/WifiStateMachine$DisconnectedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/HierarchicalState;

    .line 451
    new-instance v4, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForWpsCompletionState:Lcom/android/internal/util/HierarchicalState;

    .line 454
    new-instance v4, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/HierarchicalState;

    .line 465
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 475
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 477
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 478
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 487
    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    .line 492
    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 497
    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4}, Landroid/os/WorkSource;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 502
    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4}, Landroid/os/WorkSource;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 509
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 510
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 512
    new-instance v4, Landroid/net/NetworkInfo;

    const-string v5, "WIFI"

    const-string v6, ""

    invoke-direct {v4, v9, v8, v5, v6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 513
    const-string v4, "batteryinfo"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 515
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 516
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->nwService:Landroid/os/INetworkManagementService;

    .line 518
    new-instance v4, Landroid/net/wifi/WifiMonitor;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiMonitor;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 519
    new-instance v4, Landroid/net/DhcpInfoInternal;

    invoke-direct {v4}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 520
    new-instance v4, Landroid/net/wifi/WifiInfo;

    invoke-direct {v4}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 521
    new-instance v4, Landroid/net/wifi/SupplicantStateTracker;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, p1, p0, v5}, Landroid/net/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    .line 522
    new-instance v4, Landroid/net/wifi/WpsStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, p1, p0, v5}, Landroid/net/wifi/WpsStateMachine;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;

    .line 523
    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 525
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v8}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 526
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->clear()V

    .line 527
    iput-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 528
    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 529
    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 532
    iput-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mLastfetchBssid:Ljava/lang/String;

    .line 533
    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocModeAP:Z

    .line 534
    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    .line 536
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.server.WifiManager.action.ADHOC_CONNECTED_CHECK"

    invoke-direct {v0, v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 537
    .local v0, AdHocConnectedCheckIntent:Landroid/content/Intent;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocConnectedCheckIntent:Landroid/app/PendingIntent;

    .line 538
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/net/wifi/WifiStateMachine$1;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiStateMachine$1;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.android.server.WifiManager.action.ADHOC_CONNECTED_CHECK"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 553
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 554
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.server.WifiManager.action.START_SCAN"

    invoke-direct {v3, v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 555
    .local v3, scanIntent:Landroid/content/Intent;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    .line 557
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/net/wifi/WifiStateMachine$2;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiStateMachine$2;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 571
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/net/wifi/WifiStateMachine$3;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiStateMachine$3;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.android.server.WifiManager.action.START_SCAN"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 580
    new-instance v4, Landroid/util/LruCache;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Landroid/util/LruCache;-><init>(I)V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    .line 582
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 583
    .local v2, powerManager:Landroid/os/PowerManager;
    const-string v4, "WifiStateMachine"

    invoke-virtual {v2, v9, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 584
    const-string v4, "WiFi_PNO_LOCK"

    invoke-virtual {v2, v9, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mPNOWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 585
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mPNOWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 587
    const-string v4, "WiFi_AdHoc_LOCK"

    invoke-virtual {v2, v9, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 588
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 591
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;)V

    .line 592
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 593
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 594
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 595
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 596
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 597
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 598
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 599
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 600
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 601
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 602
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 603
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 604
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 605
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 606
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 607
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 608
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForWpsCompletionState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 609
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 610
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 611
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 612
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/HierarchicalState;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 614
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiStateMachine;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V

    .line 619
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->start()V

    .line 620
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 98
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$10000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$10100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10702(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    return p1
.end method

.method static synthetic access$10802(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocSameRSSICount:I

    return p1
.end method

.method static synthetic access$10902(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocScanResultCount:I

    return p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$11002(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mTriggerAdHocScanCheck:Z

    return p1
.end method

.method static synthetic access$11100(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchADHOCMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchBSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11300(Landroid/net/wifi/WifiStateMachine;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setAdHocAlarm(Z)V

    return-void
.end method

.method static synthetic access$11400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPNOWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$11500(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$11508(Landroid/net/wifi/WifiStateMachine;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$11600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$11800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$11902(Landroid/net/wifi/WifiStateMachine;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$12200(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V

    return-void
.end method

.method static synthetic access$12300(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    return-void
.end method

.method static synthetic access$12400(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V

    return-void
.end method

.method static synthetic access$12500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$12900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$13000(Landroid/net/wifi/WifiStateMachine;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScannative(Z)V

    return-void
.end method

.method static synthetic access$13100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$13200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$13300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$13400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->nwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$13500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$13600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiStateMachine;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiStateMachine;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->updateTetherState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$3402(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return p1
.end method

.method static synthetic access$3404(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3702(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiStateMachine;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return v0
.end method

.method static synthetic access$3802(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method static synthetic access$3902(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    return p1
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return v0
.end method

.method static synthetic access$4000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastfetchBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4002(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastfetchBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method static synthetic access$4100(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocModeAP:Z

    return v0
.end method

.method static synthetic access$4102(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocModeAP:Z

    return p1
.end method

.method static synthetic access$4202(Landroid/net/wifi/WifiStateMachine;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    return p1
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiStateMachine;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    return v0
.end method

.method static synthetic access$5002(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    return p1
.end method

.method static synthetic access$5100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$5400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setScanResults(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V

    return-void
.end method

.method static synthetic access$5800(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return v0
.end method

.method static synthetic access$5802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return p1
.end method

.method static synthetic access$5900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateMachine;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return v0
.end method

.method static synthetic access$6000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return p1
.end method

.method static synthetic access$6100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6302(Landroid/net/wifi/WifiStateMachine;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$6400(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setCountryCode()V

    return-void
.end method

.method static synthetic access$6500(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V

    return-void
.end method

.method static synthetic access$6600(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$6800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$6900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$7100(Landroid/net/wifi/WifiStateMachine;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabledNative(Z)V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$7300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$7502(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$8100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/net/wifi/WifiStateMachine;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendErrorBroadcast(I)V

    return-void
.end method

.method static synthetic access$8300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$8400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForWpsCompletionState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$8600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$8700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$9000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$9100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$9200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$9202(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$9300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9400(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V

    return-void
.end method

.method static synthetic access$9500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/HierarchicalState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$9600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$9700(Landroid/net/wifi/WifiStateMachine;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V

    return-void
.end method

.method static synthetic access$9800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$9900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/HierarchicalState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method private configureLinkProperties()V
    .registers 4

    .prologue
    .line 1540
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1541
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1548
    :goto_10
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1549
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Link configured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    return-void

    .line 1543
    :cond_42
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v0

    .line 1544
    :try_start_45
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1545
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_5a

    .line 1546
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto :goto_10

    .line 1545
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private enableBackgroundScannative(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 1082
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v0, :cond_7

    .line 1083
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->enableBackgroundScan(Z)V

    .line 1084
    :cond_7
    return-void
.end method

.method private fetchADHOCMode()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1405
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    const-string v3, "mode"

    invoke-static {v2, v3}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1406
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1408
    :try_start_10
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_13} :catch_1a

    move-result v2

    if-ne v2, v5, :cond_18

    move v2, v5

    .line 1416
    :goto_17
    return v2

    :cond_18
    move v2, v4

    .line 1411
    goto :goto_17

    .line 1412
    :catch_1a
    move-exception v0

    .local v0, ignore:Ljava/lang/NumberFormatException;
    move v2, v4

    .line 1413
    goto :goto_17

    .end local v0           #ignore:Ljava/lang/NumberFormatException;
    :cond_1d
    move v2, v4

    .line 1416
    goto :goto_17
.end method

.method private fetchBSSID()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 1420
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;

    move-result-object v7

    .line 1421
    .local v7, status:Ljava/lang/String;
    if-nez v7, :cond_9

    move-object v9, v11

    .line 1433
    :goto_8
    return-object v9

    .line 1425
    :cond_9
    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1426
    .local v4, lines:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_12
    if-ge v1, v2, :cond_33

    aget-object v3, v0, v1

    .line 1427
    .local v3, line:Ljava/lang/String;
    const-string v9, " *= *"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1428
    .local v6, prop:[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x2

    if-ge v9, v10, :cond_23

    .line 1426
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1429
    :cond_23
    const/4 v9, 0x0

    aget-object v5, v6, v9

    .line 1430
    .local v5, name:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v8, v6, v9

    .line 1431
    .local v8, value:Ljava/lang/String;
    const-string v9, "bssid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    move-object v9, v8

    goto :goto_8

    .end local v3           #line:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #prop:[Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_33
    move-object v9, v11

    .line 1433
    goto :goto_8
.end method

.method private fetchRssiAndLinkSpeedNative()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/16 v4, -0xc8

    const/4 v6, 0x0

    .line 1460
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRssiCommand()I

    move-result v1

    .line 1461
    .local v1, newRssi:I
    if-eq v1, v7, :cond_ab

    if-ge v4, v1, :cond_ab

    const/16 v3, 0x100

    if-ge v1, v3, :cond_ab

    .line 1465
    if-lez v1, :cond_14

    add-int/lit16 v1, v1, -0x100

    .line 1466
    :cond_14
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 1480
    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 1481
    .local v2, newSignalLevel:I
    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-eq v2, v3, :cond_25

    .line 1482
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    .line 1484
    :cond_25
    iput v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 1487
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocModeAP:Z

    if-eqz v3, :cond_73

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mTriggerAdHocScanCheck:Z

    if-nez v3, :cond_73

    .line 1488
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    if-eqz v3, :cond_4f

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    if-ne v3, v1, :cond_4f

    .line 1489
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Same RSSI newRssi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_4f
    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    if-ne v3, v1, :cond_7f

    .line 1491
    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocSameRSSICount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocSameRSSICount:I

    .line 1500
    :cond_59
    :goto_59
    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocSameRSSICount:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_9a

    .line 1501
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    if-eqz v3, :cond_69

    .line 1502
    const-string v3, "WifiStateMachine"

    const-string v4, "==ADHOC mode disconnect tracker trigger rescan=="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_69
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mTriggerAdHocScanCheck:Z

    .line 1504
    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocSameRSSICount:I

    .line 1505
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    .line 1511
    :cond_71
    :goto_71
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    .line 1518
    .end local v2           #newSignalLevel:I
    :cond_73
    :goto_73
    invoke-static {}, Landroid/net/wifi/WifiNative;->getLinkSpeedCommand()I

    move-result v0

    .line 1519
    .local v0, newLinkSpeed:I
    if-eq v0, v7, :cond_7e

    .line 1520
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 1522
    :cond_7e
    return-void

    .line 1493
    .end local v0           #newLinkSpeed:I
    .restart local v2       #newSignalLevel:I
    :cond_7f
    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocSameRSSICount:I

    .line 1494
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1495
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    if-eqz v3, :cond_94

    .line 1496
    const-string v3, "WifiStateMachine"

    const-string v4, "==Release mAdHocWakeLock 3=="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_94
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_59

    .line 1506
    :cond_9a
    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    if-ne v3, v1, :cond_71

    .line 1507
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    if-nez v3, :cond_71

    .line 1508
    const v3, 0x1005c

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_71

    .line 1516
    .end local v2           #newSignalLevel:I
    :cond_ab
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    goto :goto_73
.end method

.method private fetchSSID()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 1387
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;

    move-result-object v7

    .line 1388
    .local v7, status:Ljava/lang/String;
    if-nez v7, :cond_9

    move-object v9, v11

    .line 1400
    :goto_8
    return-object v9

    .line 1392
    :cond_9
    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1393
    .local v4, lines:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_12
    if-ge v1, v2, :cond_34

    aget-object v3, v0, v1

    .line 1394
    .local v3, line:Ljava/lang/String;
    const-string v9, " *= *"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1395
    .local v6, prop:[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x2

    if-ge v9, v10, :cond_23

    .line 1393
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1396
    :cond_23
    const/4 v9, 0x0

    aget-object v5, v6, v9

    .line 1397
    .local v5, name:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v8, v6, v9

    .line 1398
    .local v8, value:Ljava/lang/String;
    const-string/jumbo v9, "ssid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    move-object v9, v8

    goto :goto_8

    .end local v3           #line:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #prop:[Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_34
    move-object v9, v11

    .line 1400
    goto :goto_8
.end method

.method private getMaxDhcpRetries()I
    .registers 4

    .prologue
    .line 1553
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .registers 2

    .prologue
    .line 1616
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private handleFailedIpConfiguration()V
    .registers 4

    .prologue
    .line 1741
    const-string v0, "WifiStateMachine"

    const-string v1, "IP configuration failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 1748
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getMaxDhcpRetries()I

    move-result v1

    if-le v0, v1, :cond_47

    .line 1749
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times, Disabling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(I)Z

    .line 1752
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 1758
    :cond_47
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 1759
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 1760
    return-void
.end method

.method private handleNetworkDisconnect()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1624
    const-string v0, "WifiStateMachine"

    const-string v1, "Reset connections and stopping DHCP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    .line 1631
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v0, :cond_22

    .line 1632
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x20002

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 1633
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->quit()V

    .line 1634
    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 1638
    :cond_22
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 1641
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 1642
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 1643
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 1644
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 1645
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v1, -0xc8

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 1646
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 1649
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1650
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 1653
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 1655
    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 1656
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 1659
    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastfetchBssid:Ljava/lang/String;

    .line 1660
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocModeAP:Z

    .line 1661
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateMachine;->mTriggerAdHocScanCheck:Z

    .line 1664
    return-void
.end method

.method private handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    .registers 7
    .parameter "dhcpInfoInternal"

    .prologue
    const/4 v3, -0x1

    .line 1711
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v2

    .line 1712
    :try_start_4
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 1713
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_78

    .line 1714
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 1716
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    .line 1718
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v2, p1}, Landroid/net/wifi/WifiConfigStore;->setIpConfiguration(ILandroid/net/DhcpInfoInternal;)V

    .line 1719
    iget-object v2, p1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1720
    .local v0, addr:Ljava/net/InetAddress;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 1721
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_7b

    .line 1723
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1724
    .local v1, linkProperties:Landroid/net/LinkProperties;
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v2}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1725
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1726
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 1727
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Link configuration changed for netId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    .line 1730
    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1731
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    .line 1738
    .end local v1           #linkProperties:Landroid/net/LinkProperties;
    :cond_77
    :goto_77
    return-void

    .line 1713
    .end local v0           #addr:Ljava/net/InetAddress;
    :catchall_78
    move-exception v3

    :try_start_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v3

    .line 1734
    .restart local v0       #addr:Ljava/net/InetAddress;
    :cond_7b
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V

    .line 1735
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1736
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    goto :goto_77
.end method

.method private parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .registers 16
    .parameter "line"

    .prologue
    .line 1222
    const/4 v0, 0x0

    .line 1223
    .local v0, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_63

    .line 1228
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v10

    .line 1229
    :try_start_6
    sget-object v11, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    .line 1230
    .local v8, result:[Ljava/lang/String;
    const/4 v11, 0x3

    array-length v12, v8

    if-gt v11, v12, :cond_97

    array-length v11, v8

    const/4 v12, 0x5

    if-gt v11, v12, :cond_97

    .line 1231
    const/4 v11, 0x0

    aget-object v2, v8, v11
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_94

    .line 1236
    .local v2, bssid:Ljava/lang/String;
    const/4 v11, 0x1

    :try_start_18
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1237
    .local v5, frequency:I
    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_94
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_24} :catch_64

    move-result v4

    .line 1241
    .local v4, level:I
    if-lez v4, :cond_29

    add-int/lit16 v4, v4, -0x100

    .line 1257
    :cond_29
    :goto_29
    :try_start_29
    array-length v11, v8

    const/4 v12, 0x4

    if-ne v11, v12, :cond_6f

    .line 1258
    const/4 v11, 0x3

    aget-object v11, v8, v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5b

    if-ne v11, v12, :cond_69

    .line 1259
    const/4 v11, 0x3

    aget-object v3, v8, v11

    .line 1260
    .local v3, flags:Ljava/lang/String;
    const-string v1, ""

    .line 1276
    .local v1, ssid:Ljava/lang/String;
    :goto_3e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1277
    .local v7, key:Ljava/lang/String;
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v11, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;
    :try_end_57
    .catchall {:try_start_29 .. :try_end_57} :catchall_94

    .line 1278
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .local v9, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v9, :cond_7f

    .line 1279
    :try_start_59
    iput v4, v9, Landroid/net/wifi/ScanResult;->level:I

    .line 1280
    iput-object v1, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1281
    iput-object v3, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1282
    iput v5, v9, Landroid/net/wifi/ScanResult;->frequency:I
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_bb

    move-object v0, v9

    .line 1296
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :goto_62
    :try_start_62
    monitor-exit v10

    .line 1299
    .end local v8           #result:[Ljava/lang/String;
    :cond_63
    return-object v0

    .line 1242
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v8       #result:[Ljava/lang/String;
    :catch_64
    move-exception v11

    move-object v6, v11

    .line 1243
    .local v6, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    .line 1244
    .restart local v5       #frequency:I
    const/4 v4, 0x0

    .restart local v4       #level:I
    goto :goto_29

    .line 1262
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_69
    const-string v3, ""

    .line 1263
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v1, v8, v11

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_3e

    .line 1265
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_6f
    array-length v11, v8

    const/4 v12, 0x5

    if-ne v11, v12, :cond_7a

    .line 1266
    const/4 v11, 0x3

    aget-object v3, v8, v11

    .line 1267
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v11, 0x4

    aget-object v1, v8, v11

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_3e

    .line 1271
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_7a
    const-string v3, ""

    .line 1272
    .restart local v3       #flags:Ljava/lang/String;
    const-string v1, ""
    :try_end_7e
    .catchall {:try_start_62 .. :try_end_7e} :catchall_94

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_3e

    .line 1285
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_7f
    :try_start_7f
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_be

    .line 1286
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_bb

    .line 1289
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :try_start_8e
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v11, v7, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 1296
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #result:[Ljava/lang/String;
    :catchall_94
    move-exception v11

    :goto_95
    monitor-exit v10
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_94

    throw v11

    .line 1293
    .restart local v8       #result:[Ljava/lang/String;
    :cond_97
    :try_start_97
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Misformatted scan result text with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " fields: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_97 .. :try_end_ba} :catchall_94

    goto :goto_62

    .line 1296
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v1       #ssid:Ljava/lang/String;
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v3       #flags:Ljava/lang/String;
    .restart local v4       #level:I
    .restart local v5       #frequency:I
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :catchall_bb
    move-exception v11

    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_95

    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_be
    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_62
.end method

.method private sendErrorBroadcast(I)V
    .registers 4
    .parameter "errorCode"

    .prologue
    .line 1583
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1584
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1585
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1586
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1587
    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .registers 4

    .prologue
    .line 1590
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1591
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1592
    const-string v1, "linkProperties"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1593
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1594
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .registers 5
    .parameter "bssid"

    .prologue
    .line 1572
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1573
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1575
    const-string v1, "networkInfo"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1576
    const-string v1, "linkProperties"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1577
    if-eqz p1, :cond_21

    .line 1578
    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1579
    :cond_21
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1580
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .registers 4
    .parameter "newRssi"

    .prologue
    .line 1565
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1566
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1567
    const-string v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1568
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1569
    return-void
.end method

.method private sendScanResultsAvailableBroadcast()V
    .registers 3

    .prologue
    .line 1559
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1560
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1561
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1562
    return-void
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .registers 4
    .parameter "connected"

    .prologue
    .line 1597
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1598
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1599
    const-string v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1600
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1601
    return-void
.end method

.method private setAdHocAlarm(Z)V
    .registers 9
    .parameter "enabled"

    .prologue
    const-wide/32 v4, 0x2bf20

    const/4 v1, 0x0

    .line 1437
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocAlarmEnabled:Z

    if-ne p1, v0, :cond_9

    .line 1453
    :goto_8
    return-void

    .line 1438
    :cond_9
    if-eqz p1, :cond_26

    .line 1439
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    if-eqz v0, :cond_16

    .line 1440
    const-string v0, "WifiStateMachine"

    const-string v2, "=setAdHocAlarm true="

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_16
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocConnectedCheckIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1446
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocAlarmEnabled:Z

    goto :goto_8

    .line 1448
    :cond_26
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    if-eqz v0, :cond_31

    .line 1449
    const-string v0, "WifiStateMachine"

    const-string v2, "=setAdHocAlarm false="

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_31
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocConnectedCheckIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1451
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocAlarmEnabled:Z

    goto :goto_8
.end method

.method private setCountryCode()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1140
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, countryCode:Ljava/lang/String;
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    .line 1143
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->SKU_WIFI:Z

    if-eqz v1, :cond_5f

    sget-object v1, Landroid/net/wifi/WifiStateMachine;->PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ww_epad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "us"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1144
    const-string/jumbo v1, "ro.wifi.country"

    const-string v2, "US"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    if-eqz v1, :cond_5b

    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset WW Wi-Fi Country to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_5b
    invoke-virtual {p0, v0, v4}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 1156
    :goto_5e
    return-void

    .line 1148
    :cond_5f
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_5e

    .line 1152
    :cond_64
    const-string/jumbo v1, "ro.wifi.country"

    const-string v2, "US"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    if-eqz v1, :cond_89

    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wi-Fi Country : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_89
    invoke-virtual {p0, v0, v4}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_5e
.end method

.method private setFrequencyBand()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1162
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_frequency_band"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1164
    .local v0, band:I
    invoke-virtual {p0, v0, v3}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    .line 1165
    return-void
.end method

.method private setHighPerfModeEnabledNative(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1525
    if-nez p1, :cond_24

    move v0, v3

    :goto_5
    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setSuspendOptimizationsCommand(Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1526
    const-string v0, "WifiStateMachine"

    const-string/jumbo v1, "set suspend optimizations failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_13
    if-eqz p1, :cond_26

    .line 1529
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1530
    const-string v0, "WifiStateMachine"

    const-string/jumbo v1, "set power mode active failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_23
    :goto_23
    return-void

    :cond_24
    move v0, v2

    .line 1525
    goto :goto_5

    .line 1533
    :cond_26
    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1534
    const-string v0, "WifiStateMachine"

    const-string/jumbo v1, "set power mode auto failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 6
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 1608
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDetailed state, old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq p1, v0, :cond_37

    .line 1611
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    :cond_37
    return-void
.end method

.method private setScanResults(Ljava/lang/String;)V
    .registers 15
    .parameter "scanResults"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1308
    if-nez p1, :cond_5

    .line 1384
    :cond_4
    :goto_4
    return-void

    .line 1312
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    .local v5, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v3, 0x0

    .line 1316
    .local v3, lineCount:I
    const/4 v0, 0x0

    .line 1319
    .local v0, AdHocAPFound:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1322
    .local v7, scanResultsLen:I
    const/4 v2, 0x0

    .local v2, lineBeg:I
    const/4 v4, 0x0

    .local v4, lineEnd:I
    :goto_12
    if-gt v4, v7, :cond_a2

    .line 1323
    if-eq v4, v7, :cond_1e

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_24

    .line 1324
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    .line 1326
    if-ne v3, v12, :cond_27

    .line 1327
    add-int/lit8 v2, v4, 0x1

    .line 1322
    :cond_24
    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1330
    :cond_27
    if-le v4, v2, :cond_9f

    .line 1331
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1332
    .local v1, line:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v6

    .line 1333
    .local v6, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v6, :cond_9f

    .line 1334
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1336
    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mTriggerAdHocScanCheck:Z

    if-eqz v8, :cond_84

    sget-boolean v8, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    if-eqz v8, :cond_84

    .line 1337
    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " scanResult.SSID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " scanResult.BSSID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " scanResult.level "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mLastfetchBssid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mLastfetchBssid:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_84
    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mTriggerAdHocScanCheck:Z

    if-eqz v8, :cond_9f

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocModeAP:Z

    if-eqz v8, :cond_9f

    iget-object v8, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mLastfetchBssid:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 1341
    const/4 v0, 0x1

    .line 1347
    .end local v1           #line:Ljava/lang/String;
    .end local v6           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_9f
    add-int/lit8 v2, v4, 0x1

    goto :goto_24

    .line 1351
    :cond_a2
    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 1353
    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mTriggerAdHocScanCheck:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocModeAP:Z

    if-eqz v8, :cond_4

    .line 1354
    iget v8, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocScanResultCount:I

    const/4 v9, 0x3

    if-lt v8, v9, :cond_e1

    .line 1355
    sget-boolean v8, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    if-eqz v8, :cond_bc

    .line 1356
    const-string v8, "WifiStateMachine"

    const-string v9, "==DISCONNECT ADHOC=="

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_bc
    iput v11, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocScanResultCount:I

    .line 1358
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 1359
    invoke-virtual {p0, v11}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    .line 1360
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 1361
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1362
    sget-boolean v8, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    if-eqz v8, :cond_da

    .line 1363
    const-string v8, "WifiStateMachine"

    const-string v9, "==Release mAdHocWakeLock 1=="

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_da
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_4

    .line 1366
    :cond_e1
    if-nez v0, :cond_10e

    .line 1367
    sget-boolean v8, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    if-eqz v8, :cond_103

    .line 1368
    const-string v8, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AdHocAPFound = false scanResultsLen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_103
    iget v8, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocScanResultCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocScanResultCount:I

    .line 1370
    invoke-virtual {p0, v11}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    goto/16 :goto_4

    .line 1371
    :cond_10e
    if-ne v12, v0, :cond_4

    .line 1372
    sget-boolean v8, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    if-eqz v8, :cond_11b

    .line 1373
    const-string v8, "WifiStateMachine"

    const-string v9, "AdHocAPFound = true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_11b
    iput v11, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocScanResultCount:I

    .line 1375
    iput-boolean v11, p0, Landroid/net/wifi/WifiStateMachine;->mTriggerAdHocScanCheck:Z

    .line 1376
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1377
    sget-boolean v8, Landroid/net/wifi/WifiStateMachine;->DBG_ASUS:Z

    if-eqz v8, :cond_132

    .line 1378
    const-string v8, "WifiStateMachine"

    const-string v9, "==Release mAdHocWakeLock 2=="

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_132
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mAdHocWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_4
.end method

.method private setWifiApState(I)V
    .registers 7
    .parameter "wifiApState"

    .prologue
    .line 1192
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 1195
    .local v2, previousWifiApState:I
    const/16 v3, 0xd

    if-ne p1, v3, :cond_32

    .line 1196
    :try_start_a
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_3c

    .line 1205
    :cond_f
    :goto_f
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1209
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1211
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1212
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1213
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1214
    return-void

    .line 1197
    .end local v1           #intent:Landroid/content/Intent;
    :cond_32
    const/16 v3, 0xb

    if-ne p1, v3, :cond_f

    .line 1198
    :try_start_36
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c

    goto :goto_f

    .line 1200
    :catch_3c
    move-exception v3

    move-object v0, v3

    .line 1201
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiStateMachine"

    const-string v4, "Failed to note battery stats in wifi"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private setWifiState(I)V
    .registers 7
    .parameter "wifiState"

    .prologue
    .line 1168
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 1171
    .local v2, previousWifiState:I
    const/4 v3, 0x3

    if-ne p1, v3, :cond_31

    .line 1172
    :try_start_9
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_3a

    .line 1180
    :cond_e
    :goto_e
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1184
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1185
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1186
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1187
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1188
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1189
    return-void

    .line 1173
    .end local v1           #intent:Landroid/content/Intent;
    :cond_31
    const/4 v3, 0x1

    if-ne p1, v3, :cond_e

    .line 1174
    :try_start_34
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_3a

    goto :goto_e

    .line 1176
    :catch_3a
    move-exception v3

    move-object v0, v3

    .line 1177
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiStateMachine"

    const-string v4, "Failed to note battery stats in wifi"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;I)Z
    .registers 9
    .parameter "config"
    .parameter "currentStatus"

    .prologue
    const/4 v5, 0x1

    .line 1763
    if-nez p1, :cond_15

    .line 1764
    invoke-static {}, Landroid/net/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 1769
    :goto_7
    if-nez p2, :cond_19

    .line 1770
    :try_start_9
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->nwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v4, "wl0.1"

    invoke-interface {v2, p1, v3, v4}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_26

    :cond_13
    :goto_13
    move v2, v5

    .line 1784
    :goto_14
    return v2

    .line 1766
    :cond_15
    invoke-static {p1}, Landroid/net/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_7

    .line 1771
    :cond_19
    if-ne p2, v5, :cond_13

    .line 1772
    :try_start_1b
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->nwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v4, "wl0.1"

    invoke-interface {v2, p1, v3, v4}, Landroid/os/INetworkManagementService;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_26

    goto :goto_13

    .line 1774
    :catch_26
    move-exception v2

    move-object v0, v2

    .line 1775
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in softap start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :try_start_40
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopAccessPoint()V

    .line 1778
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->nwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v4, "wl0.1"

    invoke-interface {v2, p1, v3, v4}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4f} :catch_50

    goto :goto_13

    .line 1779
    :catch_50
    move-exception v2

    move-object v1, v2

    .line 1780
    .local v1, ee:Ljava/lang/Exception;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during softap restart : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const/4 v2, 0x0

    goto :goto_14
.end method

.method private updateTetherState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 22
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1092
    .local p1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 1093
    .local v15, wifiTethered:Z
    const/4 v13, 0x0

    .line 1095
    .local v13, wifiAvailable:Z
    const-string v16, "network_management"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1096
    .local v4, b:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v12

    .line 1098
    .local v12, service:Landroid/os/INetworkManagementService;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    if-nez v16, :cond_28

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "connectivity"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast p2, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    .line 1102
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v14

    .line 1104
    .local v14, wifiRegexs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1105
    .local v9, intf:Ljava/lang/String;
    move-object v3, v14

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_45
    if-ge v7, v10, :cond_36

    aget-object v11, v3, v7

    .line 1106
    .local v11, regex:Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_e3

    .line 1108
    const/4 v8, 0x0

    .line 1110
    .local v8, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_50
    invoke-interface {v12, v9}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v8

    .line 1111
    if-eqz v8, :cond_72

    .line 1113
    new-instance v16, Landroid/net/LinkAddress;

    const-string v17, "192.168.43.1"

    invoke-static/range {v17 .. v17}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    const/16 v18, 0x18

    invoke-direct/range {v16 .. v18}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v16

    move-object v1, v8

    iput-object v0, v1, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 1115
    const-string v16, "[up]"

    move-object/from16 v0, v16

    move-object v1, v8

    iput-object v0, v1, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 1117
    invoke-interface {v12, v9, v8}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_72} :catch_aa

    .line 1125
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_36

    .line 1126
    const-string v16, "WifiStateMachine"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error tethering on "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1134
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v9           #intf:Ljava/lang/String;
    .end local v10           #len$:I
    .end local v11           #regex:Ljava/lang/String;
    :cond_a9
    :goto_a9
    return-void

    .line 1119
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v8       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v9       #intf:Ljava/lang/String;
    .restart local v10       #len$:I
    .restart local v11       #regex:Ljava/lang/String;
    :catch_aa
    move-exception v16

    move-object/from16 v5, v16

    .line 1120
    .local v5, e:Ljava/lang/Exception;
    const-string v16, "WifiStateMachine"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error configuring interface "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_a9

    .line 1105
    .end local v5           #e:Ljava/lang/Exception;
    .end local v8           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_e3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_45
.end method


# virtual methods
.method public addToBlacklist(Ljava/lang/String;)V
    .registers 3
    .parameter "bssid"

    .prologue
    .line 880
    const v0, 0x10039

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 881
    return-void
.end method

.method public clearBlacklist()V
    .registers 2

    .prologue
    .line 888
    const v0, 0x1003a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 889
    return-void
.end method

.method public connectNetwork(I)V
    .registers 4
    .parameter "netId"

    .prologue
    .line 892
    const v0, 0x10056

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 893
    return-void
.end method

.method public connectNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 5
    .parameter "wifiConfig"

    .prologue
    .line 900
    const v0, 0x10056

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 901
    return-void
.end method

.method public disconnectCommand()V
    .registers 2

    .prologue
    .line 800
    const v0, 0x1004a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 801
    return-void
.end method

.method public enableAllNetworks()V
    .registers 2

    .prologue
    .line 926
    const v0, 0x10037

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 927
    return-void
.end method

.method public enableBackgroundScan(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 922
    const v0, 0x1005b

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_7
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 923
    return-void

    :cond_f
    move v1, v2

    .line 922
    goto :goto_7
.end method

.method public enableRssiPolling(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 918
    const v0, 0x10052

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_7
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 919
    return-void

    :cond_f
    move v1, v2

    .line 918
    goto :goto_7
.end method

.method public forgetNetwork(I)V
    .registers 4
    .parameter "netId"

    .prologue
    .line 908
    const v0, 0x10058

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 909
    return-void
.end method

.method public getConfigFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 992
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrequencyBand()I
    .registers 2

    .prologue
    .line 985
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method handlePostDhcpSetup()V
    .registers 2

    .prologue
    .line 1703
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    .line 1706
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceModeCommand(I)Z

    .line 1708
    return-void
.end method

.method handlePreDhcpSetup()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1667
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    if-nez v0, :cond_8

    .line 1685
    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceModeCommand(I)Z

    .line 1689
    :cond_8
    invoke-static {}, Landroid/net/wifi/WifiNative;->getPowerModeCommand()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    .line 1690
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    if-gez v0, :cond_15

    .line 1693
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    .line 1695
    :cond_15
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    if-eq v0, v1, :cond_1c

    .line 1696
    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    .line 1698
    :cond_1c
    return-void
.end method

.method notifyAuthenticationFailure()V
    .registers 2

    .prologue
    .line 1812
    const v0, 0x10028

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1813
    return-void
.end method

.method notifyCertificateFailure()V
    .registers 2

    .prologue
    .line 1887
    const v0, 0x1002a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1888
    return-void
.end method

.method notifyDriverHung()V
    .registers 2

    .prologue
    .line 1908
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 1909
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 1910
    return-void
.end method

.method notifyDriverStarted()V
    .registers 2

    .prologue
    .line 1900
    const v0, 0x10021

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1901
    return-void
.end method

.method notifyDriverStopped()V
    .registers 2

    .prologue
    .line 1904
    const v0, 0x10022

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1905
    return-void
.end method

.method notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .registers 6
    .parameter "newState"
    .parameter "BSSID"
    .parameter "networkId"

    .prologue
    const/4 v1, 0x0

    .line 1850
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_10

    .line 1851
    const v0, 0x10024

    invoke-virtual {p0, v0, p3, v1, p2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1855
    :goto_f
    return-void

    .line 1853
    :cond_10
    const v0, 0x10025

    invoke-virtual {p0, v0, p3, v1, p2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_f
.end method

.method notifyScanResultsAvailable()V
    .registers 2

    .prologue
    .line 1877
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setScanType(Z)V

    .line 1878
    const v0, 0x10026

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1879
    return-void
.end method

.method notifySupplicantConnection()V
    .registers 2

    .prologue
    .line 1828
    const v0, 0x1001f

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1829
    return-void
.end method

.method notifySupplicantLost()V
    .registers 2

    .prologue
    .line 1836
    const v0, 0x10020

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1837
    return-void
.end method

.method notifySupplicantStateChange(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .registers 6
    .parameter "networkId"
    .parameter "BSSID"
    .parameter "newState"

    .prologue
    .line 1864
    const v0, 0x10027

    new-instance v1, Landroid/net/wifi/WifiStateMachine$StateChangeResult;

    invoke-direct {v1, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine$StateChangeResult;-><init>(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1866
    return-void
.end method

.method notifyWAPIAuthenticationFailure()V
    .registers 2

    .prologue
    .line 1895
    const v0, 0x1002b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1896
    return-void
.end method

.method notifyWpsOverlap()V
    .registers 2

    .prologue
    .line 1820
    const v0, 0x10029

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1821
    return-void
.end method

.method public reassociateCommand()V
    .registers 2

    .prologue
    .line 814
    const v0, 0x1004c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 815
    return-void
.end method

.method public reconnectCommand()V
    .registers 2

    .prologue
    .line 807
    const v0, 0x1004b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 808
    return-void
.end method

.method public requestCmWakeLock()V
    .registers 2

    .prologue
    .line 1022
    const v0, 0x10051

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1023
    return-void
.end method

.method public saveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3
    .parameter "wifiConfig"

    .prologue
    .line 904
    const v0, 0x10057

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 905
    return-void
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 999
    const v0, 0x10019

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1000
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .registers 5
    .parameter "countryCode"
    .parameter "persist"

    .prologue
    .line 959
    if-eqz p2, :cond_e

    .line 960
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_country_code"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 964
    :cond_e
    const v0, 0x10050

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 965
    return-void
.end method

.method public setDriverStart(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 760
    if-eqz p1, :cond_9

    .line 761
    const v0, 0x1000d

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 765
    :goto_8
    return-void

    .line 763
    :cond_9
    const v0, 0x1000e

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_8
.end method

.method public setFrequencyBand(IZ)V
    .registers 5
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 973
    if-eqz p2, :cond_e

    .line 974
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_frequency_band"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 978
    :cond_e
    const v0, 0x1005a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 979
    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 950
    const v0, 0x1004d

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_7
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 951
    return-void

    :cond_f
    move v1, v2

    .line 950
    goto :goto_7
.end method

.method public setScanOnlyMode(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    const v2, 0x10048

    const/4 v1, 0x0

    .line 771
    if-eqz p1, :cond_f

    .line 772
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 776
    :goto_e
    return-void

    .line 774
    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_e
.end method

.method public setScanType(Z)V
    .registers 5
    .parameter "active"

    .prologue
    const v2, 0x10049

    const/4 v1, 0x0

    .line 782
    if-eqz p1, :cond_f

    .line 783
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 787
    :goto_e
    return-void

    .line 785
    :cond_f
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_e
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3
    .parameter "config"

    .prologue
    .line 677
    const v0, 0x10017

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 678
    return-void
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 6
    .parameter "wifiConfig"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 664
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 665
    if-eqz p2, :cond_23

    .line 667
    const v0, 0x10001

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 668
    const v0, 0x10015

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 674
    :goto_22
    return-void

    .line 670
    :cond_23
    const v0, 0x10016

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 672
    const v0, 0x10002

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_22
.end method

.method public setWifiEnabled(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 648
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 649
    if-eqz p1, :cond_1e

    .line 651
    const v0, 0x10001

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 652
    const v0, 0x1000b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 658
    :goto_1d
    return-void

    .line 654
    :cond_1e
    const v0, 0x1000c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 656
    const v0, 0x10002

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_1d
.end method

.method public startPacketFiltering()V
    .registers 2

    .prologue
    .line 933
    const v0, 0x10054

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 934
    return-void
.end method

.method public startScan(Z)V
    .registers 5
    .parameter "forceActive"

    .prologue
    .line 640
    const v0, 0x10047

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_6
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 642
    return-void

    .line 640
    :cond_f
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public startWps(Landroid/os/Messenger;Landroid/net/wifi/WpsConfiguration;)V
    .registers 5
    .parameter "replyTo"
    .parameter "config"

    .prologue
    .line 912
    const v1, 0x10059

    invoke-virtual {p0, v1, p2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 913
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 914
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 915
    return-void
.end method

.method public stopPacketFiltering()V
    .registers 2

    .prologue
    .line 940
    const v0, 0x10055

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 941
    return-void
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .registers 6
    .parameter "channel"
    .parameter "config"

    .prologue
    .line 823
    const v2, 0x10034

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 824
    .local v1, resultMsg:Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 825
    .local v0, result:I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 826
    return v0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .registers 7
    .parameter "channel"
    .parameter "netId"

    .prologue
    .line 867
    const v2, 0x10038

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 868
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    const/4 v2, 0x1

    move v0, v2

    .line 869
    .local v0, result:Z
    :goto_e
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 870
    return v0

    .line 868
    .end local v0           #result:Z
    :cond_12
    const/4 v2, 0x0

    move v0, v2

    goto :goto_e
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .registers 10
    .parameter "channel"
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 853
    const v2, 0x10036

    if-eqz p3, :cond_16

    move v3, v5

    :goto_8
    invoke-virtual {p1, v2, p2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 855
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    move v0, v5

    .line 856
    .local v0, result:Z
    :goto_12
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 857
    return v0

    .end local v0           #result:Z
    .end local v1           #resultMsg:Landroid/os/Message;
    :cond_16
    move v3, v4

    .line 853
    goto :goto_8

    .restart local v1       #resultMsg:Landroid/os/Message;
    :cond_18
    move v0, v4

    .line 855
    goto :goto_12
.end method

.method public syncGetConfiguredNetworks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 830
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public syncGetDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 751
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v0

    .line 752
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v1}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 753
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public syncGetScanResultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object v0
.end method

.method public syncGetWifiApConfiguration(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConfiguration;
    .registers 5
    .parameter "channel"

    .prologue
    .line 681
    const v2, 0x10018

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 682
    .local v0, resultMsg:Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 683
    .local v1, ret:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 684
    return-object v1
.end method

.method public syncGetWifiApState()I
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 725
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 737
    const-string v0, "[invalid state]"

    :goto_b
    return-object v0

    .line 727
    :pswitch_c
    const-string v0, "disabling"

    goto :goto_b

    .line 729
    :pswitch_f
    const-string v0, "disabled"

    goto :goto_b

    .line 731
    :pswitch_12
    const-string v0, "enabling"

    goto :goto_b

    .line 733
    :pswitch_15
    const-string v0, "enabled"

    goto :goto_b

    .line 735
    :pswitch_18
    const-string v0, "failed"

    goto :goto_b

    .line 725
    nop

    :pswitch_data_1c
    .packed-switch 0xa
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method public syncGetWifiState()I
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 698
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 710
    const-string v0, "[invalid state]"

    :goto_b
    return-object v0

    .line 700
    :pswitch_c
    const-string v0, "disabling"

    goto :goto_b

    .line 702
    :pswitch_f
    const-string v0, "disabled"

    goto :goto_b

    .line 704
    :pswitch_12
    const-string v0, "enabling"

    goto :goto_b

    .line 706
    :pswitch_15
    const-string v0, "enabled"

    goto :goto_b

    .line 708
    :pswitch_18
    const-string/jumbo v0, "unknown state"

    goto :goto_b

    .line 698
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method public syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z
    .registers 6
    .parameter "channel"

    .prologue
    .line 630
    const v2, 0x10033

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 631
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    const/4 v2, 0x1

    move v0, v2

    .line 632
    .local v0, result:Z
    :goto_e
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 633
    return v0

    .line 631
    .end local v0           #result:Z
    :cond_12
    const/4 v2, 0x0

    move v0, v2

    goto :goto_e
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .registers 7
    .parameter "channel"
    .parameter "networkId"

    .prologue
    .line 839
    const v2, 0x10035

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 840
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    const/4 v2, 0x1

    move v0, v2

    .line 841
    .local v0, result:Z
    :goto_e
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 842
    return v0

    .line 840
    .end local v0           #result:Z
    :cond_12
    const/4 v2, 0x0

    move v0, v2

    goto :goto_e
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    .prologue
    .line 747
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z
    .registers 6
    .parameter "channel"

    .prologue
    .line 1010
    const v2, 0x1003b

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1011
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    const/4 v2, 0x1

    move v0, v2

    .line 1012
    .local v0, result:Z
    :goto_e
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1013
    return v0

    .line 1011
    .end local v0           #result:Z
    :cond_12
    const/4 v2, 0x0

    move v0, v2

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1062
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1063
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, LS:Ljava/lang/String;
    const-string v2, "current HSM state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1065
    const-string v2, "mLinkProperties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1066
    const-string v2, "mWifiInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1067
    const-string v2, "mDhcpInfoInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1068
    const-string v2, "mNetworkInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1069
    const-string v2, "mLastSignalLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1070
    const-string v2, "mLastBssid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1071
    const-string v2, "mLastNetworkId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1072
    const-string v2, "mReconnectCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1073
    const-string v2, "mIsScanMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1074
    const-string v2, "Supplicant status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1077
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .registers 6
    .parameter "newSource"

    .prologue
    .line 1026
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v0

    .line 1028
    if-eqz p1, :cond_a

    .line 1029
    :try_start_5
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 1031
    :cond_a
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v1, :cond_47

    .line 1032
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v1, :cond_33

    .line 1035
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1036
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 1038
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 1054
    :cond_2c
    :goto_2c
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_5b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_31} :catch_45

    .line 1057
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_5b

    .line 1058
    return-void

    .line 1042
    :cond_33
    :try_start_33
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 1043
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 1044
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_2c

    .line 1055
    :catch_45
    move-exception v1

    goto :goto_31

    .line 1047
    :cond_47
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v1, :cond_2c

    .line 1049
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 1050
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 1051
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z
    :try_end_5a
    .catchall {:try_start_33 .. :try_end_5a} :catchall_5b
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_5a} :catch_45

    goto :goto_2c

    .line 1057
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method
