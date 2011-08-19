.class public final Lcom/android/settings/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# static fields
.field private static sInstance:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# instance fields
.field private final mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private final mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

.field private mForegroundActivity:Landroid/content/Context;

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V
    .locals 4
    .parameter "adapter"
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 67
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 68
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    .line 70
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 72
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 4
    .parameter "context"

    .prologue
    .line 50
    const-class v2, Lcom/android/settings/bluetooth/LocalBluetoothManager;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_1

    .line 51
    invoke-static {}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 52
    .local v0, adapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    if-nez v0, :cond_0

    .line 53
    const/4 v3, 0x0

    .line 60
    .end local v0           #adapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    :goto_0
    monitor-exit v2

    return-object v3

    .line 56
    .restart local v0       #adapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    .local v1, appContext:Landroid/content/Context;
    new-instance v3, Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-direct {v3, v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V

    sput-object v3, Lcom/android/settings/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 60
    .end local v0           #adapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .end local v1           #appContext:Landroid/content/Context;
    :cond_1
    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method


# virtual methods
.method public getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized setForegroundActivity(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 87
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 88
    :try_start_0
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to non-null context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
