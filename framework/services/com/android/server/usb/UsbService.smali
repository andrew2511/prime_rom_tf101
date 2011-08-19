.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# static fields
.field private static final LOG:Z = false

.field private static final MSG_FUNCTION_DISABLED:I = 0x2

.field private static final MSG_FUNCTION_ENABLED:I = 0x1

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_DELAY:I = 0x3e8

.field private static final USB_COMPOSITE_CLASS_PATH:Ljava/lang/String; = "/sys/class/usb_composite"

.field private static final USB_CONFIGURATION_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/usb_configuration"

.field private static final USB_CONFIGURATION_PATH:Ljava/lang/String; = "/sys/class/switch/usb_configuration/state"

.field private static final USB_CONNECTED_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/usb_connected"

.field private static final USB_CONNECTED_PATH:Ljava/lang/String; = "/sys/class/switch/usb_connected/state"

.field private static final USB_FUNCTIONS_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/usb_composite/"


# instance fields
.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConfiguration:I

.field private mConnected:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field private final mDefaultFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHasUsbAccessory:Z

.field private final mHasUsbHost:Z

.field private final mHostBlacklist:[Ljava/lang/String;

.field private mLastConfiguration:I

.field private mLastConnected:I

.field private final mLock:Ljava/lang/Object;

.field private mSystemReady:Z

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-class v0, Lcom/android/server/usb/UsbService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 214
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 92
    iput v1, p0, Lcom/android/server/usb/UsbService;->mLastConnected:I

    .line 93
    iput v1, p0, Lcom/android/server/usb/UsbService;->mLastConfiguration:I

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDevices:Ljava/util/HashMap;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    .line 112
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 156
    new-instance v1, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mUEventObserver:Landroid/os/UEventObserver;

    .line 203
    new-instance v1, Lcom/android/server/usb/UsbService$2;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbService$2;-><init>(Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 546
    new-instance v1, Lcom/android/server/usb/UsbService$4;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbService$4;-><init>(Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;

    .line 215
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 216
    new-instance v1, Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    .line 217
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 218
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.usb.host"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbService;->mHasUsbHost:Z

    .line 219
    const-string v1, "android.hardware.usb.accessory"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbService;->mHasUsbAccessory:Z

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mHostBlacklist:[Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_6f
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->init()V

    .line 228
    iget v2, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    if-ltz v2, :cond_8b

    .line 229
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/switch/usb_connected"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/switch/usb_configuration"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/usb_composite/"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 233
    :cond_8b
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_8d
    move-exception v2

    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_6f .. :try_end_8f} :catchall_8d

    throw v2
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/usb/UsbService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/server/usb/UsbService;->mLastConnected:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/usb/UsbService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/server/usb/UsbService;->mLastConnected:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/usb/UsbService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/server/usb/UsbService;->mLastConfiguration:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/usb/UsbService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/server/usb/UsbService;->mLastConfiguration:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/usb/UsbService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/usb/UsbService;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbService;->functionEnabledLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/server/usb/UsbService;->mConnected:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/usb/UsbService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/server/usb/UsbService;->mConnected:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/server/usb/UsbService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->update(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/usb/UsbService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbService;)Landroid/hardware/usb/UsbAccessory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/usb/UsbService;Landroid/hardware/usb/UsbAccessory;)Landroid/hardware/usb/UsbAccessory;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceSettingsManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->monitorUsbHostBus()V

    return-void
.end method

.method private final functionEnabledLocked(Ljava/lang/String;Z)V
    .registers 4
    .parameter "function"
    .parameter "enabled"

    .prologue
    .line 136
    if-eqz p2, :cond_20

    .line 137
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 138
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_f
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 142
    const-string v0, "accessory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 143
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->readCurrentAccessoryLocked()V

    .line 151
    :cond_1f
    :goto_1f
    return-void

    .line 146
    :cond_20
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 147
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_2d
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1f
.end method

.method private final init()V
    .registers 13

    .prologue
    const/16 v10, 0x400

    .line 237
    new-array v0, v10, [C

    .line 238
    .local v0, buffer:[C
    const/4 v6, 0x0

    .line 241
    .local v6, inAccessoryMode:Z
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    .line 243
    :try_start_8
    new-instance v2, Ljava/io/FileReader;

    const-string v10, "/sys/class/switch/usb_connected/state"

    invoke-direct {v2, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 244
    .local v2, file:Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v2, v0, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 245
    .local v7, len:I
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 246
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/android/server/usb/UsbService;->mConnected:I

    .line 248
    new-instance v2, Ljava/io/FileReader;

    .end local v2           #file:Ljava/io/FileReader;
    const-string v10, "/sys/class/switch/usb_configuration/state"

    invoke-direct {v2, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v2       #file:Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v2, v0, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 250
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 251
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_52} :catch_57
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_52} :catch_61

    .line 258
    .end local v2           #file:Ljava/io/FileReader;
    .end local v7           #len:I
    :goto_52
    iget v10, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    if-gez v10, :cond_6b

    .line 308
    :cond_56
    :goto_56
    return-void

    .line 253
    :catch_57
    move-exception v10

    move-object v1, v10

    .line 254
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v11, "This kernel does not have USB configuration switch support"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 255
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_61
    move-exception v10

    move-object v1, v10

    .line 256
    .local v1, e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v11, ""

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    .line 265
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6b
    :try_start_6b
    new-instance v10, Ljava/io/File;

    const-string v11, "/sys/class/usb_composite"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 266
    .local v3, files:[Ljava/io/File;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_77
    array-length v10, v3

    if-ge v5, v10, :cond_d5

    .line 267
    new-instance v2, Ljava/io/File;

    aget-object v10, v3, v5

    const-string v11, "enable"

    invoke-direct {v2, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    .local v2, file:Ljava/io/File;
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 269
    .local v8, reader:Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v8, v0, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 270
    .restart local v7       #len:I
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 271
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 272
    .local v9, value:I
    aget-object v10, v3, v5

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, functionName:Ljava/lang/String;
    const/4 v10, 0x1

    if-ne v9, v10, :cond_ed

    .line 274
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    const-string v10, "accessory"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_be

    .line 278
    const/4 v6, 0x1

    .line 266
    :cond_bb
    :goto_bb
    add-int/lit8 v5, v5, 0x1

    goto :goto_77

    .line 279
    :cond_be
    const-string v10, "adb"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_bb

    .line 282
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cb
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_cb} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_cb} :catch_f3

    goto :goto_bb

    .line 288
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #functionName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #len:I
    .end local v8           #reader:Ljava/io/FileReader;
    .end local v9           #value:I
    :catch_cc
    move-exception v10

    move-object v1, v10

    .line 289
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v11, "This kernel does not have USB composite class support"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_d5
    :goto_d5
    if-eqz v6, :cond_56

    .line 297
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->readCurrentAccessoryLocked()V

    .line 302
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    const-string v11, "mtp"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fd

    .line 303
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    const-string v11, "mtp"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_56

    .line 285
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #files:[Ljava/io/File;
    .restart local v4       #functionName:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v7       #len:I
    .restart local v8       #reader:Ljava/io/FileReader;
    .restart local v9       #value:I
    :cond_ed
    :try_start_ed
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f2
    .catch Ljava/io/FileNotFoundException; {:try_start_ed .. :try_end_f2} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f2} :catch_f3

    goto :goto_bb

    .line 290
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #functionName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #len:I
    .end local v8           #reader:Ljava/io/FileReader;
    .end local v9           #value:I
    :catch_f3
    move-exception v10

    move-object v1, v10

    .line 291
    .local v1, e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v11, ""

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d5

    .line 304
    .end local v1           #e:Ljava/lang/Exception;
    :cond_fd
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    const-string v11, "mass_storage"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_56

    .line 305
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    const-string v11, "mass_storage"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_56
.end method

.method private initHostSupport()V
    .registers 5

    .prologue
    .line 411
    new-instance v0, Lcom/android/server/usb/UsbService$3;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbService$3;-><init>(Lcom/android/server/usb/UsbService;)V

    .line 416
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    const-string v3, "UsbService host thread"

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 417
    return-void
.end method

.method private isBlackListed(III)Z
    .registers 6
    .parameter "clazz"
    .parameter "subClass"
    .parameter "protocol"

    .prologue
    const/4 v1, 0x1

    .line 323
    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    move v0, v1

    .line 331
    :goto_6
    return v0

    .line 326
    :cond_7
    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    if-ne p2, v1, :cond_e

    move v0, v1

    .line 328
    goto :goto_6

    .line 331
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isBlackListed(Ljava/lang/String;)Z
    .registers 5
    .parameter "deviceName"

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v2

    .line 312
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 313
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostBlacklist:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 314
    const/4 v2, 0x1

    .line 317
    :goto_11
    return v2

    .line 312
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 317
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private final readCurrentAccessoryLocked()V
    .registers 5

    .prologue
    .line 118
    iget-boolean v1, p0, Lcom/android/server/usb/UsbService;->mHasUsbAccessory:Z

    if-eqz v1, :cond_36

    .line 119
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, strings:[Ljava/lang/String;
    if-eqz v0, :cond_37

    .line 121
    new-instance v1, Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v1, v0}, Landroid/hardware/usb/UsbAccessory;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 122
    sget-object v1, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entering USB accessory mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-boolean v1, p0, Lcom/android/server/usb/UsbService;->mSystemReady:Z

    if-eqz v1, :cond_36

    .line 124
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 130
    .end local v0           #strings:[Ljava/lang/String;
    :cond_36
    :goto_36
    return-void

    .line 127
    .restart local v0       #strings:[Ljava/lang/String;
    :cond_37
    sget-object v1, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v2, "nativeGetAccessoryStrings failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private final update(Z)V
    .registers 6
    .parameter "delayed"

    .prologue
    const/4 v3, 0x0

    .line 444
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 445
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_10

    const-wide/16 v1, 0x3e8

    :goto_c
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 446
    return-void

    .line 445
    :cond_10
    const-wide/16 v1, 0x0

    goto :goto_c
.end method

.method private usbDeviceAdded(Ljava/lang/String;IIIII[I[I)V
    .registers 42
    .parameter "deviceName"
    .parameter "vendorID"
    .parameter "productID"
    .parameter "deviceClass"
    .parameter "deviceSubclass"
    .parameter "deviceProtocol"
    .parameter "interfaceValues"
    .parameter "endpointValues"

    .prologue
    .line 344
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbService;->isBlackListed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/UsbService;->isBlackListed(III)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 396
    :cond_14
    :goto_14
    return-void

    .line 349
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 350
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mDevices:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4a

    .line 351
    sget-object v5, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "device already on mDevices list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    monitor-exit v32

    goto :goto_14

    .line 395
    :catchall_47
    move-exception v5

    monitor-exit v32
    :try_end_49
    .catchall {:try_start_1c .. :try_end_49} :catchall_47

    throw v5

    .line 355
    :cond_4a
    :try_start_4a
    move-object/from16 v0, p7

    array-length v0, v0

    move v5, v0

    div-int/lit8 v31, v5, 0x5

    .line 356
    .local v31, numInterfaces:I
    move/from16 v0, v31

    new-array v0, v0, [Landroid/hardware/usb/UsbInterface;

    move-object/from16 v18, v0
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_47

    .line 359
    .local v18, interfaces:[Landroid/os/Parcelable;
    const/16 v27, 0x0

    .local v27, ival:I
    const/16 v23, 0x0

    .line 360
    .local v23, eval:I
    const/16 v26, 0x0

    .local v26, intf:I
    move/from16 v28, v27

    .end local v27           #ival:I
    .local v28, ival:I
    :goto_5e
    move/from16 v0, v26

    move/from16 v1, v31

    if-ge v0, v1, :cond_d7

    .line 361
    add-int/lit8 v27, v28, 0x1

    .end local v28           #ival:I
    .restart local v27       #ival:I
    :try_start_66
    aget v6, p7, v28
    :try_end_68
    .catchall {:try_start_66 .. :try_end_68} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_68} :catch_c6

    .line 362
    .local v6, interfaceId:I
    add-int/lit8 v28, v27, 0x1

    .end local v27           #ival:I
    .restart local v28       #ival:I
    :try_start_6a
    aget v7, p7, v27
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6c} :catch_ff

    .line 363
    .local v7, interfaceClass:I
    add-int/lit8 v27, v28, 0x1

    .end local v28           #ival:I
    .restart local v27       #ival:I
    :try_start_6e
    aget v8, p7, v28
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_70} :catch_c6

    .line 364
    .local v8, interfaceSubclass:I
    add-int/lit8 v28, v27, 0x1

    .end local v27           #ival:I
    .restart local v28       #ival:I
    :try_start_72
    aget v9, p7, v27
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_74} :catch_ff

    .line 365
    .local v9, interfaceProtocol:I
    add-int/lit8 v27, v28, 0x1

    .end local v28           #ival:I
    .restart local v27       #ival:I
    :try_start_76
    aget v30, p7, v28

    .line 367
    .local v30, numEndpoints:I
    move/from16 v0, v30

    new-array v0, v0, [Landroid/hardware/usb/UsbEndpoint;

    move-object v10, v0

    .line 368
    .local v10, endpoints:[Landroid/os/Parcelable;
    const/16 v22, 0x0

    .local v22, endp:I
    move/from16 v24, v23

    .end local v23           #eval:I
    .local v24, eval:I
    :goto_81
    move/from16 v0, v22

    move/from16 v1, v30

    if-ge v0, v1, :cond_aa

    .line 369
    add-int/lit8 v23, v24, 0x1

    .end local v24           #eval:I
    .restart local v23       #eval:I
    aget v19, p8, v24
    :try_end_8b
    .catchall {:try_start_76 .. :try_end_8b} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8b} :catch_c6

    .line 370
    .local v19, address:I
    add-int/lit8 v24, v23, 0x1

    .end local v23           #eval:I
    .restart local v24       #eval:I
    :try_start_8d
    aget v20, p8, v23
    :try_end_8f
    .catchall {:try_start_8d .. :try_end_8f} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8f} :catch_105

    .line 371
    .local v20, attributes:I
    add-int/lit8 v23, v24, 0x1

    .end local v24           #eval:I
    .restart local v23       #eval:I
    :try_start_91
    aget v29, p8, v24
    :try_end_93
    .catchall {:try_start_91 .. :try_end_93} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_93} :catch_c6

    .line 372
    .local v29, maxPacketSize:I
    add-int/lit8 v24, v23, 0x1

    .end local v23           #eval:I
    .restart local v24       #eval:I
    :try_start_95
    aget v25, p8, v23

    .line 373
    .local v25, interval:I
    new-instance v5, Landroid/hardware/usb/UsbEndpoint;

    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v29

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    aput-object v5, v10, v22

    .line 368
    add-int/lit8 v22, v22, 0x1

    goto :goto_81

    .line 378
    .end local v19           #address:I
    .end local v20           #attributes:I
    .end local v25           #interval:I
    .end local v29           #maxPacketSize:I
    :cond_aa
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/UsbService;->isBlackListed(III)Z
    :try_end_b2
    .catchall {:try_start_95 .. :try_end_b2} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b2} :catch_105

    move-result v5

    if-eqz v5, :cond_b8

    .line 379
    :try_start_b5
    monitor-exit v32
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_47

    goto/16 :goto_14

    .line 381
    :cond_b8
    :try_start_b8
    new-instance v5, Landroid/hardware/usb/UsbInterface;

    invoke-direct/range {v5 .. v10}, Landroid/hardware/usb/UsbInterface;-><init>(IIII[Landroid/os/Parcelable;)V

    aput-object v5, v18, v26
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bf} :catch_105

    .line 360
    add-int/lit8 v26, v26, 0x1

    move/from16 v23, v24

    .end local v24           #eval:I
    .restart local v23       #eval:I
    move/from16 v28, v27

    .end local v27           #ival:I
    .restart local v28       #ival:I
    goto :goto_5e

    .line 384
    .end local v6           #interfaceId:I
    .end local v7           #interfaceClass:I
    .end local v8           #interfaceSubclass:I
    .end local v9           #interfaceProtocol:I
    .end local v10           #endpoints:[Landroid/os/Parcelable;
    .end local v22           #endp:I
    .end local v28           #ival:I
    .end local v30           #numEndpoints:I
    .restart local v27       #ival:I
    :catch_c6
    move-exception v5

    move-object/from16 v21, v5

    .line 387
    .local v21, e:Ljava/lang/Exception;
    :goto_c9
    :try_start_c9
    sget-object v5, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v6, "error parsing USB descriptors"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    monitor-exit v32

    goto/16 :goto_14

    .line 391
    .end local v21           #e:Ljava/lang/Exception;
    .end local v27           #ival:I
    .restart local v28       #ival:I
    :cond_d7
    new-instance v11, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    invoke-direct/range {v11 .. v18}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIII[Landroid/os/Parcelable;)V

    .line 393
    .local v11, device:Landroid/hardware/usb/UsbDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mDevices:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    move-object v5, v0

    invoke-virtual {v5, v11}, Lcom/android/server/usb/UsbDeviceSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 395
    monitor-exit v32
    :try_end_fd
    .catchall {:try_start_c9 .. :try_end_fd} :catchall_47

    goto/16 :goto_14

    .line 384
    .end local v11           #device:Landroid/hardware/usb/UsbDevice;
    .restart local v6       #interfaceId:I
    :catch_ff
    move-exception v5

    move-object/from16 v21, v5

    move/from16 v27, v28

    .end local v28           #ival:I
    .restart local v27       #ival:I
    goto :goto_c9

    .end local v23           #eval:I
    .restart local v7       #interfaceClass:I
    .restart local v8       #interfaceSubclass:I
    .restart local v9       #interfaceProtocol:I
    .restart local v10       #endpoints:[Landroid/os/Parcelable;
    .restart local v22       #endp:I
    .restart local v24       #eval:I
    .restart local v30       #numEndpoints:I
    :catch_105
    move-exception v5

    move-object/from16 v21, v5

    move/from16 v23, v24

    .end local v24           #eval:I
    .restart local v23       #eval:I
    goto :goto_c9
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .registers 5
    .parameter "deviceName"

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 402
    .local v0, device:Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_12

    .line 403
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v2, v0}, Lcom/android/server/usb/UsbDeviceSettingsManager;->deviceDetached(Landroid/hardware/usb/UsbDevice;)V

    .line 405
    :cond_12
    monitor-exit v1

    .line 406
    return-void

    .line 405
    .end local v0           #device:Landroid/hardware/usb/UsbDevice;
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v2
.end method


# virtual methods
.method public clearDefaults(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->clearDefaults(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 617
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump UsbManager from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    :goto_32
    return-void

    .line 625
    :cond_33
    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 626
    :try_start_36
    const-string v3, "USB Manager State:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    const-string v3, "  USB Device State:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    const-string v3, "    Enabled Functions: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    const/4 v0, 0x0

    .local v0, i:I
    :goto_46
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6f

    .line 631
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 633
    :cond_6f
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    const-string v3, "    Disabled Functions: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    const/4 v0, 0x0

    :goto_7a
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_a3

    .line 636
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 638
    :cond_a3
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    const-string v3, "    Default Functions: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    const/4 v0, 0x0

    :goto_ae
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_d7

    .line 641
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    add-int/lit8 v0, v0, 0x1

    goto :goto_ae

    .line 643
    :cond_d7
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mConnected: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/usb/UsbService;->mConnected:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mConfiguration: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/usb/UsbService;->mConfiguration:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mCurrentAccessory: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    const-string v3, "  USB Host State:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_127
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 649
    .local v2, name:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_127

    .line 652
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    :catchall_15a
    move-exception v3

    monitor-exit v4
    :try_end_15c
    .catchall {:try_start_36 .. :try_end_15c} :catchall_15a

    throw v3

    .line 651
    .restart local v0       #i:I
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_15d
    :try_start_15d
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 652
    monitor-exit v4
    :try_end_163
    .catchall {:try_start_15d .. :try_end_163} :catchall_15a

    goto/16 :goto_32
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 6
    .parameter "devices"

    .prologue
    .line 450
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 451
    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 452
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_d

    .line 454
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_28
    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    .line 455
    return-void
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6
    .parameter "accessory"
    .parameter "uid"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 531
    return-void
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 6
    .parameter "device"
    .parameter "uid"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 526
    return-void
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 3
    .parameter "accessory"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    return v0
.end method

.method public hasDefaults(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->hasDefaults(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z
    .registers 3
    .parameter "device"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    return v0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .parameter "accessory"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-nez v1, :cond_12

    .line 483
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no accessory attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1

    .line 485
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 486
    sget-object v1, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match current accessory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accessory not attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 490
    :cond_44
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;)V

    .line 491
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_12 .. :try_end_50} :catchall_f

    return-object v1
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter "deviceName"

    .prologue
    .line 459
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->isBlackListed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 461
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "USB device is on a restricted bus"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 471
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v2

    .line 463
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 464
    .local v0, device:Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_3d

    .line 466
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist or is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 469
    :cond_3d
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v2, v0}, Lcom/android/server/usb/UsbDeviceSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_14 .. :try_end_47} :catchall_11

    return-object v2
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 5
    .parameter "accessory"
    .parameter "packageName"
    .parameter "pi"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usb/UsbDeviceSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 521
    return-void
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 5
    .parameter "device"
    .parameter "packageName"
    .parameter "pi"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usb/UsbDeviceSettingsManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 516
    return-void
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    .registers 6
    .parameter "accessory"
    .parameter "packageName"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .registers 6
    .parameter "device"
    .parameter "packageName"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usb/UsbService;->mHasUsbHost:Z

    if-eqz v1, :cond_a

    .line 423
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->initHostSupport()V

    .line 426
    :cond_a
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbService;->update(Z)V

    .line 427
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v1, :cond_27

    .line 428
    sget-object v1, Lcom/android/server/usb/UsbService;->TAG:Ljava/lang/String;

    const-string v2, "accessoryAttached at systemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    :cond_27
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbService;->mSystemReady:Z

    .line 435
    monitor-exit v0

    .line 436
    return-void

    .line 435
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method
