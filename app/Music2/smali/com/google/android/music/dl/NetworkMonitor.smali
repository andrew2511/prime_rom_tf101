.class public Lcom/google/android/music/dl/NetworkMonitor;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;,
        Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;,
        Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_BITRATE:I = 0x60

.field private static final DEFAULT_BITRATE_3G:I = 0xc0

.field private static final DEFAULT_BITRATE_WIFI:I = 0x200

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MINIMUM_BITRATE:I = 0x2d

.field private static final MIN_COMPLETED_TO_USE_FOR_BITRATE:I = 0x80000

.field private static final MIN_TIME_TO_USE_FOR_BITRATE:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"

.field private static final TRIM_BITRATE_PERCENT:F = 0.75f

.field private static sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mConnectedMobileDataType:I

.field private final mContext:Landroid/content/Context;

.field private mIsAvailable:Z

.field private mIsListening:Z

.field private mMobileConnected:Z

.field private final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkChangeListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotifiyListenersNetworkChangedRunnable:Ljava/lang/Runnable;

.field private final mStateRecievedLock:Ljava/lang/Object;

.field private mStreamabilityListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "NetworkMonitor"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/NetworkMonitor;->LOGV:Z

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    iput-boolean v8, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsListening:Z

    .line 49
    iput-object v9, p0, Lcom/google/android/music/dl/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 54
    iput-boolean v8, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z

    .line 55
    const/4 v5, -0x1

    iput v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectedMobileDataType:I

    .line 60
    iput-boolean v8, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    .line 63
    iput-boolean v8, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsAvailable:Z

    .line 65
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStateRecievedLock:Ljava/lang/Object;

    .line 315
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Ljava/util/LinkedList;

    .line 389
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Ljava/util/LinkedList;

    .line 414
    new-instance v5, Lcom/google/android/music/dl/NetworkMonitor$1;

    invoke-direct {v5, p0}, Lcom/google/android/music/dl/NetworkMonitor$1;-><init>(Lcom/google/android/music/dl/NetworkMonitor;)V

    iput-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNotifiyListenersNetworkChangedRunnable:Ljava/lang/Runnable;

    .line 68
    iput-object p1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 71
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 73
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 74
    .local v2, netInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 76
    .local v4, type:I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 77
    .local v1, isConnected:Z
    sget-boolean v5, Lcom/google/android/music/dl/NetworkMonitor;->LOGV:Z

    if-eqz v5, :cond_0

    .line 78
    const-string v5, "NetworkMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isConnected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/android/music/dl/NetworkMonitor;->isSupportedType(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    invoke-direct {p0, v4}, Lcom/google/android/music/dl/NetworkMonitor;->isMobileType(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    move v5, v10

    :goto_0
    iput-boolean v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z

    .line 82
    invoke-direct {p0, v4}, Lcom/google/android/music/dl/NetworkMonitor;->isWifiLikeType(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    move v5, v10

    :goto_1
    iput-boolean v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    .line 86
    .end local v1           #isConnected:Z
    .end local v4           #type:I
    :cond_1
    iget-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 87
    invoke-static {p1}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 88
    iget-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5, p0}, Lcom/google/android/music/jumper/MusicPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 91
    invoke-virtual {p0, v9, v9}, Lcom/google/android/music/dl/NetworkMonitor;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyOnWifi()Z

    move-result v3

    .line 95
    .local v3, streamOnlyOnWifi:Z
    if-eqz v3, :cond_4

    iget-boolean v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    :goto_2
    iput-boolean v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsAvailable:Z

    .line 96
    return-void

    .end local v3           #streamOnlyOnWifi:Z
    .restart local v1       #isConnected:Z
    .restart local v4       #type:I
    :cond_2
    move v5, v8

    .line 81
    goto :goto_0

    :cond_3
    move v5, v8

    .line 82
    goto :goto_1

    .line 95
    .end local v1           #isConnected:Z
    .end local v4           #type:I
    .restart local v3       #streamOnlyOnWifi:Z
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/music/dl/NetworkMonitor;->isConnected()Z

    move-result v5

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/NetworkMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/music/dl/NetworkMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    return v0
.end method

.method public static getRecommendedBitrate()I
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private isMobileType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 259
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportedType(I)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 280
    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiLikeType(I)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 268
    if-eq p1, v1, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyListenersNetworkChanged()V
    .locals 2

    .prologue
    .line 449
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNotifiyListenersNetworkChangedRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method private notifyListenersStremabilityChanged(Z)V
    .locals 2
    .parameter "isStreamable"

    .prologue
    .line 385
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;-><init>(Lcom/google/android/music/dl/NetworkMonitor;Z)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method

.method public static reportBitrate(Landroid/content/Context;JJ)V
    .locals 7
    .parameter "context"
    .parameter "totalLengthDownloaded"
    .parameter "timeToDownload"

    .prologue
    const-wide v5, 0x408f400000000000L

    .line 240
    const-wide/32 v1, 0x80000

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    const-wide/16 v1, 0xbb8

    cmp-long v1, p3, v1

    if-gez v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-wide/16 v1, 0x8

    mul-long/2addr v1, p1

    long-to-float v1, v1

    const/high16 v2, 0x3f40

    mul-float/2addr v1, v2

    float-to-double v1, v1

    div-double/2addr v1, v5

    long-to-double v3, p3

    div-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-int v0, v1

    .line 247
    .local v0, newBitrate:I
    const/16 v1, 0x2d

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 249
    sget-object v1, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method private resetBitrate()V
    .locals 2

    .prologue
    const/16 v1, 0x60

    .line 203
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 231
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z

    if-eqz v0, :cond_1

    .line 208
    iget v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectedMobileDataType:I

    packed-switch v0, :pswitch_data_0

    .line 225
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 212
    :pswitch_0
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 222
    :pswitch_1
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 229
    :cond_1
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized startListening()V
    .locals 2

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 111
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsListening:Z

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized stopListening()V
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsListening:Z

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsListening:Z

    .line 116
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public hasMobileConnection()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z

    return v0
.end method

.method public hasWifiConnection()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamingAvailable()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsAvailable:Z

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/music/dl/NetworkMonitor;->stopListening()V

    .line 100
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 146
    iget-object v8, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStateRecievedLock:Ljava/lang/Object;

    monitor-enter v8

    .line 147
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 149
    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 151
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 152
    .local v3, networkType:I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, typeName:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/google/android/music/dl/NetworkMonitor;->isSupportedType(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 154
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 155
    .local v1, isConnected:Z
    const-string v9, "noConnectivity"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 158
    .local v5, noDataAvailable:Z
    invoke-direct {p0, v3}, Lcom/google/android/music/dl/NetworkMonitor;->isMobileType(I)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v5, :cond_1

    move v9, v12

    :goto_0
    iput-boolean v9, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z

    .line 159
    invoke-direct {p0, v3}, Lcom/google/android/music/dl/NetworkMonitor;->isWifiLikeType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v5, :cond_2

    move v9, v12

    :goto_1
    iput-boolean v9, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    .line 160
    iget-object v9, p0, Lcom/google/android/music/dl/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    iput v9, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectedMobileDataType:I

    .line 162
    iget-object v9, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v9}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyOnWifi()Z

    move-result v6

    .line 163
    .local v6, streamOnlyOnWifi:Z
    if-eqz v6, :cond_3

    iget-boolean v9, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    move v4, v9

    .line 165
    .local v4, newIsAvail:Z
    :goto_2
    sget-boolean v9, Lcom/google/android/music/dl/NetworkMonitor;->LOGV:Z

    if-eqz v9, :cond_0

    .line 166
    const-string v9, "NetworkMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Network changed: type("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") name("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") isConnected : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " noData: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/dl/NetworkMonitor;->notifyListenersNetworkChanged()V

    .line 172
    iget-boolean v9, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsAvailable:Z

    if-ne v4, v9, :cond_4

    .line 174
    monitor-exit v8

    .line 197
    .end local v1           #isConnected:Z
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    .end local v3           #networkType:I
    .end local v4           #newIsAvail:Z
    .end local v5           #noDataAvailable:Z
    .end local v6           #streamOnlyOnWifi:Z
    .end local v7           #typeName:Ljava/lang/String;
    :goto_3
    return-void

    .restart local v1       #isConnected:Z
    .restart local v2       #netInfo:Landroid/net/NetworkInfo;
    .restart local v3       #networkType:I
    .restart local v5       #noDataAvailable:Z
    .restart local v7       #typeName:Ljava/lang/String;
    :cond_1
    move v9, v11

    .line 158
    goto :goto_0

    :cond_2
    move v9, v11

    .line 159
    goto :goto_1

    .line 163
    .restart local v6       #streamOnlyOnWifi:Z
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/music/dl/NetworkMonitor;->isConnected()Z

    move-result v9

    move v4, v9

    goto :goto_2

    .line 176
    .restart local v4       #newIsAvail:Z
    :cond_4
    iput-boolean v4, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsAvailable:Z

    .line 178
    sget-boolean v9, Lcom/google/android/music/dl/NetworkMonitor;->LOGV:Z

    if-eqz v9, :cond_5

    .line 179
    const-string v9, "NetworkMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connectivity status changed to ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsAvailable:Z

    if-eqz v11, :cond_7

    const-string v11, "CONNTECTED"

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "wifi: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mobile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " streamOnlyOnWifi: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_5
    invoke-direct {p0}, Lcom/google/android/music/dl/NetworkMonitor;->resetBitrate()V

    .line 186
    invoke-direct {p0, v4}, Lcom/google/android/music/dl/NetworkMonitor;->notifyListenersStremabilityChanged(Z)V

    .line 196
    .end local v1           #isConnected:Z
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    .end local v3           #networkType:I
    .end local v4           #newIsAvail:Z
    .end local v5           #noDataAvailable:Z
    .end local v6           #streamOnlyOnWifi:Z
    .end local v7           #typeName:Ljava/lang/String;
    :cond_6
    :goto_5
    monitor-exit v8

    goto :goto_3

    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 179
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #isConnected:Z
    .restart local v2       #netInfo:Landroid/net/NetworkInfo;
    .restart local v3       #networkType:I
    .restart local v4       #newIsAvail:Z
    .restart local v5       #noDataAvailable:Z
    .restart local v6       #streamOnlyOnWifi:Z
    .restart local v7       #typeName:Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v11, "NOT CONNECTED"

    goto :goto_4

    .line 188
    .end local v1           #isConnected:Z
    .end local v4           #newIsAvail:Z
    .end local v5           #noDataAvailable:Z
    .end local v6           #streamOnlyOnWifi:Z
    :cond_8
    sget-boolean v9, Lcom/google/android/music/dl/NetworkMonitor;->LOGV:Z

    if-eqz v9, :cond_6

    .line 189
    const-string v9, "NetworkMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignore following network type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") - action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 194
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    .end local v3           #networkType:I
    .end local v7           #typeName:Ljava/lang/String;
    :cond_9
    const-string v9, "NetworkMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 292
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 293
    .local v0, hasStreamingAccount:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 294
    invoke-direct {p0}, Lcom/google/android/music/dl/NetworkMonitor;->startListening()V

    .line 299
    :goto_1
    if-eqz v0, :cond_0

    .line 300
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStateRecievedLock:Ljava/lang/Object;

    monitor-enter v3

    .line 301
    :try_start_0
    iget-object v4, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyOnWifi()Z

    move-result v2

    .line 302
    .local v2, streamOnlyOnWifi:Z
    if-eqz v2, :cond_3

    iget-boolean v4, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    move v1, v4

    .line 304
    .local v1, newIsAvail:Z
    :goto_2
    iget-boolean v4, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsAvailable:Z

    if-ne v1, v4, :cond_4

    .line 306
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .end local v1           #newIsAvail:Z
    .end local v2           #streamOnlyOnWifi:Z
    :cond_0
    :goto_3
    return-void

    .line 292
    .end local v0           #hasStreamingAccount:Z
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 296
    .restart local v0       #hasStreamingAccount:Z
    :cond_2
    invoke-direct {p0}, Lcom/google/android/music/dl/NetworkMonitor;->stopListening()V

    goto :goto_1

    .line 302
    .restart local v2       #streamOnlyOnWifi:Z
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/dl/NetworkMonitor;->isConnected()Z

    move-result v4

    move v1, v4

    goto :goto_2

    .line 308
    .restart local v1       #newIsAvail:Z
    :cond_4
    iput-boolean v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsAvailable:Z

    .line 310
    invoke-direct {p0, v1}, Lcom/google/android/music/dl/NetworkMonitor;->notifyListenersStremabilityChanged(Z)V

    .line 311
    monitor-exit v3

    goto :goto_3

    .end local v1           #newIsAvail:Z
    .end local v2           #streamOnlyOnWifi:Z
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public registerNetworkChangedListener(Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 395
    monitor-exit v0

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 321
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterNetworkChangedListener(Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 399
    iget-object v2, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Ljava/util/LinkedList;

    monitor-enter v2

    .line 400
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 402
    .end local p0
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;

    .line 404
    .local v1, possibleRm:Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;
    if-nez v1, :cond_1

    .line 405
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 411
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;>;"
    .end local v1           #possibleRm:Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 406
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;>;"
    .restart local v1       #possibleRm:Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;
    :cond_1
    if-ne v1, p1, :cond_0

    .line 407
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 408
    monitor-exit v2

    .line 412
    .end local v1           #possibleRm:Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;
    :goto_1
    return-void

    .line 411
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public unregisterStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 325
    iget-object v2, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Ljava/util/LinkedList;

    monitor-enter v2

    .line 326
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 328
    .end local p0
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;

    .line 330
    .local v1, possibleRm:Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;
    if-nez v1, :cond_1

    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 337
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;>;"
    .end local v1           #possibleRm:Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 332
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;>;"
    .restart local v1       #possibleRm:Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;
    :cond_1
    if-ne v1, p1, :cond_0

    .line 333
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 334
    monitor-exit v2

    .line 338
    .end local v1           #possibleRm:Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;
    :goto_1
    return-void

    .line 337
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
