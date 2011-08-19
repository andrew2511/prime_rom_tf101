.class Lcom/google/android/location/NetworkLocationProvider;
.super Lcom/android/location/provider/LocationProvider;
.source "NetworkLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;,
        Lcom/google/android/location/NetworkLocationProvider$SetMinTimeArgs;,
        Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;
    }
.end annotation


# static fields
.field static sInstance:Lcom/google/android/location/NetworkLocationProvider;


# instance fields
.field private mAirplaneMode:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mApplications:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCellHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/location/CellState;",
            ">;"
        }
    .end annotation
.end field

.field private mCellState:Lcom/google/android/location/CellState;

.field private mCellUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mCellWakeLockAcquired:Z

.field private mCheckLocationWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mCollector:Lcom/google/android/location/LocationCollector;

.field private final mContext:Landroid/content/Context;

.field private mDisabledForAirplaneMode:Z

.field private mEnabled:Z

.field private mLastCellLockTime:J

.field private mLastCellState:Lcom/google/android/location/CellState;

.field private mLastCellStateChangeTime:J

.field private mLastNetworkQueryTime:J

.field private mLastSignalStrength:I

.field private mLastSuccessfulNetworkQueryTime:J

.field private mLastWifiScanElapsedTime:J

.field private mLastWifiScanRealTime:J

.field private mLastWifiScanTriggerTime:J

.field private final mListenSource:Landroid/os/WorkSource;

.field private final mLocation:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mMasfClient:Lcom/google/android/location/LocationMasfClient;

.field private final mMinUpdateSource:Landroid/os/WorkSource;

.field private mNetworkState:I

.field private mPhoneStateListener:Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;

.field private mPlugged:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThread:Ljava/lang/Thread;

.field private mTracking:Z

.field private mUsingMinUpdateSource:Z

.field private mWaitingForWifiScan:Z

.field private mWakeupIntent:Landroid/app/PendingIntent;

.field private mWifiEnabled:Z

.field private mWifiLastScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiScanFrequency:J

.field private mWifiWakeLockAcquired:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/LocationMasfClient;)V
    .locals 12
    .parameter "context"
    .parameter "masfClient"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 218
    invoke-direct {p0}, Lcom/android/location/provider/LocationProvider;-><init>()V

    .line 125
    iput-boolean v7, p0, Lcom/google/android/location/NetworkLocationProvider;->mPlugged:Z

    .line 128
    const/4 v4, 0x2

    iput v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mStatus:I

    .line 129
    iput-wide v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mStatusUpdateTime:J

    .line 132
    iput v6, p0, Lcom/google/android/location/NetworkLocationProvider;->mNetworkState:I

    .line 138
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellHistory:Ljava/util/LinkedList;

    .line 139
    iput-object v10, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellState:Lcom/google/android/location/CellState;

    .line 140
    iput v11, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastSignalStrength:I

    .line 141
    iput-object v10, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellState:Lcom/google/android/location/CellState;

    .line 142
    iput-wide v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellStateChangeTime:J

    .line 143
    iput-wide v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellLockTime:J

    .line 147
    iput-object v10, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLastScanResults:Ljava/util/List;

    .line 148
    iput-wide v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanTriggerTime:J

    .line 149
    iput-wide v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanElapsedTime:J

    .line 150
    iput-wide v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanRealTime:J

    .line 151
    const-wide/32 v4, 0xafc8

    iput-wide v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiScanFrequency:J

    .line 152
    iput-boolean v7, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiEnabled:Z

    .line 153
    iput-boolean v7, p0, Lcom/google/android/location/NetworkLocationProvider;->mWaitingForWifiScan:Z

    .line 157
    new-instance v4, Landroid/location/Location;

    const-string v5, "network"

    invoke-direct {v4, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mLocation:Landroid/location/Location;

    .line 158
    iput-wide v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastNetworkQueryTime:J

    .line 159
    iput-wide v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastSuccessfulNetworkQueryTime:J

    .line 176
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mApplications:Ljava/util/HashSet;

    .line 177
    iput-boolean v7, p0, Lcom/google/android/location/NetworkLocationProvider;->mTracking:Z

    .line 192
    iput-object v10, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 193
    iput-boolean v7, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiWakeLockAcquired:Z

    .line 194
    iput-boolean v7, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellWakeLockAcquired:Z

    .line 204
    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4}, Landroid/os/WorkSource;-><init>()V

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mMinUpdateSource:Landroid/os/WorkSource;

    .line 205
    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4}, Landroid/os/WorkSource;-><init>()V

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mListenSource:Landroid/os/WorkSource;

    .line 447
    iput-object v10, p0, Lcom/google/android/location/NetworkLocationProvider;->mPhoneStateListener:Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;

    .line 449
    new-instance v4, Lcom/google/android/location/NetworkLocationProvider$1;

    invoke-direct {v4, p0}, Lcom/google/android/location/NetworkLocationProvider$1;-><init>(Lcom/google/android/location/NetworkLocationProvider;)V

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    iput-object p1, p0, Lcom/google/android/location/NetworkLocationProvider;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 221
    .local v3, resolver:Landroid/content/ContentResolver;
    iput-object v3, p0, Lcom/google/android/location/NetworkLocationProvider;->mResolver:Landroid/content/ContentResolver;

    .line 222
    const-string v4, "location"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    .line 223
    iput-object p2, p0, Lcom/google/android/location/NetworkLocationProvider;->mMasfClient:Lcom/google/android/location/LocationMasfClient;

    .line 224
    new-instance v4, Lcom/google/android/location/LocationCollector;

    invoke-direct {v4, p2}, Lcom/google/android/location/LocationCollector;-><init>(Lcom/google/android/location/LocationMasfClient;)V

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mCollector:Lcom/google/android/location/LocationCollector;

    .line 225
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mPrefs:Landroid/content/SharedPreferences;

    .line 226
    sput-object p0, Lcom/google/android/location/NetworkLocationProvider;->sInstance:Lcom/google/android/location/NetworkLocationProvider;

    .line 228
    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mAirplaneMode:Z

    .line 230
    iget-boolean v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mAirplaneMode:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiEnabled:Z

    if-nez v4, :cond_3

    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mDisabledForAirplaneMode:Z

    .line 233
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "user-confirmed"

    invoke-interface {v4, v5, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 234
    .local v2, pref:I
    if-eq v2, v11, :cond_0

    .line 235
    if-ne v2, v6, :cond_4

    move v4, v6

    :goto_2
    invoke-direct {p0, v4}, Lcom/google/android/location/NetworkLocationProvider;->setUserConfirmedPreference(Z)V

    .line 237
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v4, "network_location_opt_in"

    invoke-static {v3, v4, v11}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v11, :cond_1

    const-string v4, "network"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    invoke-direct {p0, v6}, Lcom/google/android/location/NetworkLocationProvider;->setUserConfirmedPreference(Z)V

    .line 253
    :cond_1
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 254
    .local v1, powerManager:Landroid/os/PowerManager;
    const-string v4, "*network-location*"

    invoke-virtual {v1, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mCheckLocationWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 256
    const-string v4, "*network-location-cell-update*"

    invoke-virtual {v1, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 260
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 261
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x2

    const-string v6, "NetworkLocationProvider"

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 262
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 265
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 266
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.google.android.location.ALARM_WAKEUP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 269
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 270
    new-instance v4, Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;

    invoke-direct {v4, p0, v10}, Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;-><init>(Lcom/google/android/location/NetworkLocationProvider;Lcom/google/android/location/NetworkLocationProvider$1;)V

    iput-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mPhoneStateListener:Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;

    .line 271
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider;->mPhoneStateListener:Lcom/google/android/location/NetworkLocationProvider$MyPhoneStateListener;

    const/16 v6, 0x150

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 275
    return-void

    .end local v1           #powerManager:Landroid/os/PowerManager;
    .end local v2           #pref:I
    :cond_2
    move v4, v7

    .line 228
    goto/16 :goto_0

    :cond_3
    move v4, v7

    .line 230
    goto/16 :goto_1

    .restart local v2       #pref:I
    :cond_4
    move v4, v7

    .line 235
    goto/16 :goto_2
.end method

.method static synthetic access$100(Lcom/google/android/location/NetworkLocationProvider;)Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/location/NetworkLocationProvider;)Lcom/google/android/location/LocationCollector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCollector:Lcom/google/android/location/LocationCollector;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/location/NetworkLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/location/NetworkLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/location/NetworkLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mAirplaneMode:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/location/NetworkLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/google/android/location/NetworkLocationProvider;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/location/NetworkLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->forceLocation()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/location/NetworkLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mPlugged:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/google/android/location/NetworkLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/google/android/location/NetworkLocationProvider;->mPlugged:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/location/NetworkLocationProvider;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/location/NetworkLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->checkLocation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/location/NetworkLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/location/NetworkLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/location/NetworkLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/location/NetworkLocationProvider;->handleEnableLocationTracking(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/location/NetworkLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/location/NetworkLocationProvider;JLandroid/os/WorkSource;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/NetworkLocationProvider;->handleSetMinTime(JLandroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/location/NetworkLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/NetworkLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/location/NetworkLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/location/NetworkLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/location/NetworkLocationProvider;ILandroid/os/WorkSource;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/NetworkLocationProvider;->handleAddListener(ILandroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/location/NetworkLocationProvider;ILandroid/os/WorkSource;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/NetworkLocationProvider;->handleRemoveListener(ILandroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/location/NetworkLocationProvider;Landroid/telephony/CellLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/location/NetworkLocationProvider;->handleCellLocationChanged(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/location/NetworkLocationProvider;Landroid/telephony/SignalStrength;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/location/NetworkLocationProvider;->handleSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/location/NetworkLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/location/NetworkLocationProvider;->handleDataConnectionStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/location/NetworkLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mTracking:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/location/NetworkLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mDisabledForAirplaneMode:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/location/NetworkLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/google/android/location/NetworkLocationProvider;->mDisabledForAirplaneMode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/location/NetworkLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->releaseCheckLocationLock()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/location/NetworkLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/location/NetworkLocationProvider;->sendCheckLocation(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/google/android/location/NetworkLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/google/android/location/NetworkLocationProvider;->mWaitingForWifiScan:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/location/NetworkLocationProvider;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/location/NetworkLocationProvider;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/location/NetworkLocationProvider;->updateWifiScanResults(Ljava/util/List;)V

    return-void
.end method

.method private acquireCellUpdateLock()V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 967
    :goto_0
    return-void

    .line 965
    :cond_0
    const-string v0, "NetworkLocationProvider"

    const-string v1, "acquireCellUpdateLock: wake lock is already held"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private acquireCheckLocationLock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 906
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCheckLocationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCheckLocationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 911
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellWakeLockAcquired:Z

    if-eqz v0, :cond_1

    .line 923
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiWakeLockAcquired:Z

    if-eqz v0, :cond_3

    .line 931
    :goto_1
    return-void

    .line 913
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mTracking:Z

    if-eqz v0, :cond_2

    .line 914
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 915
    iput-boolean v3, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellWakeLockAcquired:Z

    .line 916
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellLockTime:J

    goto :goto_0

    .line 918
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellWakeLockAcquired:Z

    .line 919
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellLockTime:J

    goto :goto_0

    .line 925
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mTracking:Z

    if-eqz v0, :cond_4

    .line 926
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 927
    iput-boolean v3, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiWakeLockAcquired:Z

    goto :goto_1

    .line 929
    :cond_4
    iput-boolean v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiWakeLockAcquired:Z

    goto :goto_1
.end method

.method private checkLocation()V
    .locals 21

    .prologue
    .line 660
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 661
    .local v6, now:J
    const/4 v3, 0x1

    .line 662
    .local v3, checkCellLocation:Z
    const/4 v8, 0x1

    .line 663
    .local v8, releaseWakeLock:Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mWifiScanFrequency:J

    move-wide v13, v0

    .line 666
    .local v13, timeout:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mWifiEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 667
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanTriggerTime:J

    move-wide/from16 v16, v0

    sub-long v11, v6, v16

    .line 670
    .local v11, timeSinceLastTrigger:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mWaitingForWifiScan:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 671
    const-wide/16 v16, 0x1388

    cmp-long v16, v11, v16

    if-lez v16, :cond_3

    .line 698
    .end local v11           #timeSinceLastTrigger:J
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 699
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellLockTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellLockTime:J

    move-wide/from16 v16, v0

    sub-long v16, v6, v16

    const-wide/16 v18, 0x1388

    cmp-long v16, v16, v18

    if-gez v16, :cond_6

    .line 700
    const/4 v8, 0x0

    .line 701
    const-wide/16 v16, 0x1388

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellLockTime:J

    move-wide/from16 v18, v0

    sub-long v18, v6, v18

    sub-long v13, v16, v18

    .line 732
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    add-long v18, v18, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v20}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 735
    if-eqz v8, :cond_2

    .line 736
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/NetworkLocationProvider;->releaseCheckLocationLock()V

    .line 738
    :cond_2
    return-void

    .line 676
    .restart local v11       #timeSinceLastTrigger:J
    :cond_3
    const/4 v3, 0x0

    .line 677
    const/4 v8, 0x0

    .line 678
    const-wide/16 v16, 0x1388

    sub-long v13, v16, v11

    goto :goto_0

    .line 680
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mWifiScanFrequency:J

    move-wide/from16 v16, v0

    cmp-long v16, v11, v16

    if-lez v16, :cond_5

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "wifi"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiManager;

    .line 683
    .local v15, wifiManager:Landroid/net/wifi/WifiManager;
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanTriggerTime:J

    .line 684
    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v10

    .line 685
    .local v10, succeeded:Z
    if-eqz v10, :cond_0

    .line 686
    const/4 v3, 0x0

    .line 687
    const/4 v8, 0x0

    .line 688
    const-wide/16 v13, 0x1388

    .line 689
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/location/NetworkLocationProvider;->mWaitingForWifiScan:Z

    goto/16 :goto_0

    .line 694
    .end local v10           #succeeded:Z
    .end local v15           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mWifiScanFrequency:J

    move-wide/from16 v16, v0

    sub-long v13, v16, v11

    goto/16 :goto_0

    .line 703
    .end local v11           #timeSinceLastTrigger:J
    :cond_6
    const/4 v9, 0x0

    .line 707
    .local v9, requestedUpdate:Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellStateChangeTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLastNetworkQueryTime:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_8

    .line 708
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/NetworkLocationProvider;->updateLocation()Z

    move-result v9

    .line 715
    :cond_7
    :goto_2
    if-eqz v9, :cond_9

    .line 716
    const/4 v8, 0x0

    .line 717
    const-wide/16 v13, 0x1388

    goto/16 :goto_1

    .line 710
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLastNetworkQueryTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLastNetworkQueryTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLastSuccessfulNetworkQueryTime:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLastNetworkQueryTime:J

    move-wide/from16 v16, v0

    sub-long v16, v6, v16

    const-wide/32 v18, 0xea60

    cmp-long v16, v16, v18

    if-lez v16, :cond_7

    .line 713
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/NetworkLocationProvider;->updateLocation()Z

    move-result v9

    goto :goto_2

    .line 718
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLocation:Landroid/location/Location;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLocation:Landroid/location/Location;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getAccuracy()F

    move-result v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_1

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 724
    .local v4, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLocation:Landroid/location/Location;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mWifiScanFrequency:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    cmp-long v16, v16, v4

    if-gez v16, :cond_1

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLocation:Landroid/location/Location;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/NetworkLocationProvider;->mLocation:Landroid/location/Location;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/location/NetworkLocationProvider;->reportLocation(Landroid/location/Location;)V

    goto/16 :goto_1
.end method

.method private clearLocation()V
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLocation:Landroid/location/Location;

    const/high16 v1, -0x4080

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 979
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/NetworkLocationProvider;->updateStatus(I)V

    .line 980
    return-void
.end method

.method private doEnable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 553
    iput-boolean v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mEnabled:Z

    .line 554
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCollector:Lcom/google/android/location/LocationCollector;

    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mDisabledForAirplaneMode:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/location/LocationCollector;->updateNetworkProviderStatus(Z)V

    .line 555
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mTracking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mDisabledForAirplaneMode:Z

    if-nez v0, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->forceLocation()V

    .line 558
    :cond_0
    return-void

    .line 554
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private forceLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 983
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    .line 985
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLastScanResults:Ljava/util/List;

    .line 986
    iput-wide v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanTriggerTime:J

    .line 987
    iput-wide v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanElapsedTime:J

    .line 988
    iput-wide v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanRealTime:J

    .line 989
    iput-boolean v3, p0, Lcom/google/android/location/NetworkLocationProvider;->mWaitingForWifiScan:Z

    .line 996
    :goto_0
    invoke-direct {p0, v3}, Lcom/google/android/location/NetworkLocationProvider;->sendCheckLocation(Z)V

    .line 997
    return-void

    .line 992
    :cond_0
    iput-wide v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellLockTime:J

    .line 993
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellStateChangeTime:J

    goto :goto_0
.end method

.method private getPackageNames(I)[Ljava/lang/String;
    .locals 1
    .parameter "uid"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleAddListener(ILandroid/os/WorkSource;)V
    .locals 10
    .parameter "uid"
    .parameter "ws"

    .prologue
    .line 857
    iget-object v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mListenSource:Landroid/os/WorkSource;

    invoke-virtual {v8, p2}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 858
    iget-boolean v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mUsingMinUpdateSource:Z

    if-nez v8, :cond_0

    .line 859
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 861
    .local v5, ident:J
    :try_start_0
    iget-object v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mCheckLocationWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v9, p0, Lcom/google/android/location/NetworkLocationProvider;->mListenSource:Landroid/os/WorkSource;

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 862
    iget-object v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v9, p0, Lcom/google/android/location/NetworkLocationProvider;->mListenSource:Landroid/os/WorkSource;

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager$WifiLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 867
    .end local v5           #ident:J
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/location/NetworkLocationProvider;->getPackageNames(I)[Ljava/lang/String;

    move-result-object v2

    .line 868
    .local v2, applications:[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 869
    move-object v3, v2

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v1, v3, v4

    .line 870
    .local v1, app:Ljava/lang/String;
    const-string v8, "com.google.android."

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, a:Ljava/lang/String;
    const-string v8, "com.android."

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    iget-object v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mApplications:Ljava/util/HashSet;

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 869
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 864
    .end local v0           #a:Ljava/lang/String;
    .end local v1           #app:Ljava/lang/String;
    .end local v2           #applications:[Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .restart local v5       #ident:J
    :catchall_0
    move-exception v8

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 875
    .end local v5           #ident:J
    .restart local v2       #applications:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private handleCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4
    .parameter "cellLocation"

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->acquireCellUpdateLock()V

    .line 383
    :try_start_0
    new-instance v0, Lcom/google/android/location/CellState;

    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastSignalStrength:I

    invoke-direct {v0, v2, p1, v3}, Lcom/google/android/location/CellState;-><init>(Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;I)V

    .line 384
    .local v0, cs:Lcom/google/android/location/CellState;
    iput-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellState:Lcom/google/android/location/CellState;

    .line 387
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mCollector:Lcom/google/android/location/LocationCollector;

    invoke-virtual {v2, v0}, Lcom/google/android/location/LocationCollector;->updateCellState(Lcom/google/android/location/CellState;)V

    .line 390
    invoke-direct {p0, v0}, Lcom/google/android/location/NetworkLocationProvider;->updateCellState(Lcom/google/android/location/CellState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    invoke-virtual {p0}, Lcom/google/android/location/NetworkLocationProvider;->releaseCellUpdateLock()V

    .line 396
    .end local v0           #cs:Lcom/google/android/location/CellState;
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 392
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v2, "NetworkLocationProvider"

    const-string v3, "Exception in handleCellLocationChanged:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    invoke-virtual {p0}, Lcom/google/android/location/NetworkLocationProvider;->releaseCellUpdateLock()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/android/location/NetworkLocationProvider;->releaseCellUpdateLock()V

    throw v2
.end method

.method private handleDataConnectionStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 413
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 414
    .local v0, location:Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0, v0}, Lcom/google/android/location/NetworkLocationProvider;->handleCellLocationChanged(Landroid/telephony/CellLocation;)V

    .line 417
    :cond_0
    return-void
.end method

.method private handleDisable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 596
    iput-boolean v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mEnabled:Z

    .line 597
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 598
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->removeMessages(I)V

    .line 599
    iput-boolean v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mWaitingForWifiScan:Z

    .line 600
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCollector:Lcom/google/android/location/LocationCollector;

    invoke-virtual {v0, v2}, Lcom/google/android/location/LocationCollector;->updateNetworkProviderStatus(Z)V

    .line 601
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mMasfClient:Lcom/google/android/location/LocationMasfClient;

    invoke-virtual {v0}, Lcom/google/android/location/LocationMasfClient;->clearCache()V

    .line 603
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->releaseCheckLocationLock()V

    .line 605
    invoke-direct {p0, v2}, Lcom/google/android/location/NetworkLocationProvider;->setUserConfirmedPreference(Z)V

    .line 606
    return-void
.end method

.method private handleEnable()V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "network_location_opt_in"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/location/ConfirmAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 584
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 585
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 589
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->doEnable()V

    goto :goto_0
.end method

.method private handleEnableLocationTracking(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mTracking:Z

    if-ne p1, v0, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/location/NetworkLocationProvider;->mTracking:Z

    .line 798
    if-nez p1, :cond_2

    .line 800
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->clearLocation()V

    .line 801
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->removeMessages(I)V

    .line 802
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mWaitingForWifiScan:Z

    .line 804
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->releaseCheckLocationLock()V

    goto :goto_0

    .line 805
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mDisabledForAirplaneMode:Z

    if-nez v0, :cond_0

    .line 807
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->forceLocation()V

    goto :goto_0
.end method

.method private handleRemoveListener(ILandroid/os/WorkSource;)V
    .locals 10
    .parameter "uid"
    .parameter "ws"

    .prologue
    .line 885
    iget-object v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mListenSource:Landroid/os/WorkSource;

    invoke-virtual {v8, p2}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 886
    iget-boolean v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mUsingMinUpdateSource:Z

    if-nez v8, :cond_0

    .line 887
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 889
    .local v5, ident:J
    :try_start_0
    iget-object v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mCheckLocationWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v9, p0, Lcom/google/android/location/NetworkLocationProvider;->mListenSource:Landroid/os/WorkSource;

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 890
    iget-object v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v9, p0, Lcom/google/android/location/NetworkLocationProvider;->mListenSource:Landroid/os/WorkSource;

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager$WifiLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 895
    .end local v5           #ident:J
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/location/NetworkLocationProvider;->getPackageNames(I)[Ljava/lang/String;

    move-result-object v2

    .line 896
    .local v2, applications:[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 897
    move-object v3, v2

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v1, v3, v4

    .line 898
    .local v1, app:Ljava/lang/String;
    const-string v8, "com.google.android."

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, a:Ljava/lang/String;
    const-string v8, "com.android."

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 900
    iget-object v8, p0, Lcom/google/android/location/NetworkLocationProvider;->mApplications:Ljava/util/HashSet;

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 897
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 892
    .end local v0           #a:Ljava/lang/String;
    .end local v1           #app:Ljava/lang/String;
    .end local v2           #applications:[Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .restart local v5       #ident:J
    :catchall_0
    move-exception v8

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 903
    .end local v5           #ident:J
    .restart local v2       #applications:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private handleSetMinTime(JLandroid/os/WorkSource;)V
    .locals 3
    .parameter "minTime"
    .parameter "ws"

    .prologue
    const-wide/32 v1, 0xafc8

    .line 630
    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    .line 631
    iput-wide v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiScanFrequency:J

    .line 635
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mMinUpdateSource:Landroid/os/WorkSource;

    invoke-virtual {v0, p3}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 636
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/NetworkLocationProvider;->sendCheckLocation(Z)V

    .line 637
    return-void

    .line 633
    :cond_0
    iput-wide p1, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiScanFrequency:J

    goto :goto_0
.end method

.method private handleSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "ss"

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastSignalStrength:I

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellState:Lcom/google/android/location/CellState;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellState:Lcom/google/android/location/CellState;

    iget v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastSignalStrength:I

    invoke-virtual {v0, v1}, Lcom/google/android/location/CellState;->setSignalStrength(I)V

    .line 407
    :cond_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastSignalStrength:I

    goto :goto_0
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 334
    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCollector:Lcom/google/android/location/LocationCollector;

    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mPlugged:Z

    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/LocationCollector;->updateLocation(Landroid/location/Location;Z)V

    .line 337
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 1
    .parameter "state"
    .parameter "info"

    .prologue
    .line 316
    iget v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mNetworkState:I

    if-ne p1, v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    iput p1, p0, Lcom/google/android/location/NetworkLocationProvider;->mNetworkState:I

    .line 324
    iget v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mNetworkState:I

    invoke-direct {p0, v0}, Lcom/google/android/location/NetworkLocationProvider;->updateStatus(I)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 279
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.google.android.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    return-void
.end method

.method private internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "value"
    .parameter "name"
    .parameter "sb"

    .prologue
    .line 778
    const-string v0, "  "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const/16 v0, 0x20

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 782
    const/16 v0, 0xa

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    return-void
.end method

.method private releaseCheckLocationLock()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 935
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiWakeLockAcquired:Z

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 937
    iput-boolean v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiWakeLockAcquired:Z

    .line 941
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellWakeLockAcquired:Z

    if-eqz v0, :cond_1

    .line 942
    iput-boolean v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellWakeLockAcquired:Z

    .line 943
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellLockTime:J

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCheckLocationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCheckLocationWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 951
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mUsingMinUpdateSource:Z

    .line 952
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 954
    :try_start_0
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mCheckLocationWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/google/android/location/NetworkLocationProvider;->mListenSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 955
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v3, p0, Lcom/google/android/location/NetworkLocationProvider;->mListenSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager$WifiLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 959
    return-void

    .line 949
    :cond_2
    const-string v0, "NetworkLocationProvider"

    const-string v1, "releaseCheckLocationLock: wake lock has already been released"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 957
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendCheckLocation(Z)V
    .locals 7
    .parameter "fromMinTime"

    .prologue
    const/4 v6, 0x1

    .line 640
    iget-object v3, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    monitor-enter v3

    .line 641
    if-eqz p1, :cond_0

    .line 642
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mUsingMinUpdateSource:Z

    .line 643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 645
    .local v0, ident:J
    :try_start_1
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mCheckLocationWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider;->mMinUpdateSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 646
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v5, p0, Lcom/google/android/location/NetworkLocationProvider;->mMinUpdateSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager$WifiLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 651
    .end local v0           #ident:J
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->acquireCheckLocationLock()V

    .line 652
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->removeMessages(I)V

    .line 653
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 654
    .local v2, m:Landroid/os/Message;
    if-eqz p1, :cond_1

    move v4, v6

    :goto_0
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 655
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    invoke-virtual {v4, v2}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 656
    monitor-exit v3

    .line 657
    return-void

    .line 648
    .end local v2           #m:Landroid/os/Message;
    .restart local v0       #ident:J
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 656
    .end local v0           #ident:J
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 654
    .restart local v2       #m:Landroid/os/Message;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setUserConfirmedPreference(Z)V
    .locals 3
    .parameter "confirmed"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "network_location_opt_in"

    if-eqz p1, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 563
    return-void

    .line 561
    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method private updateCellState(Lcom/google/android/location/CellState;)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 345
    if-nez p1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellState:Lcom/google/android/location/CellState;

    if-nez v0, :cond_3

    .line 350
    iput-object p1, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellState:Lcom/google/android/location/CellState;

    .line 364
    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellLockTime:J

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellStateChangeTime:J

    .line 373
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellWakeLockAcquired:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mTracking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mDisabledForAirplaneMode:Z

    if-nez v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->checkLocation()V

    goto :goto_0

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellState:Lcom/google/android/location/CellState;

    invoke-virtual {v0, p1}, Lcom/google/android/location/CellState;->equals(Lcom/google/android/location/CellState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellState:Lcom/google/android/location/CellState;

    invoke-virtual {v0}, Lcom/google/android/location/CellState;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 354
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellHistory:Ljava/util/LinkedList;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4

    .line 356
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellHistory:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 358
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellHistory:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellState:Lcom/google/android/location/CellState;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 359
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_5
    iput-object p1, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellState:Lcom/google/android/location/CellState;

    goto :goto_1

    .line 359
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateLocation()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1013
    iget-boolean v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mTracking:Z

    if-nez v0, :cond_0

    move v0, v8

    .line 1072
    :goto_0
    return v0

    .line 1018
    :cond_0
    iget v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mNetworkState:I

    if-eq v0, v9, :cond_1

    move v0, v8

    .line 1019
    goto :goto_0

    .line 1022
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1025
    iget-wide v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastNetworkQueryTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastNetworkQueryTime:J

    iget-wide v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastSuccessfulNetworkQueryTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastNetworkQueryTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    move v0, v8

    .line 1028
    goto :goto_0

    .line 1033
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiEnabled:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLastScanResults:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-wide v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanElapsedTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiScanFrequency:J

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_b

    .line 1035
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLastScanResults:Ljava/util/List;

    move-object v5, v2

    .line 1039
    :goto_1
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellState:Lcom/google/android/location/CellState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellState:Lcom/google/android/location/CellState;

    invoke-virtual {v2}, Lcom/google/android/location/CellState;->isValid()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v2, v10

    .line 1042
    :goto_2
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v3, v10

    .line 1045
    :goto_3
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 1046
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->clearLocation()V

    move v0, v8

    .line 1047
    goto :goto_0

    :cond_5
    move v2, v8

    .line 1039
    goto :goto_2

    :cond_6
    move v3, v8

    .line 1042
    goto :goto_3

    .line 1052
    :cond_7
    if-eqz v3, :cond_8

    move v2, v10

    .line 1061
    :goto_4
    :try_start_0
    iput-wide v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastNetworkQueryTime:J

    .line 1062
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCollector:Lcom/google/android/location/LocationCollector;

    invoke-virtual {v0}, Lcom/google/android/location/LocationCollector;->lastGpsLocation()Lcom/google/android/location/CollectedLocation;

    move-result-object v0

    .line 1063
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/location/CollectedLocation;->getTime()J

    move-result-wide v3

    iget-wide v6, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanRealTime:J

    sub-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v6, 0xafc80

    cmp-long v1, v3, v6

    if-lez v1, :cond_a

    move-object v8, v11

    .line 1067
    :goto_5
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mMasfClient:Lcom/google/android/location/LocationMasfClient;

    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mApplications:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellState:Lcom/google/android/location/CellState;

    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellHistory:Ljava/util/LinkedList;

    iget-wide v6, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanRealTime:J

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/location/LocationMasfClient;->getNetworkLocation(Ljava/util/Collection;ILcom/google/android/location/CellState;Ljava/util/List;Ljava/util/List;JLcom/google/android/location/CollectedLocation;Lcom/google/android/location/NetworkLocationProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    move v0, v10

    .line 1072
    goto/16 :goto_0

    .line 1054
    :cond_8
    if-eqz v2, :cond_9

    move v2, v9

    .line 1055
    goto :goto_4

    .line 1057
    :cond_9
    const/4 v2, 0x3

    goto :goto_4

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    const-string v1, "NetworkLocationProvider"

    const-string v2, "updateLocation got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_a
    move-object v8, v0

    goto :goto_5

    :cond_b
    move-object v5, v11

    goto :goto_1
.end method

.method private updateStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 1000
    iget v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mStatus:I

    if-eq p1, v0, :cond_0

    .line 1001
    iput p1, p0, Lcom/google/android/location/NetworkLocationProvider;->mStatus:I

    .line 1002
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mStatusUpdateTime:J

    .line 1004
    :cond_0
    return-void
.end method

.method private updateWifiScanResults(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 817
    .local p1, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-boolean v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mTracking:Z

    if-nez v2, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 823
    .local v0, now:J
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLastScanResults:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLastScanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLastScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v2, v3, :cond_3

    :cond_2
    iget-wide v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanElapsedTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiScanFrequency:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 827
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLastScanResults:Ljava/util/List;

    if-nez v2, :cond_4

    .line 828
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLastScanResults:Ljava/util/List;

    .line 832
    :goto_1
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLastScanResults:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 833
    iput-wide v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanElapsedTime:J

    .line 834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastWifiScanRealTime:J

    .line 836
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->updateLocation()Z

    goto :goto_0

    .line 830
    :cond_4
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLastScanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1
.end method


# virtual methods
.method cleanup()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 306
    return-void
.end method

.method locationReceived(Landroid/location/Location;Z)V
    .locals 6
    .parameter "location"
    .parameter "networkSuccessful"

    .prologue
    .line 1081
    iget-boolean v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mEnabled:Z

    if-nez v2, :cond_1

    .line 1082
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mMasfClient:Lcom/google/android/location/LocationMasfClient;

    invoke-virtual {v2}, Lcom/google/android/location/LocationMasfClient;->clearCache()V

    .line 1108
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 1087
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 1088
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/android/location/NetworkLocationProvider;->updateStatus(I)V

    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1095
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiScanFrequency:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 1096
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1098
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/location/NetworkLocationProvider;->reportLocation(Landroid/location/Location;)V

    .line 1105
    .end local v0           #currentTime:J
    :goto_1
    if-eqz p2, :cond_0

    .line 1106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastSuccessfulNetworkQueryTime:J

    goto :goto_0

    .line 1101
    :cond_3
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->clearLocation()V

    goto :goto_1
.end method

.method public onAddListener(ILandroid/os/WorkSource;)V
    .locals 3
    .parameter "uid"
    .parameter "ws"

    .prologue
    .line 847
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 848
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 849
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 850
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 851
    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mTracking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mDisabledForAirplaneMode:Z

    if-nez v1, :cond_0

    .line 852
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->forceLocation()V

    .line 854
    :cond_0
    return-void
.end method

.method public onDisable()V
    .locals 3

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 593
    return-void
.end method

.method public onEnable()V
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 576
    return-void
.end method

.method public onEnableLocationTracking(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 786
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 787
    .local v0, m:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 788
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 789
    return-void

    .line 787
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onGetAccuracy()I
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x2

    return v0
.end method

.method public onGetInternalState()Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0xa

    const-wide/16 v9, 0x1

    const-wide/16 v7, 0x0

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "  location "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 743
    iget v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mStatus:I

    int-to-long v4, v4

    const-string v6, "Status"

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/location/NetworkLocationProvider;->internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 744
    iget-wide v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mStatusUpdateTime:J

    const-string v6, "StatusUpdateTime"

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/location/NetworkLocationProvider;->internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 745
    iget v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mNetworkState:I

    int-to-long v4, v4

    const-string v6, "NetworkState"

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/location/NetworkLocationProvider;->internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 746
    iget-wide v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellStateChangeTime:J

    const-string v6, "LastCellStateChangeTime"

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/location/NetworkLocationProvider;->internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 747
    iget-wide v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastCellLockTime:J

    const-string v6, "LastCellLockTime"

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/location/NetworkLocationProvider;->internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 748
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellState:Lcom/google/android/location/CellState;

    if-eqz v4, :cond_0

    .line 749
    const-string v4, "  cell state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellState:Lcom/google/android/location/CellState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 751
    :cond_0
    const-string v4, "  cell history\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellHistory:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/CellState;

    .line 753
    .local v0, cs:Lcom/google/android/location/CellState;
    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 757
    .end local v0           #cs:Lcom/google/android/location/CellState;
    :cond_1
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLastScanResults:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 758
    const-string v4, "  last wifi scan\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    iget-object v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiLastScanResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 760
    .local v3, sr:Landroid/net/wifi/ScanResult;
    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 765
    .end local v3           #sr:Landroid/net/wifi/ScanResult;
    :cond_2
    iget-wide v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiScanFrequency:J

    const-string v6, "WifiScanFrequency"

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/location/NetworkLocationProvider;->internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 766
    iget-boolean v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWifiEnabled:Z

    if-eqz v4, :cond_3

    move-wide v4, v9

    :goto_2
    const-string v6, "WifiEnabled"

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/location/NetworkLocationProvider;->internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 767
    iget-boolean v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mWaitingForWifiScan:Z

    if-eqz v4, :cond_4

    move-wide v4, v9

    :goto_3
    const-string v6, "WaitingForWifiScan"

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/location/NetworkLocationProvider;->internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 769
    iget-wide v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastNetworkQueryTime:J

    const-string v6, "LastNetworkQueryTime"

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/location/NetworkLocationProvider;->internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 770
    iget-wide v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mLastSuccessfulNetworkQueryTime:J

    const-string v6, "LastSuccessfulNetworkQueryTime"

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/location/NetworkLocationProvider;->internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 771
    iget-boolean v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mEnabled:Z

    if-eqz v4, :cond_5

    move-wide v4, v9

    :goto_4
    const-string v6, "Enabled"

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/location/NetworkLocationProvider;->internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 772
    iget-boolean v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mAirplaneMode:Z

    if-eqz v4, :cond_6

    move-wide v4, v9

    :goto_5
    const-string v6, "AirplaneMode"

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/location/NetworkLocationProvider;->internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 773
    iget-boolean v4, p0, Lcom/google/android/location/NetworkLocationProvider;->mDisabledForAirplaneMode:Z

    if-eqz v4, :cond_7

    move-wide v4, v9

    :goto_6
    const-string v6, "DisabledForAirplaneMode"

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/google/android/location/NetworkLocationProvider;->internalStateLong(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 774
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    move-wide v4, v7

    .line 766
    goto :goto_2

    :cond_4
    move-wide v4, v7

    .line 767
    goto :goto_3

    :cond_5
    move-wide v4, v7

    .line 771
    goto :goto_4

    :cond_6
    move-wide v4, v7

    .line 772
    goto :goto_5

    :cond_7
    move-wide v4, v7

    .line 773
    goto :goto_6
.end method

.method public onGetPowerRequirement()I
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x1

    return v0
.end method

.method public onGetStatus(Landroid/os/Bundle;)I
    .locals 1
    .parameter "extras"

    .prologue
    .line 613
    iget v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mStatus:I

    return v0
.end method

.method public onGetStatusUpdateTime()J
    .locals 2

    .prologue
    .line 617
    iget-wide v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public onHasMonetaryCost()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public onMeetsCriteria(Landroid/location/Criteria;)Z
    .locals 3
    .parameter "criteria"

    .prologue
    const/4 v2, 0x0

    .line 540
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move v0, v2

    .line 549
    :goto_0
    return v0

    .line 544
    :cond_0
    invoke-virtual {p1}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 547
    goto :goto_0

    .line 549
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoveListener(ILandroid/os/WorkSource;)V
    .locals 3
    .parameter "uid"
    .parameter "ws"

    .prologue
    .line 878
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 879
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 880
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 881
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 882
    return-void
.end method

.method public onRequiresCell()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method public onRequiresNetwork()Z
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method public onRequiresSatellite()Z
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public onSetMinTime(JLandroid/os/WorkSource;)V
    .locals 4
    .parameter "minTime"
    .parameter "ws"

    .prologue
    .line 621
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 622
    .local v1, m:Landroid/os/Message;
    new-instance v0, Lcom/google/android/location/NetworkLocationProvider$SetMinTimeArgs;

    invoke-direct {v0}, Lcom/google/android/location/NetworkLocationProvider$SetMinTimeArgs;-><init>()V

    .line 623
    .local v0, args:Lcom/google/android/location/NetworkLocationProvider$SetMinTimeArgs;
    iput-wide p1, v0, Lcom/google/android/location/NetworkLocationProvider$SetMinTimeArgs;->minTime:J

    .line 624
    iput-object p3, v0, Lcom/google/android/location/NetworkLocationProvider$SetMinTimeArgs;->ws:Landroid/os/WorkSource;

    .line 625
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 626
    iget-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    invoke-virtual {v2, v1}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 627
    return-void
.end method

.method public onSupportsAltitude()Z
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public onSupportsBearing()Z
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public onSupportsSpeed()Z
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdateLocation(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 329
    .local v0, m:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 330
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    return-void
.end method

.method public onUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 3
    .parameter "state"
    .parameter "info"

    .prologue
    .line 309
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 310
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 311
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 313
    return-void
.end method

.method public releaseCellUpdateLock()V
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mCellUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 975
    :goto_0
    return-void

    .line 973
    :cond_0
    const-string v0, "NetworkLocationProvider"

    const-string v1, "releaseCellUpdateLock: wake lock has already been released"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1172
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1173
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1174
    new-instance v0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;-><init>(Lcom/google/android/location/NetworkLocationProvider;Lcom/google/android/location/NetworkLocationProvider$1;)V

    iput-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mProviderHandler:Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;

    .line 1175
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->initialize()V

    .line 1176
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 1177
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mStarted:Z

    .line 1178
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1179
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1181
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1182
    iput-object v2, p0, Lcom/google/android/location/NetworkLocationProvider;->mThread:Ljava/lang/Thread;

    .line 1183
    return-void

    .line 1179
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method start()V
    .locals 3

    .prologue
    .line 290
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "NetworkLocationProvider"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mThread:Ljava/lang/Thread;

    .line 291
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 293
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 294
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 296
    :try_start_1
    iget-object v1, p0, Lcom/google/android/location/NetworkLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v1

    goto :goto_0

    .line 300
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method userConfirmedEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "network"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 568
    if-eqz p1, :cond_0

    .line 569
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/NetworkLocationProvider;->setUserConfirmedPreference(Z)V

    .line 570
    invoke-direct {p0}, Lcom/google/android/location/NetworkLocationProvider;->doEnable()V

    .line 572
    :cond_0
    return-void
.end method
