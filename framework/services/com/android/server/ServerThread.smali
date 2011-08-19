.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 613
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 614
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 616
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 618
    return-void
.end method


# virtual methods
.method public run()V
    .registers 83

    .prologue
    .line 86
    const/16 v5, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 89
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 91
    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 94
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 95
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 99
    const-string v5, "sys.shutdown.requested"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 101
    .local v67, shutdownAction:Ljava/lang/String;
    if-eqz v67, :cond_52

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_52

    .line 102
    const/4 v5, 0x0

    move-object/from16 v0, v67

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_502

    const/4 v5, 0x1

    move/from16 v64, v5

    .line 105
    .local v64, reboot:Z
    :goto_37
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_507

    .line 106
    const/4 v5, 0x1

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v67

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v63

    .line 111
    .local v63, reason:Ljava/lang/String;
    :goto_4b
    move/from16 v0, v64

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 115
    .end local v63           #reason:Ljava/lang/String;
    .end local v64           #reboot:Z
    :cond_52
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 116
    .local v48, factoryTestStr:Ljava/lang/String;
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50b

    const/4 v5, 0x0

    move/from16 v47, v5

    .line 119
    .local v47, factoryTest:I
    :goto_66
    const/16 v52, 0x0

    .line 120
    .local v52, lights:Lcom/android/server/LightsService;
    const/16 v62, 0x0

    .line 121
    .local v62, power:Lcom/android/server/PowerManagerService;
    const/16 v30, 0x0

    .line 122
    .local v30, battery:Lcom/android/server/BatteryService;
    const/16 v37, 0x0

    .line 123
    .local v37, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v61, 0x0

    .line 124
    .local v61, pm:Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    .line 125
    .local v6, context:Landroid/content/Context;
    const/16 v81, 0x0

    .line 126
    .local v81, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v31, 0x0

    .line 127
    .local v31, bluetooth:Landroid/server/BluetoothService;
    const/16 v33, 0x0

    .line 128
    .local v33, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v79, 0x0

    .line 129
    .local v79, wiredAccessory:Lcom/android/server/WiredAccessoryObserver;
    const/16 v42, 0x0

    .line 130
    .local v42, dock:Lcom/android/server/DockObserver;
    const/16 v74, 0x0

    .line 131
    .local v74, usb:Lcom/android/server/usb/UsbService;
    const/16 v72, 0x0

    .line 132
    .local v72, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v44, 0x0

    .line 133
    .local v44, dockManager:Lcom/android/server/asus/DockManagerService;
    const/16 v65, 0x0

    .line 134
    .local v65, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v70, 0x0

    .line 135
    .local v70, throttle:Lcom/android/server/ThrottleService;
    const/16 v57, 0x0

    .line 139
    .local v57, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :try_start_87
    const-string v5, "SystemServer"

    const-string v7, "Entropy Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v5, "entropy"

    new-instance v7, Lcom/android/server/EntropyService;

    invoke-direct {v7}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 142
    const-string v5, "SystemServer"

    const-string v7, "Power Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v8, Lcom/android/server/PowerManagerService;

    invoke-direct {v8}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_a4
    .catch Ljava/lang/RuntimeException; {:try_start_87 .. :try_end_a4} :catch_7cc

    .line 144
    .end local v62           #power:Lcom/android/server/PowerManagerService;
    .local v8, power:Lcom/android/server/PowerManagerService;
    :try_start_a4
    const-string v5, "power"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 146
    const-string v5, "SystemServer"

    const-string v7, "Activity Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static/range {v47 .. v47}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v6

    .line 149
    const-string v5, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v5, "telephony.registry"

    new-instance v7, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v7, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 152
    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 154
    const-string v5, "SystemServer"

    const-string v7, "Package Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-eqz v47, :cond_513

    const/4 v5, 0x1

    :goto_d2
    invoke-static {v6, v5}, Lcom/android/server/PackageManagerService;->main(Landroid/content/Context;Z)Landroid/content/pm/IPackageManager;

    move-result-object v61

    .line 158
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 160
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_e2
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_e2} :catch_526

    .line 164
    :try_start_e2
    const-string v5, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v5, "account"

    new-instance v7, Landroid/accounts/AccountManagerService;

    invoke-direct {v7, v6}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_f3} :catch_516
    .catch Ljava/lang/RuntimeException; {:try_start_e2 .. :try_end_f3} :catch_526

    .line 171
    :goto_f3
    :try_start_f3
    const-string v5, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v5, 0x1

    move/from16 v0, v47

    move v1, v5

    if-ne v0, v1, :cond_538

    const/4 v5, 0x1

    :goto_101
    invoke-static {v6, v5}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 175
    const-string v5, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 178
    const-string v5, "SystemServer"

    const-string v7, "Lights Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v53, Lcom/android/server/LightsService;

    move-object/from16 v0, v53

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_11d
    .catch Ljava/lang/RuntimeException; {:try_start_f3 .. :try_end_11d} :catch_526

    .line 181
    .end local v52           #lights:Lcom/android/server/LightsService;
    .local v53, lights:Lcom/android/server/LightsService;
    :try_start_11d
    const-string v5, "SystemServer"

    const-string v7, "Battery Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v7, Lcom/android/server/BatteryService;

    move-object v0, v7

    move-object v1, v6

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_12d
    .catch Ljava/lang/RuntimeException; {:try_start_11d .. :try_end_12d} :catch_7d5

    .line 183
    .end local v30           #battery:Lcom/android/server/BatteryService;
    .local v7, battery:Lcom/android/server/BatteryService;
    :try_start_12d
    const-string v5, "battery"

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 185
    const-string v5, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v5, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 190
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move-object v0, v8

    move-object v1, v6

    move-object/from16 v2, v53

    move-object v3, v5

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 192
    const-string v5, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v9, Lcom/android/server/AlarmManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    .line 194
    .local v9, alarm:Lcom/android/server/AlarmManagerService;
    const-string v5, "alarm"

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 196
    const-string v5, "SystemServer"

    const-string v10, "Init Watchdog"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 200
    const-string v5, "SystemServer"

    const-string v9, "Window Manager"

    .end local v9           #alarm:Lcom/android/server/AlarmManagerService;
    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v5, 0x1

    move/from16 v0, v47

    move v1, v5

    if-eq v0, v1, :cond_53b

    const/4 v5, 0x1

    :goto_181
    invoke-static {v6, v8, v5}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/wm/WindowManagerService;

    move-result-object v81

    .line 203
    const-string v5, "window"

    move-object v0, v5

    move-object/from16 v1, v81

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 205
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    move-object v0, v5

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 211
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53e

    .line 212
    const-string v5, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b0
    .catch Ljava/lang/RuntimeException; {:try_start_12d .. :try_end_1b0} :catch_54d

    :goto_1b0
    move-object/from16 v52, v53

    .line 236
    .end local v53           #lights:Lcom/android/server/LightsService;
    .restart local v52       #lights:Lcom/android/server/LightsService;
    :goto_1b2
    const/16 v40, 0x0

    .line 237
    .local v40, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v68, 0x0

    .line 238
    .local v68, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v50, 0x0

    .line 239
    .local v50, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v28, 0x0

    .line 240
    .local v28, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v59, 0x0

    .line 241
    .local v59, notification:Lcom/android/server/NotificationManagerService;
    const/16 v77, 0x0

    .line 242
    .local v77, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v54, 0x0

    .line 243
    .local v54, location:Lcom/android/server/LocationManagerService;
    const/16 v38, 0x0

    .line 245
    .local v38, countryDetector:Lcom/android/server/CountryDetectorService;
    const/4 v5, 0x1

    move/from16 v0, v47

    move v1, v5

    if-eq v0, v1, :cond_434

    .line 247
    :try_start_1c8
    const-string v5, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v41, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1d7
    .catch Ljava/lang/Throwable; {:try_start_1c8 .. :try_end_1d7} :catch_599

    .line 249
    .end local v40           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v41, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1d7
    const-string v5, "device_policy"

    move-object v0, v5

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1df
    .catch Ljava/lang/Throwable; {:try_start_1d7 .. :try_end_1df} :catch_7c5

    move-object/from16 v40, v41

    .line 255
    .end local v41           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v40       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_1e1
    :try_start_1e1
    const-string v5, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v69, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v69

    move-object v1, v6

    move-object/from16 v2, v81

    invoke-direct {v0, v1, v2}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1f2
    .catch Ljava/lang/Throwable; {:try_start_1e1 .. :try_end_1f2} :catch_5a9

    .line 257
    .end local v68           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v69, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1f2
    const-string v5, "statusbar"

    move-object v0, v5

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1fa
    .catch Ljava/lang/Throwable; {:try_start_1f2 .. :try_end_1fa} :catch_7be

    move-object/from16 v68, v69

    .line 263
    .end local v69           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v68       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_1fc
    :try_start_1fc
    const-string v5, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v5, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v6}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20d
    .catch Ljava/lang/Throwable; {:try_start_1fc .. :try_end_20d} :catch_5b9

    .line 271
    :goto_20d
    :try_start_20d
    const-string v5, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v51, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v51

    move-object v1, v6

    move-object/from16 v2, v68

    invoke-direct {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;)V
    :try_end_21e
    .catch Ljava/lang/Throwable; {:try_start_20d .. :try_end_21e} :catch_5c9

    .line 273
    .end local v50           #imm:Lcom/android/server/InputMethodManagerService;
    .local v51, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_21e
    const-string v5, "input_method"

    move-object v0, v5

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_226
    .catch Ljava/lang/Throwable; {:try_start_21e .. :try_end_226} :catch_7b7

    move-object/from16 v50, v51

    .line 279
    .end local v51           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v50       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_228
    :try_start_228
    const-string v5, "SystemServer"

    const-string v9, "NetStat Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v5, "netstat"

    new-instance v9, Lcom/android/server/NetStatService;

    invoke-direct {v9, v6}, Lcom/android/server/NetStatService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_239
    .catch Ljava/lang/Throwable; {:try_start_228 .. :try_end_239} :catch_5d9

    .line 286
    :goto_239
    :try_start_239
    const-string v5, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v5, "network_management"

    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_249
    .catch Ljava/lang/Throwable; {:try_start_239 .. :try_end_249} :catch_5e9

    .line 295
    :goto_249
    :try_start_249
    const-string v5, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v37

    .line 297
    const-string v5, "connectivity"

    move-object v0, v5

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25c
    .catch Ljava/lang/Throwable; {:try_start_249 .. :try_end_25c} :catch_5f9

    .line 303
    :goto_25c
    :try_start_25c
    const-string v5, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v71, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v71

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_26b
    .catch Ljava/lang/Throwable; {:try_start_25c .. :try_end_26b} :catch_609

    .line 305
    .end local v70           #throttle:Lcom/android/server/ThrottleService;
    .local v71, throttle:Lcom/android/server/ThrottleService;
    :try_start_26b
    const-string v5, "throttle"

    move-object v0, v5

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_273
    .catch Ljava/lang/Throwable; {:try_start_26b .. :try_end_273} :catch_7b0

    move-object/from16 v70, v71

    .line 312
    .end local v71           #throttle:Lcom/android/server/ThrottleService;
    .restart local v70       #throttle:Lcom/android/server/ThrottleService;
    :goto_275
    :try_start_275
    const-string v5, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v5, "accessibility"

    new-instance v9, Lcom/android/server/AccessibilityManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_286
    .catch Ljava/lang/Throwable; {:try_start_275 .. :try_end_286} :catch_619

    .line 324
    :goto_286
    :try_start_286
    const-string v5, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v5, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v6}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_297
    .catch Ljava/lang/Throwable; {:try_start_286 .. :try_end_297} :catch_629

    .line 331
    :goto_297
    :try_start_297
    const-string v5, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v60, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v60

    move-object v1, v6

    move-object/from16 v2, v68

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_2aa
    .catch Ljava/lang/Throwable; {:try_start_297 .. :try_end_2aa} :catch_639

    .line 333
    .end local v59           #notification:Lcom/android/server/NotificationManagerService;
    .local v60, notification:Lcom/android/server/NotificationManagerService;
    :try_start_2aa
    const-string v5, "notification"

    move-object v0, v5

    move-object/from16 v1, v60

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b2
    .catch Ljava/lang/Throwable; {:try_start_2aa .. :try_end_2b2} :catch_7a9

    move-object/from16 v59, v60

    .line 339
    .end local v60           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v59       #notification:Lcom/android/server/NotificationManagerService;
    :goto_2b4
    :try_start_2b4
    const-string v5, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v5, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v6}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c5
    .catch Ljava/lang/Throwable; {:try_start_2b4 .. :try_end_2c5} :catch_649

    .line 347
    :goto_2c5
    :try_start_2c5
    const-string v5, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v55, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v55

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2d4
    .catch Ljava/lang/Throwable; {:try_start_2c5 .. :try_end_2d4} :catch_659

    .line 349
    .end local v54           #location:Lcom/android/server/LocationManagerService;
    .local v55, location:Lcom/android/server/LocationManagerService;
    :try_start_2d4
    const-string v5, "location"

    move-object v0, v5

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2dc
    .catch Ljava/lang/Throwable; {:try_start_2d4 .. :try_end_2dc} :catch_7a2

    move-object/from16 v54, v55

    .line 355
    .end local v55           #location:Lcom/android/server/LocationManagerService;
    .restart local v54       #location:Lcom/android/server/LocationManagerService;
    :goto_2de
    :try_start_2de
    const-string v5, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v39, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v39

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2ed
    .catch Ljava/lang/Throwable; {:try_start_2de .. :try_end_2ed} :catch_669

    .line 357
    .end local v38           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v39, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_2ed
    const-string v5, "country_detector"

    move-object v0, v5

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f5
    .catch Ljava/lang/Throwable; {:try_start_2ed .. :try_end_2f5} :catch_79b

    move-object/from16 v38, v39

    .line 363
    .end local v39           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v38       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_2f7
    :try_start_2f7
    const-string v5, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v5, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v6}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_308
    .catch Ljava/lang/Throwable; {:try_start_2f7 .. :try_end_308} :catch_679

    .line 371
    :goto_308
    :try_start_308
    const-string v5, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v5, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v6, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_320
    .catch Ljava/lang/Throwable; {:try_start_308 .. :try_end_320} :catch_689

    .line 379
    :goto_320
    :try_start_320
    const-string v5, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v78, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v78

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_32f
    .catch Ljava/lang/Throwable; {:try_start_320 .. :try_end_32f} :catch_699

    .line 381
    .end local v77           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v78, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_32f
    const-string v5, "wallpaper"

    move-object v0, v5

    move-object/from16 v1, v78

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_337
    .catch Ljava/lang/Throwable; {:try_start_32f .. :try_end_337} :catch_794

    move-object/from16 v77, v78

    .line 387
    .end local v78           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v77       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_339
    :try_start_339
    const-string v5, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v5, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v6}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34a
    .catch Ljava/lang/Throwable; {:try_start_339 .. :try_end_34a} :catch_6a9

    .line 394
    :goto_34a
    :try_start_34a
    const-string v5, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v43, Lcom/android/server/DockObserver;

    move-object/from16 v0, v43

    move-object v1, v6

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_35a
    .catch Ljava/lang/Throwable; {:try_start_34a .. :try_end_35a} :catch_6b9

    .end local v42           #dock:Lcom/android/server/DockObserver;
    .local v43, dock:Lcom/android/server/DockObserver;
    move-object/from16 v42, v43

    .line 402
    .end local v43           #dock:Lcom/android/server/DockObserver;
    .restart local v42       #dock:Lcom/android/server/DockObserver;
    :goto_35c
    :try_start_35c
    const-string v5, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v80, Lcom/android/server/WiredAccessoryObserver;

    move-object/from16 v0, v80

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_36b
    .catch Ljava/lang/Throwable; {:try_start_35c .. :try_end_36b} :catch_6c9

    .end local v79           #wiredAccessory:Lcom/android/server/WiredAccessoryObserver;
    .local v80, wiredAccessory:Lcom/android/server/WiredAccessoryObserver;
    move-object/from16 v79, v80

    .line 410
    .end local v80           #wiredAccessory:Lcom/android/server/WiredAccessoryObserver;
    .restart local v79       #wiredAccessory:Lcom/android/server/WiredAccessoryObserver;
    :goto_36d
    :try_start_36d
    const-string v5, "SystemServer"

    const-string v9, "USB Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v75, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v75

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_37c
    .catch Ljava/lang/Throwable; {:try_start_36d .. :try_end_37c} :catch_6d9

    .line 413
    .end local v74           #usb:Lcom/android/server/usb/UsbService;
    .local v75, usb:Lcom/android/server/usb/UsbService;
    :try_start_37c
    const-string v5, "usb"

    move-object v0, v5

    move-object/from16 v1, v75

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_384
    .catch Ljava/lang/Throwable; {:try_start_37c .. :try_end_384} :catch_78d

    move-object/from16 v74, v75

    .line 419
    .end local v75           #usb:Lcom/android/server/usb/UsbService;
    .restart local v74       #usb:Lcom/android/server/usb/UsbService;
    :goto_386
    :try_start_386
    const-string v5, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v73, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v73

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_395
    .catch Ljava/lang/Throwable; {:try_start_386 .. :try_end_395} :catch_6e9

    .end local v72           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v73, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v72, v73

    .line 427
    .end local v73           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v72       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_397
    const/16 v49, 0x0

    .line 429
    .local v49, hasKeyboardFeature:Z
    :try_start_399
    const-string v5, "asus.hardware.keyboard"

    move-object/from16 v0, v61

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_3a1
    .catch Landroid/os/RemoteException; {:try_start_399 .. :try_end_3a1} :catch_78a

    move-result v49

    .line 432
    :goto_3a2
    if-eqz v49, :cond_3b5

    .line 434
    :try_start_3a4
    const-string v5, "SystemServer"

    const-string v9, "Dock Manager Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v45, Lcom/android/server/asus/DockManagerService;

    move-object/from16 v0, v45

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/asus/DockManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3b3
    .catch Ljava/lang/Throwable; {:try_start_3a4 .. :try_end_3b3} :catch_6f9

    .end local v44           #dockManager:Lcom/android/server/asus/DockManagerService;
    .local v45, dockManager:Lcom/android/server/asus/DockManagerService;
    move-object/from16 v44, v45

    .line 444
    .end local v45           #dockManager:Lcom/android/server/asus/DockManagerService;
    .restart local v44       #dockManager:Lcom/android/server/asus/DockManagerService;
    :cond_3b5
    :goto_3b5
    :try_start_3b5
    const-string v5, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v5, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c6
    .catch Ljava/lang/Throwable; {:try_start_3b5 .. :try_end_3c6} :catch_709

    .line 452
    :goto_3c6
    :try_start_3c6
    const-string v5, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v29, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_3d5
    .catch Ljava/lang/Throwable; {:try_start_3c6 .. :try_end_3d5} :catch_719

    .line 454
    .end local v28           #appWidget:Lcom/android/server/AppWidgetService;
    .local v29, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_3d5
    const-string v5, "appwidget"

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3dd
    .catch Ljava/lang/Throwable; {:try_start_3d5 .. :try_end_3dd} :catch_784

    move-object/from16 v28, v29

    .line 460
    .end local v29           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v28       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_3df
    :try_start_3df
    const-string v5, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v66, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v66

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3ee
    .catch Ljava/lang/Throwable; {:try_start_3df .. :try_end_3ee} :catch_729

    .end local v65           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v66, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v65, v66

    .line 467
    .end local v66           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v65       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_3f0
    :try_start_3f0
    const-string v5, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v5, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_401
    .catch Ljava/lang/Throwable; {:try_start_3f0 .. :try_end_401} :catch_739

    .line 478
    :goto_401
    :try_start_401
    const-string v5, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v5, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v6}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_412
    .catch Ljava/lang/Throwable; {:try_start_401 .. :try_end_412} :catch_749

    .line 486
    :goto_412
    :try_start_412
    const-string v5, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v58, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v58

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_421
    .catch Ljava/lang/Throwable; {:try_start_412 .. :try_end_421} :catch_759

    .end local v57           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v58, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v57, v58

    .line 493
    .end local v58           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v57       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_423
    :try_start_423
    const-string v5, "SystemServer"

    const-string v9, "UpdateLauncher Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v5, "updatelauncher"

    new-instance v9, Lcom/android/server/UpdateLauncherService;

    invoke-direct {v9, v6}, Lcom/android/server/UpdateLauncherService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_434
    .catch Ljava/lang/Throwable; {:try_start_423 .. :try_end_434} :catch_765

    .line 501
    .end local v49           #hasKeyboardFeature:Z
    :cond_434
    :goto_434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v9, "adb_enabled"

    const-string v10, "1"

    const-string v11, "persist.service.adb.enable"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_775

    const/4 v10, 0x1

    :goto_44a
    invoke-static {v5, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v9, "adb_enabled"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcom/android/server/ServerThread$AdbSettingsObserver;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ServerThread$AdbSettingsObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 510
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v21

    .line 511
    .local v21, safeMode:Z
    if-eqz v21, :cond_778

    .line 512
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 514
    const/4 v5, 0x1

    sput-boolean v5, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 516
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 524
    :goto_47b
    if-eqz v40, :cond_480

    .line 525
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V

    .line 528
    :cond_480
    if-eqz v59, :cond_485

    .line 529
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/NotificationManagerService;->systemReady()V

    .line 532
    :cond_485
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowManagerService;->systemReady()V

    .line 534
    if-eqz v21, :cond_491

    .line 535
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 541
    :cond_491
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v36

    .line 542
    .local v36, config:Landroid/content/res/Configuration;
    new-instance v56, Landroid/util/DisplayMetrics;

    invoke-direct/range {v56 .. v56}, Landroid/util/DisplayMetrics;-><init>()V

    .line 543
    .local v56, metrics:Landroid/util/DisplayMetrics;
    const-string v5, "window"

    invoke-virtual {v6, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/view/WindowManager;

    .line 544
    .local v76, w:Landroid/view/WindowManager;
    invoke-interface/range {v76 .. v76}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 545
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v36

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 547
    invoke-virtual {v8}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 549
    :try_start_4bb
    invoke-interface/range {v61 .. v61}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_4be
    .catch Landroid/os/RemoteException; {:try_start_4bb .. :try_end_4be} :catch_781

    .line 554
    :goto_4be
    move-object v12, v6

    .line 555
    .local v12, contextF:Landroid/content/Context;
    move-object v13, v7

    .line 556
    .local v13, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v14, v37

    .line 557
    .local v14, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v15, v42

    .line 558
    .local v15, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v16, v74

    .line 559
    .local v16, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v26, v70

    .line 560
    .local v26, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v17, v72

    .line 561
    .local v17, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v18, v44

    .line 562
    .local v18, dockManagerF:Lcom/android/server/asus/DockManagerService;
    move-object/from16 v20, v28

    .line 563
    .local v20, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v22, v77

    .line 564
    .local v22, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v23, v50

    .line 565
    .local v23, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v19, v65

    .line 566
    .local v19, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v24, v54

    .line 567
    .local v24, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v25, v38

    .line 568
    .local v25, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v27, v57

    .line 575
    .local v27, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/ServerThread$1;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v27}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/asus/DockManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;)V

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 604
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v5

    if-eqz v5, :cond_4f7

    .line 605
    const-string v5, "SystemServer"

    const-string v6, "Enabled StrictMode for system server main thread."

    .end local v6           #context:Landroid/content/Context;
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_4f7
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 609
    const-string v5, "SystemServer"

    const-string v6, "System ServerThread is exiting!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void

    .line 102
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v12           #contextF:Landroid/content/Context;
    .end local v13           #batteryF:Lcom/android/server/BatteryService;
    .end local v14           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v15           #dockF:Lcom/android/server/DockObserver;
    .end local v16           #usbF:Lcom/android/server/usb/UsbService;
    .end local v17           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v18           #dockManagerF:Lcom/android/server/asus/DockManagerService;
    .end local v19           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v20           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v21           #safeMode:Z
    .end local v22           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v23           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v24           #locationF:Lcom/android/server/LocationManagerService;
    .end local v25           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v26           #throttleF:Lcom/android/server/ThrottleService;
    .end local v27           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v28           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v31           #bluetooth:Landroid/server/BluetoothService;
    .end local v33           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v36           #config:Landroid/content/res/Configuration;
    .end local v37           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v38           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v40           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v42           #dock:Lcom/android/server/DockObserver;
    .end local v44           #dockManager:Lcom/android/server/asus/DockManagerService;
    .end local v47           #factoryTest:I
    .end local v48           #factoryTestStr:Ljava/lang/String;
    .end local v50           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v52           #lights:Lcom/android/server/LightsService;
    .end local v54           #location:Lcom/android/server/LocationManagerService;
    .end local v56           #metrics:Landroid/util/DisplayMetrics;
    .end local v57           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v59           #notification:Lcom/android/server/NotificationManagerService;
    .end local v61           #pm:Landroid/content/pm/IPackageManager;
    .end local v65           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v68           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v70           #throttle:Lcom/android/server/ThrottleService;
    .end local v72           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v74           #usb:Lcom/android/server/usb/UsbService;
    .end local v76           #w:Landroid/view/WindowManager;
    .end local v77           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v79           #wiredAccessory:Lcom/android/server/WiredAccessoryObserver;
    .end local v81           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_502
    const/4 v5, 0x0

    move/from16 v64, v5

    goto/16 :goto_37

    .line 108
    .restart local v64       #reboot:Z
    :cond_507
    const/16 v63, 0x0

    .restart local v63       #reason:Ljava/lang/String;
    goto/16 :goto_4b

    .line 116
    .end local v63           #reason:Ljava/lang/String;
    .end local v64           #reboot:Z
    .restart local v48       #factoryTestStr:Ljava/lang/String;
    :cond_50b
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v47, v5

    goto/16 :goto_66

    .line 155
    .restart local v6       #context:Landroid/content/Context;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    .restart local v30       #battery:Lcom/android/server/BatteryService;
    .restart local v31       #bluetooth:Landroid/server/BluetoothService;
    .restart local v33       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v37       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v42       #dock:Lcom/android/server/DockObserver;
    .restart local v44       #dockManager:Lcom/android/server/asus/DockManagerService;
    .restart local v47       #factoryTest:I
    .restart local v52       #lights:Lcom/android/server/LightsService;
    .restart local v57       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v61       #pm:Landroid/content/pm/IPackageManager;
    .restart local v65       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v70       #throttle:Lcom/android/server/ThrottleService;
    .restart local v72       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v74       #usb:Lcom/android/server/usb/UsbService;
    .restart local v79       #wiredAccessory:Lcom/android/server/WiredAccessoryObserver;
    .restart local v81       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_513
    const/4 v5, 0x0

    goto/16 :goto_d2

    .line 167
    :catch_516
    move-exception v5

    move-object/from16 v46, v5

    .line 168
    .local v46, e:Ljava/lang/Throwable;
    :try_start_519
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_524
    .catch Ljava/lang/RuntimeException; {:try_start_519 .. :try_end_524} :catch_526

    goto/16 :goto_f3

    .line 232
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_526
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v7, v30

    .line 233
    .end local v30           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .local v46, e:Ljava/lang/RuntimeException;
    :goto_52b
    const-string v5, "System"

    const-string v9, "Failure starting core service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b2

    .line 172
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v46           #e:Ljava/lang/RuntimeException;
    .restart local v30       #battery:Lcom/android/server/BatteryService;
    :cond_538
    const/4 v5, 0x0

    goto/16 :goto_101

    .line 201
    .end local v30           #battery:Lcom/android/server/BatteryService;
    .end local v52           #lights:Lcom/android/server/LightsService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .restart local v53       #lights:Lcom/android/server/LightsService;
    :cond_53b
    const/4 v5, 0x0

    goto/16 :goto_181

    .line 213
    :cond_53e
    const/4 v5, 0x1

    move/from16 v0, v47

    move v1, v5

    if-ne v0, v1, :cond_553

    .line 214
    :try_start_544
    const-string v5, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b0

    .line 232
    :catch_54d
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v52, v53

    .end local v53           #lights:Lcom/android/server/LightsService;
    .restart local v52       #lights:Lcom/android/server/LightsService;
    goto :goto_52b

    .line 216
    .end local v52           #lights:Lcom/android/server/LightsService;
    .restart local v53       #lights:Lcom/android/server/LightsService;
    :cond_553
    const-string v5, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v32, Landroid/server/BluetoothService;

    move-object/from16 v0, v32

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_562
    .catch Ljava/lang/RuntimeException; {:try_start_544 .. :try_end_562} :catch_54d

    .line 218
    .end local v31           #bluetooth:Landroid/server/BluetoothService;
    .local v32, bluetooth:Landroid/server/BluetoothService;
    :try_start_562
    const-string v5, "bluetooth"

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 219
    invoke-virtual/range {v32 .. v32}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 220
    new-instance v34, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v34

    move-object v1, v6

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_577
    .catch Ljava/lang/RuntimeException; {:try_start_562 .. :try_end_577} :catch_7de

    .line 221
    .end local v33           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v34, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_577
    const-string v5, "bluetooth_a2dp"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 223
    invoke-virtual/range {v32 .. v32}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v5, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    .line 227
    .local v35, bluetoothOn:I
    if-lez v35, :cond_593

    .line 228
    invoke-virtual/range {v32 .. v32}, Landroid/server/BluetoothService;->enable()Z
    :try_end_593
    .catch Ljava/lang/RuntimeException; {:try_start_577 .. :try_end_593} :catch_7e7

    :cond_593
    move-object/from16 v33, v34

    .end local v34           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v33       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v31, v32

    .end local v32           #bluetooth:Landroid/server/BluetoothService;
    .restart local v31       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_1b0

    .line 250
    .end local v35           #bluetoothOn:I
    .end local v53           #lights:Lcom/android/server/LightsService;
    .restart local v28       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v38       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v40       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v50       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v52       #lights:Lcom/android/server/LightsService;
    .restart local v54       #location:Lcom/android/server/LocationManagerService;
    .restart local v59       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v68       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v77       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_599
    move-exception v5

    move-object/from16 v46, v5

    .line 251
    .local v46, e:Ljava/lang/Throwable;
    :goto_59c
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DevicePolicyService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e1

    .line 258
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_5a9
    move-exception v5

    move-object/from16 v46, v5

    .line 259
    .restart local v46       #e:Ljava/lang/Throwable;
    :goto_5ac
    const-string v5, "SystemServer"

    const-string v9, "Failure starting StatusBarManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1fc

    .line 266
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_5b9
    move-exception v5

    move-object/from16 v46, v5

    .line 267
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Clipboard Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20d

    .line 274
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_5c9
    move-exception v5

    move-object/from16 v46, v5

    .line 275
    .restart local v46       #e:Ljava/lang/Throwable;
    :goto_5cc
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Input Manager Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_228

    .line 281
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_5d9
    move-exception v5

    move-object/from16 v46, v5

    .line 282
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetStat Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_239

    .line 290
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_5e9
    move-exception v5

    move-object/from16 v46, v5

    .line 291
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetworkManagement Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_249

    .line 298
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_5f9
    move-exception v5

    move-object/from16 v46, v5

    .line 299
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Connectivity Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25c

    .line 307
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_609
    move-exception v5

    move-object/from16 v46, v5

    .line 308
    .restart local v46       #e:Ljava/lang/Throwable;
    :goto_60c
    const-string v5, "SystemServer"

    const-string v9, "Failure starting ThrottleService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_275

    .line 315
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_619
    move-exception v5

    move-object/from16 v46, v5

    .line 316
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Accessibility Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_286

    .line 326
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_629
    move-exception v5

    move-object/from16 v46, v5

    .line 327
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Mount Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_297

    .line 334
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_639
    move-exception v5

    move-object/from16 v46, v5

    .line 335
    .restart local v46       #e:Ljava/lang/Throwable;
    :goto_63c
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Notification Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b4

    .line 342
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_649
    move-exception v5

    move-object/from16 v46, v5

    .line 343
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DeviceStorageMonitor service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c5

    .line 350
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_659
    move-exception v5

    move-object/from16 v46, v5

    .line 351
    .restart local v46       #e:Ljava/lang/Throwable;
    :goto_65c
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Location Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2de

    .line 358
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_669
    move-exception v5

    move-object/from16 v46, v5

    .line 359
    .restart local v46       #e:Ljava/lang/Throwable;
    :goto_66c
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Country Detector"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f7

    .line 366
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_679
    move-exception v5

    move-object/from16 v46, v5

    .line 367
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Search Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_308

    .line 374
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_689
    move-exception v5

    move-object/from16 v46, v5

    .line 375
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DropBoxManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_320

    .line 382
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_699
    move-exception v5

    move-object/from16 v46, v5

    .line 383
    .restart local v46       #e:Ljava/lang/Throwable;
    :goto_69c
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Wallpaper Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_339

    .line 389
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_6a9
    move-exception v5

    move-object/from16 v46, v5

    .line 390
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Audio Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34a

    .line 397
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_6b9
    move-exception v5

    move-object/from16 v46, v5

    .line 398
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DockObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35c

    .line 405
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_6c9
    move-exception v5

    move-object/from16 v46, v5

    .line 406
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting WiredAccessoryObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36d

    .line 414
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_6d9
    move-exception v5

    move-object/from16 v46, v5

    .line 415
    .restart local v46       #e:Ljava/lang/Throwable;
    :goto_6dc
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UsbService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_386

    .line 422
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_6e9
    move-exception v5

    move-object/from16 v46, v5

    .line 423
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UiModeManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_397

    .line 437
    .end local v46           #e:Ljava/lang/Throwable;
    .restart local v49       #hasKeyboardFeature:Z
    :catch_6f9
    move-exception v5

    move-object/from16 v46, v5

    .line 438
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DockManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b5

    .line 447
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_709
    move-exception v5

    move-object/from16 v46, v5

    .line 448
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c6

    .line 455
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_719
    move-exception v5

    move-object/from16 v46, v5

    .line 456
    .restart local v46       #e:Ljava/lang/Throwable;
    :goto_71c
    const-string v5, "SystemServer"

    const-string v9, "Failure starting AppWidget Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3df

    .line 462
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_729
    move-exception v5

    move-object/from16 v46, v5

    .line 463
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Recognition Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f0

    .line 469
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_739
    move-exception v5

    move-object/from16 v46, v5

    .line 470
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DiskStats Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_401

    .line 481
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_749
    move-exception v5

    move-object/from16 v46, v5

    .line 482
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting SamplingProfiler Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_412

    .line 488
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_759
    move-exception v5

    move-object/from16 v46, v5

    .line 489
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetworkTimeUpdate service"

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_423

    .line 495
    .end local v46           #e:Ljava/lang/Throwable;
    :catch_765
    move-exception v5

    move-object/from16 v46, v5

    .line 496
    .restart local v46       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UpdateLauncher Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_434

    .line 501
    .end local v46           #e:Ljava/lang/Throwable;
    .end local v49           #hasKeyboardFeature:Z
    :cond_775
    const/4 v10, 0x0

    goto/16 :goto_44a

    .line 519
    .restart local v21       #safeMode:Z
    :cond_778
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_47b

    .line 550
    .restart local v36       #config:Landroid/content/res/Configuration;
    .restart local v56       #metrics:Landroid/util/DisplayMetrics;
    .restart local v76       #w:Landroid/view/WindowManager;
    :catch_781
    move-exception v5

    goto/16 :goto_4be

    .line 455
    .end local v21           #safeMode:Z
    .end local v28           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v36           #config:Landroid/content/res/Configuration;
    .end local v56           #metrics:Landroid/util/DisplayMetrics;
    .end local v76           #w:Landroid/view/WindowManager;
    .restart local v29       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v49       #hasKeyboardFeature:Z
    :catch_784
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v28, v29

    .end local v29           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v28       #appWidget:Lcom/android/server/AppWidgetService;
    goto :goto_71c

    .line 430
    :catch_78a
    move-exception v5

    goto/16 :goto_3a2

    .line 414
    .end local v49           #hasKeyboardFeature:Z
    .end local v74           #usb:Lcom/android/server/usb/UsbService;
    .restart local v75       #usb:Lcom/android/server/usb/UsbService;
    :catch_78d
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v74, v75

    .end local v75           #usb:Lcom/android/server/usb/UsbService;
    .restart local v74       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_6dc

    .line 382
    .end local v77           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v78       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_794
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v77, v78

    .end local v78           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v77       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_69c

    .line 358
    .end local v38           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v39       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_79b
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v38, v39

    .end local v39           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v38       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_66c

    .line 350
    .end local v54           #location:Lcom/android/server/LocationManagerService;
    .restart local v55       #location:Lcom/android/server/LocationManagerService;
    :catch_7a2
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v54, v55

    .end local v55           #location:Lcom/android/server/LocationManagerService;
    .restart local v54       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_65c

    .line 334
    .end local v59           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v60       #notification:Lcom/android/server/NotificationManagerService;
    :catch_7a9
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v59, v60

    .end local v60           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v59       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_63c

    .line 307
    .end local v70           #throttle:Lcom/android/server/ThrottleService;
    .restart local v71       #throttle:Lcom/android/server/ThrottleService;
    :catch_7b0
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v70, v71

    .end local v71           #throttle:Lcom/android/server/ThrottleService;
    .restart local v70       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_60c

    .line 274
    .end local v50           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v51       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_7b7
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v50, v51

    .end local v51           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v50       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_5cc

    .line 258
    .end local v68           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v69       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_7be
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v68, v69

    .end local v69           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v68       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_5ac

    .line 250
    .end local v40           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v41       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_7c5
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v40, v41

    .end local v41           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v40       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_59c

    .line 232
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v28           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v38           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v40           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v50           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v54           #location:Lcom/android/server/LocationManagerService;
    .end local v59           #notification:Lcom/android/server/NotificationManagerService;
    .end local v68           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v77           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v30       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #power:Lcom/android/server/PowerManagerService;
    :catch_7cc
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v7, v30

    .end local v30           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v8, v62

    .end local v62           #power:Lcom/android/server/PowerManagerService;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_52b

    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v52           #lights:Lcom/android/server/LightsService;
    .restart local v30       #battery:Lcom/android/server/BatteryService;
    .restart local v53       #lights:Lcom/android/server/LightsService;
    :catch_7d5
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v7, v30

    .end local v30           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v52, v53

    .end local v53           #lights:Lcom/android/server/LightsService;
    .restart local v52       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_52b

    .end local v31           #bluetooth:Landroid/server/BluetoothService;
    .end local v52           #lights:Lcom/android/server/LightsService;
    .restart local v32       #bluetooth:Landroid/server/BluetoothService;
    .restart local v53       #lights:Lcom/android/server/LightsService;
    :catch_7de
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v31, v32

    .end local v32           #bluetooth:Landroid/server/BluetoothService;
    .restart local v31       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v52, v53

    .end local v53           #lights:Lcom/android/server/LightsService;
    .restart local v52       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_52b

    .end local v31           #bluetooth:Landroid/server/BluetoothService;
    .end local v33           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v52           #lights:Lcom/android/server/LightsService;
    .restart local v32       #bluetooth:Landroid/server/BluetoothService;
    .restart local v34       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v53       #lights:Lcom/android/server/LightsService;
    :catch_7e7
    move-exception v5

    move-object/from16 v46, v5

    move-object/from16 v33, v34

    .end local v34           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v33       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v31, v32

    .end local v32           #bluetooth:Landroid/server/BluetoothService;
    .restart local v31       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v52, v53

    .end local v53           #lights:Lcom/android/server/LightsService;
    .restart local v52       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_52b
.end method
