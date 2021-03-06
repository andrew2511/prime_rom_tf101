.class public Landroid/app/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$1;,
        Landroid/app/ActivityManager$RunningAppProcessInfo;,
        Landroid/app/ActivityManager$ProcessErrorStateInfo;,
        Landroid/app/ActivityManager$MemoryInfo;,
        Landroid/app/ActivityManager$RunningServiceInfo;,
        Landroid/app/ActivityManager$RunningTaskInfo;,
        Landroid/app/ActivityManager$RecentTaskInfo;
    }
.end annotation


# static fields
.field public static final COMPAT_MODE_ALWAYS:I = -0x1

.field public static final COMPAT_MODE_DISABLED:I = 0x0

.field public static final COMPAT_MODE_ENABLED:I = 0x1

.field public static final COMPAT_MODE_NEVER:I = -0x2

.field public static final COMPAT_MODE_TOGGLE:I = 0x2

.field public static final COMPAT_MODE_UNKNOWN:I = -0x3

.field private static DEBUG:Z = false

.field public static final MOVE_TASK_NO_USER_ACTION:I = 0x2

.field public static final MOVE_TASK_WITH_HOME:I = 0x1

.field public static final RECENT_IGNORE_UNAVAILABLE:I = 0x2

.field public static final RECENT_WITH_EXCLUDED:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field public static final TASKS_GET_THUMBNAILS:I = 0x1000

.field private static localLOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const-string v0, "ActivityManager"

    sput-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    .line 50
    sput-boolean v1, Landroid/app/ActivityManager;->DEBUG:Z

    .line 51
    sget-boolean v0, Landroid/app/ActivityManager;->DEBUG:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_c
    sput-boolean v0, Landroid/app/ActivityManager;->localLOGV:Z

    return-void

    :cond_f
    const/4 v0, 0x1

    goto :goto_c
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Landroid/app/ActivityManager;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method public static isRunningInTestHarness()Z
    .registers 2

    .prologue
    .line 1358
    const-string/jumbo v0, "ro.test_harness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUserAMonkey()Z
    .registers 1

    .prologue
    .line 1348
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isUserAMonkey()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 1351
    :goto_8
    return v0

    .line 1349
    :catch_9
    move-exception v0

    .line 1351
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static staticGetLargeMemoryClass()I
    .registers 4

    .prologue
    .line 223
    const-string v1, "dalvik.vm.heapsize"

    const-string v2, "16m"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, vmHeapSize:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static staticGetMemoryClass()I
    .registers 4

    .prologue
    .line 195
    const-string v1, "dalvik.vm.heapgrowthlimit"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, vmHeapSize:Ljava/lang/String;
    if-eqz v0, :cond_22

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 199
    :goto_21
    return v1

    :cond_22
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v1

    goto :goto_21
.end method


# virtual methods
.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .registers 5
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 831
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 834
    :goto_8
    return v1

    .line 833
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 834
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 1266
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1269
    :goto_7
    return-void

    .line 1267
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public getAllPackageLaunchCounts()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1368
    :try_start_0
    const-string/jumbo v8, "usagestats"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v7

    .line 1370
    .local v7, usageStatsService:Lcom/android/internal/app/IUsageStats;
    if-nez v7, :cond_13

    .line 1371
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1387
    .end local v7           #usageStatsService:Lcom/android/internal/app/IUsageStats;
    :goto_12
    return-object v8

    .line 1374
    .restart local v7       #usageStatsService:Lcom/android/internal/app/IUsageStats;
    :cond_13
    invoke-interface {v7}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v0

    .line 1375
    .local v0, allPkgUsageStats:[Lcom/android/internal/os/PkgUsageStats;
    if-nez v0, :cond_2e

    .line 1376
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_12

    .line 1385
    .end local v0           #allPkgUsageStats:[Lcom/android/internal/os/PkgUsageStats;
    .end local v7           #usageStatsService:Lcom/android/internal/app/IUsageStats;
    :catch_1f
    move-exception v8

    move-object v2, v8

    .line 1386
    .local v2, e:Landroid/os/RemoteException;
    sget-object v8, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    const-string v9, "Could not query launch counts"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1387
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    goto :goto_12

    .line 1379
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #allPkgUsageStats:[Lcom/android/internal/os/PkgUsageStats;
    .restart local v7       #usageStatsService:Lcom/android/internal/app/IUsageStats;
    :cond_2e
    :try_start_2e
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1380
    .local v4, launchCounts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v1, v0

    .local v1, arr$:[Lcom/android/internal/os/PkgUsageStats;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_36
    if-ge v3, v5, :cond_48

    aget-object v6, v1, v3

    .line 1381
    .local v6, pkgUsageStats:Lcom/android/internal/os/PkgUsageStats;
    iget-object v8, v6, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    iget v9, v6, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_45} :catch_1f

    .line 1380
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .end local v6           #pkgUsageStats:Lcom/android/internal/os/PkgUsageStats;
    :cond_48
    move-object v8, v4

    .line 1384
    goto :goto_12
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .registers 2

    .prologue
    .line 1276
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 1279
    :goto_8
    return-object v0

    .line 1277
    :catch_9
    move-exception v0

    .line 1279
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getFrontActivityScreenCompatMode()I
    .registers 3

    .prologue
    .line 105
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFrontActivityScreenCompatMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 108
    :goto_8
    return v1

    .line 106
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 108
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getLargeMemoryClass()I
    .registers 2

    .prologue
    .line 216
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    move-result v0

    return v0
.end method

.method public getLauncherLargeIconDensity()I
    .registers 6

    .prologue
    const/16 v4, 0x140

    .line 1289
    iget-object v2, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1290
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1292
    .local v0, density:I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1b

    move v2, v0

    .line 1307
    :goto_1a
    return v2

    .line 1297
    :cond_1b
    sparse-switch v0, :sswitch_data_2a

    move v2, v0

    .line 1307
    goto :goto_1a

    .line 1299
    :sswitch_20
    const/16 v2, 0xa0

    goto :goto_1a

    .line 1301
    :sswitch_23
    const/16 v2, 0xf0

    goto :goto_1a

    :sswitch_26
    move v2, v4

    .line 1303
    goto :goto_1a

    :sswitch_28
    move v2, v4

    .line 1305
    goto :goto_1a

    .line 1297
    :sswitch_data_2a
    .sparse-switch
        0x78 -> :sswitch_20
        0xa0 -> :sswitch_23
        0xf0 -> :sswitch_26
        0x140 -> :sswitch_28
    .end sparse-switch
.end method

.method public getLauncherLargeIconSize()I
    .registers 6

    .prologue
    .line 1318
    iget-object v3, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1319
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v3, 0x105

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1321
    .local v2, size:I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-eq v3, v4, :cond_19

    move v3, v2

    .line 1338
    :goto_18
    return v3

    .line 1326
    :cond_19
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1328
    .local v0, density:I
    sparse-switch v0, :sswitch_data_3a

    move v3, v2

    .line 1338
    goto :goto_18

    .line 1330
    :sswitch_24
    mul-int/lit16 v3, v2, 0xa0

    div-int/lit8 v3, v3, 0x78

    goto :goto_18

    .line 1332
    :sswitch_29
    mul-int/lit16 v3, v2, 0xf0

    div-int/lit16 v3, v3, 0xa0

    goto :goto_18

    .line 1334
    :sswitch_2e
    mul-int/lit16 v3, v2, 0x140

    div-int/lit16 v3, v3, 0xf0

    goto :goto_18

    .line 1336
    :sswitch_33
    mul-int/lit16 v3, v2, 0xa0

    mul-int/lit8 v3, v3, 0x2

    div-int/lit16 v3, v3, 0x140

    goto :goto_18

    .line 1328
    :sswitch_data_3a
    .sparse-switch
        0x78 -> :sswitch_24
        0xa0 -> :sswitch_29
        0xf0 -> :sswitch_2e
        0x140 -> :sswitch_33
    .end sparse-switch
.end method

.method public getMemoryClass()I
    .registers 2

    .prologue
    .line 188
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    move-result v0

    return v0
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 3
    .parameter "outInfo"

    .prologue
    .line 821
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 824
    :goto_7
    return-void

    .line 822
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .registers 4
    .parameter "packageName"

    .prologue
    .line 163
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getPackageAskScreenCompat(Ljava/lang/String;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 166
    :goto_8
    return v1

    .line 164
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .registers 4
    .parameter "packageName"

    .prologue
    .line 124
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 127
    :goto_8
    return v1

    .line 125
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 127
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .registers 4
    .parameter "pids"

    .prologue
    .line 1208
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1210
    :goto_8
    return-object v1

    .line 1209
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 1210
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 952
    :goto_8
    return-object v1

    .line 951
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 952
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .registers 5
    .parameter "maxNum"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 350
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->getRecentTasks(II)Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 354
    :goto_8
    return-object v1

    .line 352
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 354
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1192
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1194
    :goto_8
    return-object v1

    .line 1193
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 1194
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRunningExternalApplications()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1177
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningExternalApplications()Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1179
    :goto_8
    return-object v1

    .line 1178
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 1179
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 4
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 751
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 755
    :goto_8
    return-object v1

    .line 753
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 755
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRunningServices(I)Ljava/util/List;
    .registers 5
    .parameter "maxNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 735
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    .line 739
    :goto_9
    return-object v1

    .line 737
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 739
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getRunningTasks(I)Ljava/util/List;
    .registers 4
    .parameter "maxNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 513
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;
    .registers 6
    .parameter "maxNum"
    .parameter "flags"
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/app/IThumbnailReceiver;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 486
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 489
    :goto_8
    return-object v1

    .line 487
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 489
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getTaskThumbnail(I)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 519
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getTaskThumbnail(I)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 522
    :goto_8
    return-object v1

    .line 520
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 522
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isPkgInResolutionBackwardPkgs(Ljava/lang/String;)Z
    .registers 4
    .parameter "pkg"

    .prologue
    .line 135
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->isPkgInResolutionBackwardPkgs(Ljava/lang/String;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 138
    :goto_8
    return v1

    .line 136
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 138
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public killBackgroundProcesses(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 1241
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1244
    :goto_7
    return-void

    .line 1242
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public moveTaskToFront(II)V
    .registers 4
    .parameter "taskId"
    .parameter "flags"

    .prologue
    .line 553
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->moveTaskToFront(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 557
    :goto_7
    return-void

    .line 554
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public restartPackage(Ljava/lang/String;)V
    .registers 2
    .parameter "packageName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1223
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setFrontActivityScreenCompatMode(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 119
    :goto_7
    return-void

    .line 116
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .registers 4
    .parameter "packageName"
    .parameter "ask"

    .prologue
    .line 173
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 177
    :goto_7
    return-void

    .line 174
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .registers 4
    .parameter "packageName"
    .parameter "mode"

    .prologue
    .line 154
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 158
    :goto_7
    return-void

    .line 155
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public writeResolutionBackwardPackages(Ljava/lang/String;Z)V
    .registers 5
    .parameter "pkgName"
    .parameter "isAdd"

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->writeResolutionBackwardPackages(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 149
    :goto_7
    return-void

    .line 146
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method
