.class public Lcom/android/server/asus/DockManagerService;
.super Landroid/app/asus/IDockManager$Stub;
.source "DockManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;,
        Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;,
        Lcom/android/server/asus/DockManagerService$FirmwareData;
    }
.end annotation


# static fields
.field private static final ACTION_CLOSE_DIALOG:Ljava/lang/String; = "com.asus.dock.action.COSE_DIALOG"

.field private static final ACTION_DOCK_VERSION:Ljava/lang/String; = "com.asus.dock.action.VERSION"

.field private static final ACTION_UPDATE_FIRMWARE:Ljava/lang/String; = "com.asus.dock.action.UPDATE_FIRMWARE"

.field private static final DEBUG:Z = true

.field private static final DEFAULT_FIRMWARE_DIR:Ljava/lang/String; = "/system/etc/firmware/EC"

.field private static final DEFAULT_FIRMWARE_UPDATE_CFG:Ljava/lang/String; = "/system/etc/firmware/EC/FU.cfg"

.field private static final DEFAULT_FIRMWARE_UPDATE_CFG_D:Ljava/lang/String; = "/system/etc/firmware/EC/FU-d.cfg"

.field private static final EXTRA_FIRMWARE_CFG:Ljava/lang/String; = "fw_cfg"

.field private static final EXTRA_FIRMWARE_CFG_D:Ljava/lang/String; = "fw_cfg_d"

.field private static final EXTRA_FIRMWARE_ROM:Ljava/lang/String; = "fw_rom"

.field private static final FIRMWARE_DIR:Ljava/lang/String; = null

.field private static final FIRMWARE_HAS_UPDATE:I = 0x0

.field private static final FIRMWARE_NO_UPDATE:I = 0x1

.field private static final FIRMWARE_UNKNOW:I = -0x3e8

.field private static final FIRMWARE_UPDATER:Ljava/lang/String; = "/system/bin/fu"

.field private static final FIRMWARE_UPDATE_CFG:Ljava/lang/String; = null

.field private static final FIRMWARE_UPDATE_CFG_D:Ljava/lang/String; = null

.field private static final FIRMWARE_UPDATE_FAIL:I = 0x1

.field private static final FIRMWARE_UPDATE_INTERRUPT:I = 0x2

.field private static final FIRMWARE_UPDATE_NOT_VALID:I = 0x3

.field private static final FIRMWARE_UPDATE_SUCCESS:I = 0x0

.field private static final FW_UPDATE_PROGRESS:Ljava/lang/String; = "/data/fw_update_progress"

.field private static final MSG_CHECK_FIRMWARE:I = 0x1

.field private static final MSG_SHOW_UPDATE_FAIL:I = 0x5

.field private static final MSG_SHOW_UPDATE_INTERRUPT:I = 0x7

.field private static final MSG_SHOW_UPDATE_SUCCESS:I = 0x6

.field private static final MSG_UPDATE_DOCK_BATTERY:I = 0x4

.field private static final MSG_UPDATE_FIRMWARE:I = 0x2

.field private static final MSG_UPDATE_FIRMWARE_PROGRESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DockManagerService"


# instance fields
.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBatterySavingObserver:Landroid/database/ContentObserver;

.field private final mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mCharging:Z

.field private mContext:Landroid/content/Context;

.field private mDockBatteryLevel:I

.field private mDockBatterySavingMode:I

.field private mDockBatteryStatus:I

.field private final mDockReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private mFirmwareUpdateHandler:Landroid/os/Handler;

.field private mFirmwareUpdateThread:Landroid/os/HandlerThread;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyboardModeKeepsScreenOn:Z

.field private mLastDockState:I

.field final mLock:Ljava/lang/Object;

.field private final mModelName:Ljava/lang/String;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSystemReady:Z

.field private final mUpdateFirmwareReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/asus/DockManagerService;->FIRMWARE_DIR:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/asus/DockManagerService;->FIRMWARE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/FU.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/asus/DockManagerService;->FIRMWARE_UPDATE_CFG:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/asus/DockManagerService;->FIRMWARE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/FU-d.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/asus/DockManagerService;->FIRMWARE_UPDATE_CFG_D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 165
    invoke-direct {p0}, Landroid/app/asus/IDockManager$Stub;-><init>()V

    .line 87
    iput-boolean v9, p0, Lcom/android/server/asus/DockManagerService;->mKeyboardModeKeepsScreenOn:Z

    .line 105
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/asus/DockManagerService;->mLock:Ljava/lang/Object;

    .line 110
    iput-boolean v9, p0, Lcom/android/server/asus/DockManagerService;->mCharging:Z

    .line 111
    iput v9, p0, Lcom/android/server/asus/DockManagerService;->mDockState:I

    .line 112
    iput v9, p0, Lcom/android/server/asus/DockManagerService;->mLastDockState:I

    .line 113
    const/16 v5, 0x64

    iput v5, p0, Lcom/android/server/asus/DockManagerService;->mDockBatteryLevel:I

    .line 114
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/server/asus/DockManagerService;->mDockBatteryStatus:I

    .line 119
    invoke-static {}, Landroid/os/Environment;->getEpadModelName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/asus/DockManagerService;->mModelName:Ljava/lang/String;

    .line 132
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/asus/DockManagerService;->mDockBatterySavingMode:I

    .line 213
    new-instance v5, Lcom/android/server/asus/DockManagerService$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/server/asus/DockManagerService$2;-><init>(Lcom/android/server/asus/DockManagerService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/asus/DockManagerService;->mBatterySavingObserver:Landroid/database/ContentObserver;

    .line 221
    new-instance v5, Lcom/android/server/asus/DockManagerService$3;

    invoke-direct {v5, p0}, Lcom/android/server/asus/DockManagerService$3;-><init>(Lcom/android/server/asus/DockManagerService;)V

    iput-object v5, p0, Lcom/android/server/asus/DockManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    new-instance v5, Lcom/android/server/asus/DockManagerService$4;

    invoke-direct {v5, p0}, Lcom/android/server/asus/DockManagerService$4;-><init>(Lcom/android/server/asus/DockManagerService;)V

    iput-object v5, p0, Lcom/android/server/asus/DockManagerService;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v5, Lcom/android/server/asus/DockManagerService$5;

    invoke-direct {v5, p0}, Lcom/android/server/asus/DockManagerService$5;-><init>(Lcom/android/server/asus/DockManagerService;)V

    iput-object v5, p0, Lcom/android/server/asus/DockManagerService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    new-instance v5, Lcom/android/server/asus/DockManagerService$6;

    invoke-direct {v5, p0}, Lcom/android/server/asus/DockManagerService$6;-><init>(Lcom/android/server/asus/DockManagerService;)V

    iput-object v5, p0, Lcom/android/server/asus/DockManagerService;->mUpdateFirmwareReceiver:Landroid/content/BroadcastReceiver;

    .line 400
    new-instance v5, Lcom/android/server/asus/DockManagerService$7;

    invoke-direct {v5, p0}, Lcom/android/server/asus/DockManagerService$7;-><init>(Lcom/android/server/asus/DockManagerService;)V

    iput-object v5, p0, Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;

    .line 166
    const-string v5, "DockManagerService"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-object p1, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    .line 169
    const-string v5, "asus_dock"

    invoke-static {v5, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 171
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 175
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const-string v5, "asus.hardware.dock"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 176
    .local v0, hasDockFeature:Z
    const-string v5, "DockManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasDockFeature:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-eqz v0, :cond_fb

    .line 178
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mDockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 180
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_ae

    .line 182
    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 184
    .local v4, state:I
    invoke-direct {p0, v4}, Lcom/android/server/asus/DockManagerService;->updateDockState(I)V

    .line 188
    .end local v4           #state:I
    :cond_ae
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dock_power_saving"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/asus/DockManagerService;->mBatterySavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 196
    .end local v1           #intent:Landroid/content/Intent;
    :goto_bf
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mUpdateFirmwareReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.asus.dock.action.UPDATE_FIRMWARE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    new-instance v5, Lcom/android/server/asus/DockManagerService$1;

    const-string v6, "DockManagerService.mFirmwareUpdateThread"

    invoke-direct {v5, p0, v6}, Lcom/android/server/asus/DockManagerService$1;-><init>(Lcom/android/server/asus/DockManagerService;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/asus/DockManagerService;->mFirmwareUpdateThread:Landroid/os/HandlerThread;

    .line 206
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mFirmwareUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 208
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 209
    .local v3, powerManager:Landroid/os/PowerManager;
    const/16 v5, 0x1a

    const-string v6, "DockManagerService.UpdateWakeLock"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/asus/DockManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 210
    const v5, 0x2000001a

    const-string v6, "DockManagerService.WakeLock"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/asus/DockManagerService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 211
    return-void

    .line 192
    .end local v3           #powerManager:Landroid/os/PowerManager;
    :cond_fb
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_bf
.end method

.method static synthetic access$002(Lcom/android/server/asus/DockManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/asus/DockManagerService;->mFirmwareUpdateHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/asus/DockManagerService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/asus/DockManagerService;->updateBatterySavingMode(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/asus/DockManagerService;Lcom/android/server/asus/DockManagerService$FirmwareData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/asus/DockManagerService;->handleUpdateFirmware(Lcom/android/server/asus/DockManagerService$FirmwareData;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/asus/DockManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/asus/DockManagerService;->handleUpdateFirmwareProgress()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/asus/DockManagerService;Lcom/android/server/asus/DockManagerService$FirmwareData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/asus/DockManagerService;->handleUpdateFail(Lcom/android/server/asus/DockManagerService$FirmwareData;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/asus/DockManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/asus/DockManagerService;->handleUpdateSuccess()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/asus/DockManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/asus/DockManagerService;->handleUpdateInterrupt()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/asus/DockManagerService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/asus/DockManagerService;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/asus/DockManagerService;->shellCmd(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/asus/DockManagerService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/asus/DockManagerService;->updateProgressNotification(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/asus/DockManagerService;Lcom/android/server/asus/DockManagerService$FirmwareData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/asus/DockManagerService;->beginUpdateFirmware(Lcom/android/server/asus/DockManagerService$FirmwareData;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/asus/DockManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/asus/DockManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/asus/DockManagerService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/asus/DockManagerService;->updateDockBatteryState(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/asus/DockManagerService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/asus/DockManagerService;->updateDockState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/asus/DockManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/asus/DockManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/asus/DockManagerService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/asus/DockManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/asus/DockManagerService;->sendDockVersionIntent()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/asus/DockManagerService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/asus/DockManagerService;->handleCheckFirmware(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/asus/DockManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/asus/DockManagerService;->handleUpdateDockBattery()V

    return-void
.end method

.method private adjustStatusBarDockLocked()V
    .registers 16

    .prologue
    const/4 v14, 0x2

    const v13, 0x10202bf

    const v12, 0x10202be

    const/4 v11, 0x4

    .line 343
    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v6, :cond_18

    .line 344
    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 348
    :cond_18
    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v6, :cond_e5

    .line 349
    const v4, 0x10800b6

    .line 350
    .local v4, resourceId:I
    iget v6, p0, Lcom/android/server/asus/DockManagerService;->mDockState:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_f2

    .line 353
    const-string v6, "DockManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Display mobile dock notificaiton, level:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/asus/DockManagerService;->mDockBatteryLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/asus/DockManagerService;->mDockBatteryStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x109008a

    invoke-direct {v0, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 357
    .local v0, contentView:Landroid/widget/RemoteViews;
    const v6, 0x1020006

    invoke-virtual {v0, v6, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 358
    const v6, 0x1020016

    iget-object v7, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    const v8, 0x104040a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 359
    const v6, 0x1020046

    iget-object v7, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    const v8, 0x104040b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 360
    iget v6, p0, Lcom/android/server/asus/DockManagerService;->mDockBatteryLevel:I

    const/16 v7, 0x64

    if-gt v6, v7, :cond_e6

    iget v6, p0, Lcom/android/server/asus/DockManagerService;->mDockBatteryLevel:I

    if-ltz v6, :cond_e6

    .line 361
    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10403f7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/asus/DockManagerService;->mDockBatteryLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v13, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 363
    const v2, 0x10805a7

    .line 364
    .local v2, icon:I
    iget v6, p0, Lcom/android/server/asus/DockManagerService;->mDockBatteryStatus:I

    if-ne v6, v14, :cond_a9

    .line 365
    const v2, 0x10805a8

    .line 367
    :cond_a9
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 368
    .local v5, v:Landroid/widget/ImageView;
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    iget v6, p0, Lcom/android/server/asus/DockManagerService;->mDockBatteryLevel:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 370
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 371
    .local v1, d:Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 378
    .end local v2           #icon:I
    .end local v5           #v:Landroid/widget/ImageView;
    :goto_c9

    .line 379

    .line 381
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 382
    .local v3, n:Landroid/app/Notification;
    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 383
    iput-object v0, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 384
    iput v11, v3, Landroid/app/Notification;->defaults:I

    .line 385
    iput v14, v3, Landroid/app/Notification;->flags:I

    .line 386
    const-wide/16 v6, 0x0

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    .line 387
    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 392
    .end local v0           #contentView:Landroid/widget/RemoteViews;
    .end local v3           #n:Landroid/app/Notification;
    .end local v4           #resourceId:I
    :cond_e5
    :goto_e5
    return-void

    .line 373
    .restart local v0       #contentView:Landroid/widget/RemoteViews;
    .restart local v4       #resourceId:I
    :cond_e6
    const-string v6, "0"

    invoke-virtual {v0, v13, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 374
    const v6, 0x10804d8

    invoke-virtual {v0, v12, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_c9

    .line 389
    .end local v0           #contentView:Landroid/widget/RemoteViews;
    :cond_f2
    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_e5
.end method

.method private beginUpdateFirmware(Lcom/android/server/asus/DockManagerService$FirmwareData;)V
    .registers 7
    .parameter "fw"

    .prologue
    .line 800
    const-string v1, "DockManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginUpdateFirmware, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 804
    new-instance v0, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;-><init>(Lcom/android/server/asus/DockManagerService;Lcom/android/server/asus/DockManagerService$FirmwareData;)V

    .line 805
    .local v0, fw_r:Lcom/android/server/asus/DockManagerService$FirmwareUpdateRunnable;
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService;->mFirmwareUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 806
    return-void
.end method

.method private checkFirmware()Lcom/android/server/asus/DockManagerService$FirmwareData;
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 541
    const-string v9, "DockManagerService"

    const-string v10, "checkFirmware"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v6, Lcom/android/server/asus/DockManagerService$FirmwareData;

    invoke-direct {v6, p0}, Lcom/android/server/asus/DockManagerService$FirmwareData;-><init>(Lcom/android/server/asus/DockManagerService;)V

    .line 546
    .local v6, fw:Lcom/android/server/asus/DockManagerService$FirmwareData;
    new-instance v0, Ljava/io/File;

    sget-object v9, Lcom/android/server/asus/DockManagerService;->FIRMWARE_UPDATE_CFG:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, cfg:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/etc/firmware/EC/FU.cfg"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    .local v3, default_cfg:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_32

    .line 549
    sget-object v9, Lcom/android/server/asus/DockManagerService;->FIRMWARE_UPDATE_CFG:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/server/asus/DockManagerService$FirmwareData;->cfg:Ljava/lang/String;

    .line 553
    :cond_25
    :goto_25
    iget-object v9, v6, Lcom/android/server/asus/DockManagerService$FirmwareData;->cfg:Ljava/lang/String;

    if-nez v9, :cond_3d

    .line 554
    const-string v9, "DockManagerService"

    const-string v10, "checkFirmwareLock, no cfg file found."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v12

    .line 602
    :goto_31
    return-object v9

    .line 550
    :cond_32
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_25

    .line 551
    const-string v9, "/system/etc/firmware/EC/FU.cfg"

    iput-object v9, v6, Lcom/android/server/asus/DockManagerService$FirmwareData;->cfg:Ljava/lang/String;

    goto :goto_25

    .line 559
    :cond_3d
    new-instance v1, Ljava/io/File;

    sget-object v9, Lcom/android/server/asus/DockManagerService;->FIRMWARE_UPDATE_CFG_D:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v1, cfg_d:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v9, "/system/etc/firmware/EC/FU-d.cfg"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    .local v4, default_cfg_d:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_62

    .line 562
    sget-object v9, Lcom/android/server/asus/DockManagerService;->FIRMWARE_UPDATE_CFG_D:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/server/asus/DockManagerService$FirmwareData;->cfg_d:Ljava/lang/String;

    .line 566
    :cond_55
    :goto_55
    iget-object v9, v6, Lcom/android/server/asus/DockManagerService$FirmwareData;->cfg_d:Ljava/lang/String;

    if-nez v9, :cond_6d

    .line 567
    const-string v9, "DockManagerService"

    const-string v10, "checkFirmwareLock, no cfg-d file found."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v12

    .line 568
    goto :goto_31

    .line 563
    :cond_62
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_55

    .line 564
    const-string v9, "/system/etc/firmware/EC/FU-d.cfg"

    iput-object v9, v6, Lcom/android/server/asus/DockManagerService$FirmwareData;->cfg_d:Ljava/lang/String;

    goto :goto_55

    .line 572
    :cond_6d
    sget-object v9, Lcom/android/server/asus/DockManagerService;->FIRMWARE_DIR:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/asus/DockManagerService;->getRomFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 573
    .local v8, rom:Ljava/lang/String;
    const-string v9, "/system/etc/firmware/EC"

    invoke-direct {p0, v9}, Lcom/android/server/asus/DockManagerService;->getRomFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 574
    .local v5, default_rom:Ljava/lang/String;
    const-string v9, "DockManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rom:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " default_rom:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-eqz v8, :cond_ac

    .line 576
    iput-object v8, v6, Lcom/android/server/asus/DockManagerService$FirmwareData;->rom:Ljava/lang/String;

    .line 580
    :cond_9f
    :goto_9f
    iget-object v9, v6, Lcom/android/server/asus/DockManagerService$FirmwareData;->rom:Ljava/lang/String;

    if-nez v9, :cond_b1

    .line 581
    const-string v9, "DockManagerService"

    const-string v10, "checkFirmwareLock, no EC rom found."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v12

    .line 582
    goto :goto_31

    .line 577
    :cond_ac
    if-eqz v5, :cond_9f

    .line 578
    iput-object v5, v6, Lcom/android/server/asus/DockManagerService$FirmwareData;->rom:Ljava/lang/String;

    goto :goto_9f

    .line 586
    :cond_b1
    invoke-virtual {v6}, Lcom/android/server/asus/DockManagerService$FirmwareData;->getQueryCommand()Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, cmd:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/asus/DockManagerService;->shellCmd(Ljava/lang/String;)I

    move-result v7

    .line 588
    .local v7, ret:I
    const-string v9, "DockManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "execute cmd:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " return:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    if-eqz v7, :cond_113

    iget-object v9, v6, Lcom/android/server/asus/DockManagerService$FirmwareData;->rom:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_113

    if-eqz v5, :cond_113

    .line 593
    iput-object v5, v6, Lcom/android/server/asus/DockManagerService$FirmwareData;->rom:Ljava/lang/String;

    .line 594
    invoke-virtual {v6}, Lcom/android/server/asus/DockManagerService$FirmwareData;->getQueryCommand()Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-direct {p0, v2}, Lcom/android/server/asus/DockManagerService;->shellCmd(Ljava/lang/String;)I

    move-result v7

    .line 596
    const-string v9, "DockManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "execute cmd:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " return:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_113
    if-nez v7, :cond_118

    move-object v9, v6

    .line 600
    goto/16 :goto_31

    :cond_118
    move-object v9, v12

    .line 602
    goto/16 :goto_31
.end method

.method private createAlertDialog(Lcom/android/server/asus/DockManagerService$FirmwareData;Z)V
    .registers 11
    .parameter "fw"
    .parameter "fail"

    .prologue
    .line 837
    const-string v4, "DockManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createAlertDialog, fw:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v4, p0, Lcom/android/server/asus/DockManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 842
    const v3, 0x1040418

    .line 843
    .local v3, title:I
    if-eqz p2, :cond_95

    .line 844
    const v2, 0x104041c

    .line 848
    .local v2, message:I
    :goto_2d
    :try_start_2d
    new-instance v0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;

    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v5, v6}, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 849
    .local v0, closer:Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    new-instance v7, Lcom/android/server/asus/DockManagerService$9;

    invoke-direct {v7, p0, p1}, Lcom/android/server/asus/DockManagerService$9;-><init>(Lcom/android/server/asus/DockManagerService;Lcom/android/server/asus/DockManagerService$FirmwareData;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    new-instance v7, Lcom/android/server/asus/DockManagerService$8;

    invoke-direct {v7, p0, v0}, Lcom/android/server/asus/DockManagerService$8;-><init>(Lcom/android/server/asus/DockManagerService;Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 867
    .local v1, dialog:Landroid/app/AlertDialog;
    iput-object v1, v0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 868
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;->check:Z

    .line 869
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 870
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 871
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_90

    .line 873
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 875
    :cond_90
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 876
    monitor-exit v4

    .line 877
    return-void

    .line 846
    .end local v0           #closer:Lcom/android/server/asus/DockManagerService$CloseDialogReceiver;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:I
    :cond_95
    const v2, 0x104041b

    .restart local v2       #message:I
    goto :goto_2d

    .line 876
    :catchall_99
    move-exception v5

    monitor-exit v4
    :try_end_9b
    .catchall {:try_start_2d .. :try_end_9b} :catchall_99

    throw v5
.end method

.method private createNotification(IIIILandroid/content/Intent;)Landroid/app/Notification;
    .registers 13
    .parameter "iconId"
    .parameter "titleId"
    .parameter "messageId"
    .parameter "flags"
    .parameter "intent"

    .prologue
    .line 606
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 607
    .local v0, n:Landroid/app/Notification;
    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 608
    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 609
    iput p4, v0, Landroid/app/Notification;->flags:I

    .line 610
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 611
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, p5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 617
    return-object v0
.end method

.method private getRomFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "path"

    .prologue
    const/4 v8, 0x0

    .line 505
    new-instance v4, Ljava/io/File;

    const-string v5, ""

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .local v4, romDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 507
    :cond_14
    const-string v5, "DockManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 537
    :goto_2d
    return-object v5

    .line 510
    :cond_2e
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_4e

    .line 511
    const-string v5, "DockManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 512
    goto :goto_2d

    .line 515
    :cond_4e
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_54
    if-ge v2, v3, :cond_10d

    aget-object v1, v0, v2

    .line 516
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_89

    .line 517
    const-string v5, "DockManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip folder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_86
    :goto_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 521
    :cond_89
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".rom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_be

    .line 522
    const-string v5, "DockManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-rom file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 526
    :cond_be
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_e3

    .line 527
    const-string v5, "DockManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rom file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 531
    :cond_e3
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mModelName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 532
    const-string v5, "DockManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get the rom file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2d

    .end local v1           #f:Ljava/io/File;
    :cond_10d
    move-object v5, v8

    .line 537
    goto/16 :goto_2d
.end method

.method private getUpdatingProgress()I
    .registers 8

    .prologue
    const/16 v5, 0x200

    .line 697
    new-array v0, v5, [C

    .line 698
    .local v0, buffer:[C
    const/4 v1, 0x0

    .line 700
    .local v1, count:I
    :try_start_5
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/data/fw_update_progress"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 701
    .local v3, file:Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v6, 0x200

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 702
    .local v4, len:I
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 703
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_27} :catch_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_33

    move-result v1

    .line 709
    .end local v3           #file:Ljava/io/FileReader;
    .end local v4           #len:I
    :goto_28
    return v1

    .line 704
    :catch_29
    move-exception v5

    move-object v2, v5

    .line 705
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v5, "DockManagerService"

    const-string v6, "getUpdateProgress file not fould"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 706
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_33
    move-exception v5

    move-object v2, v5

    .line 707
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "DockManagerService"

    const-string v6, ""

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method private getUpdatingText(IJ)Ljava/lang/String;
    .registers 11
    .parameter "total"
    .parameter "current"

    .prologue
    .line 686
    if-gtz p1, :cond_5

    .line 687
    const-string v3, ""

    .line 693
    :goto_4
    return-object v3

    .line 689
    :cond_5
    const-wide/16 v3, 0x64

    mul-long/2addr v3, p2

    int-to-long v5, p1

    div-long v0, v3, v5

    .line 690
    .local v0, progress:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 692
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method private handleCheckFirmware(Z)V
    .registers 5
    .parameter "check"

    .prologue
    .line 434
    const-string v0, "DockManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCheckFirmware check:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    if-eqz p1, :cond_22

    .line 437
    invoke-direct {p0}, Lcom/android/server/asus/DockManagerService;->checkFirmware()Lcom/android/server/asus/DockManagerService$FirmwareData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/asus/DockManagerService;->notificationForNewFirmware(Lcom/android/server/asus/DockManagerService$FirmwareData;)V

    .line 449
    :goto_21
    return-void

    .line 440
    :cond_22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/asus/DockManagerService;->notificationForNewFirmware(Lcom/android/server/asus/DockManagerService$FirmwareData;)V

    .line 443
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.dock.action.COSE_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 446
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/asus/DockManagerService;->updateProgressNotification(Z)V

    goto :goto_21
.end method

.method private handleUpdateDockBattery()V
    .registers 1

    .prologue
    .line 431
    return-void
.end method

.method private handleUpdateFail(Lcom/android/server/asus/DockManagerService$FirmwareData;)V
    .registers 5
    .parameter "fw"

    .prologue
    .line 464
    const-string v0, "DockManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/asus/DockManagerService;->createAlertDialog(Lcom/android/server/asus/DockManagerService$FirmwareData;Z)V

    .line 467
    return-void
.end method

.method private handleUpdateFirmware(Lcom/android/server/asus/DockManagerService$FirmwareData;)V
    .registers 5
    .parameter "fw"

    .prologue
    .line 452
    const-string v0, "DockManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleUpdateFirmware, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/asus/DockManagerService;->createAlertDialog(Lcom/android/server/asus/DockManagerService$FirmwareData;Z)V

    .line 455
    return-void
.end method

.method private handleUpdateFirmwareProgress()V
    .registers 3

    .prologue
    .line 458
    const-string v0, "DockManagerService"

    const-string v1, "handleUpdateFirmwareProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/asus/DockManagerService;->updateProgressNotification(Z)V

    .line 461
    return-void
.end method

.method private handleUpdateInterrupt()V
    .registers 3

    .prologue
    .line 497
    const-string v0, "DockManagerService"

    const-string v1, "handleUpdateInterrupt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/asus/DockManagerService;->notificationForUpdateResult(ZZ)V

    .line 499
    return-void
.end method

.method private handleUpdateSuccess()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 484
    const-string v1, "DockManagerService"

    const-string v2, "handleUpdateSuccess"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-direct {p0, v4, v4}, Lcom/android/server/asus/DockManagerService;->notificationForUpdateResult(ZZ)V

    .line 488
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    const v2, 0x104041d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 489
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 490
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 493
    invoke-direct {p0}, Lcom/android/server/asus/DockManagerService;->sendDockVersionIntent()V

    .line 494
    return-void
.end method

.method private notificationForNewFirmware(Lcom/android/server/asus/DockManagerService$FirmwareData;)V
    .registers 9
    .parameter "fw"

    .prologue
    const/4 v4, 0x0

    .line 624
    const-string v0, "DockManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notificationForNewFirmware, fw:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_29

    .line 627
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 631
    :cond_29
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_67

    .line 632
    const v1, 0x10804b9

    .line 633
    .local v1, iconId:I
    if-eqz p1, :cond_68

    .line 635
    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/android/server/asus/DockManagerService;->notificationForUpdateResult(ZZ)V

    .line 636
    invoke-direct {p0, v4, v4}, Lcom/android/server/asus/DockManagerService;->notificationForUpdateResult(ZZ)V

    .line 639
    new-instance v5, Landroid/content/Intent;

    const-string v0, "com.asus.dock.action.UPDATE_FIRMWARE"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v5, intent:Landroid/content/Intent;
    const-string v0, "fw_rom"

    iget-object v2, p1, Lcom/android/server/asus/DockManagerService$FirmwareData;->rom:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v0, "fw_cfg"

    iget-object v2, p1, Lcom/android/server/asus/DockManagerService$FirmwareData;->cfg:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const-string v0, "fw_cfg_d"

    iget-object v2, p1, Lcom/android/server/asus/DockManagerService$FirmwareData;->cfg_d:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    const v2, 0x1040418

    const v3, 0x1040419

    const/16 v4, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/asus/DockManagerService;->createNotification(IIIILandroid/content/Intent;)Landroid/app/Notification;

    move-result-object v6

    .line 649
    .local v6, n:Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 654
    .end local v1           #iconId:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #n:Landroid/app/Notification;
    :cond_67
    :goto_67
    return-void

    .line 651
    .restart local v1       #iconId:I
    :cond_68
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_67
.end method

.method private notificationForUpdateResult(ZZ)V
    .registers 10
    .parameter "success"
    .parameter "visible"

    .prologue
    .line 657
    const-string v0, "DockManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notificationForUpdateResult visible:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_28

    .line 660
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 664
    :cond_28
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_4a

    .line 666
    const v2, 0x1040418

    .line 667
    .local v2, titleId:I
    if-eqz p1, :cond_4b

    .line 668
    const v1, 0x10804ba

    .line 669
    .local v1, iconId:I
    const v3, 0x104041d

    .line 675
    .local v3, messageId:I
    :goto_37
    if-eqz p2, :cond_52

    .line 676
    const/16 v4, 0x10

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/asus/DockManagerService;->createNotification(IIIILandroid/content/Intent;)Landroid/app/Notification;

    move-result-object v6

    .line 678
    .local v6, n:Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 683
    .end local v1           #iconId:I
    .end local v2           #titleId:I
    .end local v3           #messageId:I
    .end local v6           #n:Landroid/app/Notification;
    :cond_4a
    :goto_4a
    return-void

    .line 671
    .restart local v2       #titleId:I
    :cond_4b
    const v1, 0x10804bb

    .line 672
    .restart local v1       #iconId:I
    const v3, 0x104041e

    .restart local v3       #messageId:I
    goto :goto_37

    .line 680
    :cond_52
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_4a
.end method

.method private sendDockVersionIntent()V
    .registers 6

    .prologue
    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.asus.dock.action.VERSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/asus/DockManagerService;->readDockVersion()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, version:Ljava/lang/String;
    const-string v2, "DockManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " new dock version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-nez v1, :cond_26

    .line 481
    :goto_25
    return-void

    .line 476
    :cond_26
    iget-object v2, p0, Lcom/android/server/asus/DockManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 477
    :try_start_29
    const-string v3, "android.intent.extra.DOCK_STATE"

    iget v4, p0, Lcom/android/server/asus/DockManagerService;->mDockState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    const-string v3, "android.intent.extra.DOCK_NAME"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v3, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 480
    monitor-exit v2

    goto :goto_25

    :catchall_3c
    move-exception v3

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_29 .. :try_end_3e} :catchall_3c

    throw v3
.end method

.method private static native setBatterySavingMode_native(I)V
.end method

.method private shellCmd(Ljava/lang/String;)I
    .registers 8
    .parameter "cmd"

    .prologue
    const/16 v5, -0x3e8

    .line 817
    :try_start_2
    new-instance v1, Landroid/util/ShellCommand;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroid/util/ShellCommand;-><init>(Ljava/lang/String;Z)V

    .line 818
    .local v1, sc:Landroid/util/ShellCommand;
    invoke-virtual {v1}, Landroid/util/ShellCommand;->complete()V

    .line 819
    const-string v2, "DockManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shellCmd stdOut:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/ShellCommand;->getStdout()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {v1}, Landroid/util/ShellCommand;->getRetval()I
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2a} :catch_2c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2a} :catch_55

    move-result v2

    .line 828
    .end local v1           #sc:Landroid/util/ShellCommand;
    :goto_2b
    return v2

    .line 821
    :catch_2c
    move-exception v2

    move-object v0, v2

    .line 822
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "DockManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupted executing \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v2, v5

    .line 824
    goto :goto_2b

    .line 825
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_55
    move-exception v2

    move-object v0, v2

    .line 826
    .local v0, e:Ljava/io/IOException;
    const-string v2, "DockManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem launching \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v5

    .line 828
    goto :goto_2b
.end method

.method private updateBatterySavingMode(Z)V
    .registers 7
    .parameter "force"

    .prologue
    .line 943
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    :try_start_3
    iget v2, p0, Lcom/android/server/asus/DockManagerService;->mDockState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4f

    .line 945
    iget-object v2, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dock_power_saving"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 947
    .local v0, mode:I
    if-nez p1, :cond_1c

    iget v2, p0, Lcom/android/server/asus/DockManagerService;->mDockBatterySavingMode:I

    if-eq v0, v2, :cond_4f

    .line 948
    :cond_1c
    const-string v2, "DockManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBatterySavingMode, mDockBatterySavingMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/asus/DockManagerService;->mDockBatterySavingMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iput v0, p0, Lcom/android/server/asus/DockManagerService;->mDockBatterySavingMode:I

    .line 952
    invoke-static {v0}, Lcom/android/server/asus/DockManagerService;->setBatterySavingMode_native(I)V

    .line 955
    .end local v0           #mode:I
    :cond_4f
    monitor-exit v1

    .line 956
    return-void

    .line 955
    :catchall_51
    move-exception v2

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v2
.end method

.method private updateDockBatteryState(II)V
    .registers 6
    .parameter "newStatus"
    .parameter "newLevel"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_3
    iput p2, p0, Lcom/android/server/asus/DockManagerService;->mDockBatteryLevel:I

    .line 305
    iput p1, p0, Lcom/android/server/asus/DockManagerService;->mDockBatteryStatus:I

    .line 307
    iget-boolean v1, p0, Lcom/android/server/asus/DockManagerService;->mSystemReady:Z

    if-eqz v1, :cond_14

    .line 308
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    invoke-virtual {p0}, Lcom/android/server/asus/DockManagerService;->updateLocked()V

    .line 311
    :cond_14
    monitor-exit v0

    .line 312
    return-void

    .line 311
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private updateDockState(I)V
    .registers 10
    .parameter "newState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 283
    const-string v1, "DockManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDockState, newState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_1d
    iget v2, p0, Lcom/android/server/asus/DockManagerService;->mDockState:I

    if-eq p1, v2, :cond_42

    .line 286
    iput p1, p0, Lcom/android/server/asus/DockManagerService;->mDockState:I

    .line 288
    iget-boolean v2, p0, Lcom/android/server/asus/DockManagerService;->mSystemReady:Z

    if-eqz v2, :cond_42

    .line 290
    iget-object v2, p0, Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/asus/DockManagerService;->mDockState:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_44

    move v4, v6

    :goto_31
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 291
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    invoke-virtual {p0}, Lcom/android/server/asus/DockManagerService;->updateLocked()V

    .line 296
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/asus/DockManagerService;->updateBatterySavingMode(Z)V

    .line 299
    .end local v0           #msg:Landroid/os/Message;
    :cond_42
    monitor-exit v1

    .line 300
    return-void

    :cond_44
    move v4, v7

    .line 290
    goto :goto_31

    .line 299
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_46

    throw v2
.end method

.method private updateProgressNotification(Z)V
    .registers 11
    .parameter "cancel"

    .prologue
    const/16 v8, 0x8

    .line 713
    const-string v5, "DockManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateProgressNotification, cancel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_2a

    .line 716
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 720
    :cond_2a
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v5, :cond_b1

    .line 721
    const v2, 0x10804b8

    .line 722
    .local v2, icondId:I
    if-nez p1, :cond_b2

    .line 723
    const/16 v4, 0x64

    .line 724
    .local v4, totalCount:I
    invoke-direct {p0}, Lcom/android/server/asus/DockManagerService;->getUpdatingProgress()I

    move-result v0

    .line 725
    .local v0, currentCount:I
    if-le v0, v4, :cond_3c

    .line 726
    move v0, v4

    .line 727
    :cond_3c
    const-string v5, "DockManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateProgressNotification, progress:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x109008f

    invoke-direct {v1, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 733
    .local v1, expandedView:Landroid/widget/RemoteViews;
    const v5, 0x10202c3

    invoke-virtual {v1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 734
    const v5, 0x10202c5

    invoke-virtual {v1, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 736
    const v5, 0x10202c1

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 737
    const v5, 0x1020016

    iget-object v6, p0, Lcom/android/server/asus/DockManagerService;->mContext:Landroid/content/Context;

    const v7, 0x104041a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 738
    const v5, 0x10202c4

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v4, v0, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 739
    const v5, 0x10202c2

    int-to-long v6, v0

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/asus/DockManagerService;->getUpdatingText(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 742
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 743
    .local v3, n:Landroid/app/Notification;
    iput-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 744
    iput v2, v3, Landroid/app/Notification;->icon:I

    .line 745
    iget v5, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 747
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 750
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 755
    .end local v0           #currentCount:I
    .end local v1           #expandedView:Landroid/widget/RemoteViews;
    .end local v2           #icondId:I
    .end local v3           #n:Landroid/app/Notification;
    .end local v4           #totalCount:I
    :cond_b1
    :goto_b1
    return-void

    .line 752
    .restart local v2       #icondId:I
    :cond_b2
    iget-object v5, p0, Lcom/android/server/asus/DockManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_b1
.end method


# virtual methods
.method readDockVersion()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 915
    const-string v2, "/sys/class/switch/dock/name"

    .line 916
    .local v2, filename:Ljava/lang/String;
    const/4 v4, 0x0

    .line 918
    .local v4, reader:Ljava/io/FileReader;
    :try_start_5
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/dock/name"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_6f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_c} :catch_4e

    .line 919
    .end local v4           #reader:Ljava/io/FileReader;
    .local v5, reader:Ljava/io/FileReader;
    const/16 v6, 0x20

    :try_start_e
    new-array v0, v6, [C

    .line 920
    .local v0, buf:[C
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 921
    .local v3, n:I
    if-le v3, v8, :cond_25

    .line 922
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    sub-int v8, v3, v8

    invoke-direct {v6, v0, v7, v8}, Ljava/lang/String;-><init>([CII)V
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_80
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_87
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1e} :catch_83

    .line 933
    if-eqz v5, :cond_23

    .line 935
    :try_start_20
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_7c

    :cond_23
    :goto_23
    move-object v4, v5

    .line 931
    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    :goto_24
    return-object v6

    .line 933
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v0       #buf:[C
    .restart local v3       #n:I
    .restart local v5       #reader:Ljava/io/FileReader;
    :cond_25
    if-eqz v5, :cond_2a

    .line 935
    :try_start_27
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_7e

    :cond_2a
    :goto_2a
    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    move-object v6, v9

    .line 924
    goto :goto_24

    .line 926
    .end local v0           #buf:[C
    .end local v3           #n:I
    :catch_2d
    move-exception v6

    move-object v1, v6

    .line 927
    .local v1, ex:Ljava/io/IOException;
    :goto_2f
    :try_start_2f
    const-string v6, "DockManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t read dock state from /sys/class/switch/dock/name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_6f

    .line 933
    if-eqz v4, :cond_4c

    .line 935
    :try_start_49
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_78

    :cond_4c
    :goto_4c
    move-object v6, v9

    .line 928
    goto :goto_24

    .line 929
    .end local v1           #ex:Ljava/io/IOException;
    :catch_4e
    move-exception v6

    move-object v1, v6

    .line 930
    .local v1, ex:Ljava/lang/NumberFormatException;
    :goto_50
    :try_start_50
    const-string v6, "DockManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t read dock state from /sys/class/switch/dock/name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_6f

    .line 933
    if-eqz v4, :cond_6d

    .line 935
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_7a

    :cond_6d
    :goto_6d
    move-object v6, v9

    .line 931
    goto :goto_24

    .line 933
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catchall_6f
    move-exception v6

    :goto_70
    if-eqz v4, :cond_75

    .line 935
    :try_start_72
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 933
    :cond_75
    :goto_75
    throw v6

    .line 936
    :catch_76
    move-exception v7

    goto :goto_75

    .local v1, ex:Ljava/io/IOException;
    :catch_78
    move-exception v6

    goto :goto_4c

    .local v1, ex:Ljava/lang/NumberFormatException;
    :catch_7a
    move-exception v6

    goto :goto_6d

    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v0       #buf:[C
    .restart local v3       #n:I
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_7c
    move-exception v7

    goto :goto_23

    :catch_7e
    move-exception v6

    goto :goto_2a

    .line 933
    .end local v0           #buf:[C
    .end local v3           #n:I
    :catchall_80
    move-exception v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_70

    .line 929
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_83
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_50

    .line 926
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_87
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_2f
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/asus/DockManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/asus/DockManagerService;->mSystemReady:Z

    .line 397
    monitor-exit v0

    .line 398
    return-void

    .line 397
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public updateDockFirmware(Ljava/lang/String;)V
    .registers 2
    .parameter "firmware"

    .prologue
    .line 810
    return-void
.end method

.method final updateLocked()V
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 315
    iget v1, p0, Lcom/android/server/asus/DockManagerService;->mLastDockState:I

    if-ne v1, v2, :cond_9

    .line 317
    invoke-direct {p0}, Lcom/android/server/asus/DockManagerService;->adjustStatusBarDockLocked()V

    .line 320
    :cond_9
    iget v1, p0, Lcom/android/server/asus/DockManagerService;->mDockState:I

    if-ne v1, v2, :cond_2f

    .line 321
    iget v1, p0, Lcom/android/server/asus/DockManagerService;->mLastDockState:I

    if-eq v1, v2, :cond_16

    .line 323
    invoke-direct {p0}, Lcom/android/server/asus/DockManagerService;->adjustStatusBarDockLocked()V

    .line 324
    iput v2, p0, Lcom/android/server/asus/DockManagerService;->mLastDockState:I

    .line 331
    :cond_16
    :goto_16
    iget-boolean v1, p0, Lcom/android/server/asus/DockManagerService;->mCharging:Z

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/android/server/asus/DockManagerService;->mDockState:I

    if-ne v1, v2, :cond_1e

    :cond_1e
    const/4 v0, 0x0

    .line 333
    .local v0, keepScreenOn:Z
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eq v0, v1, :cond_2e

    .line 334
    if-eqz v0, :cond_33

    .line 335
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 340
    :cond_2e
    :goto_2e
    return-void

    .line 327
    .end local v0           #keepScreenOn:Z
    :cond_2f
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/asus/DockManagerService;->mLastDockState:I

    goto :goto_16

    .line 337
    .restart local v0       #keepScreenOn:Z
    :cond_33
    iget-object v1, p0, Lcom/android/server/asus/DockManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2e
.end method
