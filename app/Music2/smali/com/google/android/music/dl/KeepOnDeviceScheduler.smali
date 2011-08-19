.class public Lcom/google/android/music/dl/KeepOnDeviceScheduler;
.super Ljava/lang/Object;
.source "KeepOnDeviceScheduler.java"

# interfaces
.implements Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;
.implements Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MAX_SUCCESSIVE_PASSIVE_DOWNLOAD_FAILURES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KeepOnScheduler"


# instance fields
.field private final mBufferProgress:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/google/android/music/dl/BufferProgress;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private final mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

.field private final mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

.field private mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessivePassiveFailures:I

.field private mWifiAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "KeepOnScheduler"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Lcom/google/android/music/dl/BufferProgress;)V
    .locals 2
    .parameter "context"
    .parameter "bufferProgress"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    .line 47
    iput-boolean v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mEnabled:Z

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mStateChangedListeners:Ljava/util/List;

    .line 211
    new-instance v0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;-><init>(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 59
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mBufferProgress:Ljava/lang/ref/SoftReference;

    .line 62
    invoke-virtual {p2, p0}, Lcom/google/android/music/dl/BufferProgress;->addVerboseProgressListener(Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;)V

    .line 63
    invoke-static {p1}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 64
    invoke-static {p1}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    .line 65
    new-instance v0, Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;-><init>(Landroid/app/Service;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    .line 67
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/NetworkMonitor;->registerNetworkChangedListener(Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 69
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledState()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledState()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledStateAsync()V

    return-void
.end method

.method private notifyStateChanged(Z)V
    .locals 5
    .parameter "notifyWifiLost"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->isEnabled()Z

    move-result v1

    .line 222
    .local v1, isEnabled:Z
    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-virtual {p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->isDisabledFromExcessiveErrors()Z

    move-result v4

    invoke-virtual {v3, v1, v4, p1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->notifyEnabledStateChanged(ZZZ)V

    .line 224
    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mStateChangedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;

    .line 225
    .local v2, listener:Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;
    invoke-interface {v2, v1}, Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;->notifyEnabledStateChanged(Z)V

    goto :goto_0

    .line 227
    .end local v2           #listener:Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;
    :cond_0
    return-void
.end method

.method private refreshEnabledState()V
    .locals 3

    .prologue
    .line 92
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-virtual {v2}, Lcom/google/android/music/dl/NetworkMonitor;->hasWifiConnection()Z

    move-result v1

    .line 93
    .local v1, wifiAvailable:Z
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-virtual {v2}, Lcom/google/android/music/dl/NetworkMonitor;->hasMobileConnection()Z

    move-result v0

    .line 94
    .local v0, mobileAvailable:Z
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledState(ZZ)V

    .line 95
    return-void
.end method

.method private refreshEnabledState(ZZ)V
    .locals 4
    .parameter "mobileOn"
    .parameter "wifiOn"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    iget-boolean v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mWifiAvailable:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    move v0, v3

    .line 99
    .local v0, notifyWifiLost:Z
    :goto_0
    iput-boolean p2, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mWifiAvailable:Z

    .line 100
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineDLOnlyOnWifi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-direct {p0, p2, v0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->setEnabled(ZZ)V

    .line 105
    :goto_1
    return-void

    .end local v0           #notifyWifiLost:Z
    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    .line 103
    .restart local v0       #notifyWifiLost:Z
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move v1, v3

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->setEnabled(ZZ)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private refreshEnabledStateAsync()V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/dl/KeepOnDeviceScheduler$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler$1;-><init>(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method private setEnabled(ZZ)V
    .locals 3
    .parameter "enabled"
    .parameter "notifyWifiLost"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mEnabled:Z

    if-ne p1, v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-boolean v0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->LOGV:Z

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "KeepOnScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Predictive scheduler turned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_3

    const-string v2, "on"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mEnabled:Z

    .line 115
    if-eqz p1, :cond_2

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    .line 118
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->notifyStateChanged(Z)V

    goto :goto_0

    .line 112
    :cond_3
    const-string v2, "off"

    goto :goto_1
.end method


# virtual methods
.method public addStateChangedListener(Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;)V
    .locals 1
    .parameter "stateChangedListener"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public getNextDownload()[J
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 144
    iget-boolean v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mEnabled:Z

    if-nez v1, :cond_1

    .line 145
    sget-boolean v1, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->LOGV:Z

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "KeepOnScheduler"

    const-string v2, "Not doing predictive downloading because KeepOnScheduler is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v5

    .line 165
    :goto_0
    return-object v1

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    const-string v2, "1"

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/music/store/Store;->getNeedToKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object v0

    .line 152
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 153
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-virtual {v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->notifyAllDownloadsFinished()V

    move-object v1, v5

    .line 154
    goto :goto_0

    .line 158
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-virtual {v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->notifyDownloadsStarting()V

    .line 160
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 162
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-virtual {v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->notifyAllDownloadsFinished()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getTotalKeepOn()Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 194
    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Size"

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4, v6, v8}, Lcom/google/android/music/store/Store;->getKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 196
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    move-object v3, v6

    .line 207
    :goto_0
    return-object v3

    .line 200
    :cond_0
    const-wide/16 v1, 0x0

    .line 202
    .local v1, totalSize:J
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_1

    .line 205
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public getTotalNeedToKeepOn()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 176
    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Size"

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4, v6}, Lcom/google/android/music/store/Store;->getNeedToKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object v0

    .line 178
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    move-object v3, v6

    .line 189
    :goto_0
    return-object v3

    .line 182
    :cond_0
    const-wide/16 v1, 0x0

    .line 184
    .local v1, totalSize:J
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_1

    .line 187
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public isDisabledFromExcessiveErrors()Z
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mEnabled:Z

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-virtual {v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->onDestroy()V

    .line 74
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mBufferProgress:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/BufferProgress;

    .line 75
    .local v0, bufferProgress:Lcom/google/android/music/dl/BufferProgress;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/BufferProgress;->removeVerboseProgressListener(Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;)V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 79
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-virtual {v1, p0}, Lcom/google/android/music/dl/NetworkMonitor;->unregisterNetworkChangedListener(Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;)V

    .line 80
    return-void
.end method

.method public onDownloadProgress(Lcom/google/android/music/dl/DownloadOrder;)V
    .locals 4
    .parameter "order"

    .prologue
    const/4 v3, 0x0

    .line 230
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    .line 231
    .local v0, downloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    iget-object v1, p1, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->isFinishedStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_1

    .line 233
    iget v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    .line 234
    iget v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 235
    const-string v1, "KeepOnScheduler"

    const-string v2, "Experiencing exessive failures, turning off KeepOn scheduler"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0, v3, v3}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->setEnabled(ZZ)V

    .line 244
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-virtual {v1, p1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->notifyDownloadProgress(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 245
    return-void

    .line 241
    :cond_1
    iput v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    goto :goto_0
.end method

.method public onNetworkChanged(ZZ)V
    .locals 0
    .parameter "mobileConnected"
    .parameter "wifiConnected"

    .prologue
    .line 254
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledState(ZZ)V

    .line 255
    return-void
.end method

.method public removeStateChangedListener(Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;)V
    .locals 1
    .parameter "stateChangedListener"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method
