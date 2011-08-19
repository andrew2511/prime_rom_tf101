.class public Lcom/google/android/common/datarequest/DrdUtil;
.super Ljava/lang/Object;
.source "DrdUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/datarequest/DrdUtil$1;,
        Lcom/google/android/common/datarequest/DrdUtil$LogPrinter;
    }
.end annotation


# static fields
.field private static sAppVersionName:Ljava/lang/String;

.field private static sIsInitialized:Z

.field private static sLogTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "DRD"

    sput-object v0, Lcom/google/android/common/datarequest/DrdUtil;->sLogTag:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/common/datarequest/DrdUtil;->sIsInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static declared-synchronized cleanupConfigAndDrd()V
    .locals 3

    .prologue
    .line 120
    const-class v1, Lcom/google/android/common/datarequest/DrdUtil;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/google/android/common/datarequest/DrdUtil;->sIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 131
    :goto_0
    monitor-exit v1

    return-void

    .line 124
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->getInstance()Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 125
    .local v0, dispatcher:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->stop()V

    .line 127
    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clearInstance()V

    .line 130
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/android/common/datarequest/DrdUtil;->sIsInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    .end local v0           #dispatcher:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private static createDataRequestDispatcher(Landroid/content/Context;Ljava/lang/String;)Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    .locals 6
    .parameter "context"
    .parameter "appName"

    .prologue
    .line 140
    const-string v1, "http://mobilemaps.clients.google.com/glm/mmap"

    invoke-static {}, Lcom/google/mobile/common/android/AndroidConfig;->getPlatformID()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/common/datarequest/DrdUtil;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/mobile/common/Config;->getDistributionChannel()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 151
    .local v0, dispatcher:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "logging_id2"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->setAndroidLoggingId2(Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->setGzipEnabled(Z)V

    .line 158
    const-string v1, "SYSTEM"

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->setAndroidSignature(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->setApplicationName(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->setScreenPixelDensity(I)V

    .line 164
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->setMaxNetworkErrorRetryTimeout(J)V

    .line 166
    return-object v0
.end method

.method public static declared-synchronized getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 72
    const-class v1, Lcom/google/android/common/datarequest/DrdUtil;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/common/datarequest/DrdUtil;->sAppVersionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 74
    :try_start_1
    invoke-static {p0}, Lcom/google/android/common/datarequest/DrdUtil;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/google/android/common/datarequest/DrdUtil;->sAppVersionName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Lcom/google/android/common/datarequest/DrdUtil;->sAppVersionName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v2

    .line 75
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 76
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-object v2, Lcom/google/android/common/datarequest/DrdUtil;->sLogTag:Ljava/lang/String;

    const-string v3, "Couldn\'t get the PackageInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const-string v2, "1.5.0"

    sput-object v2, Lcom/google/android/common/datarequest/DrdUtil;->sAppVersionName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 72
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized setupConfigAndDrd(Landroid/content/Context;Ljava/lang/String;Lcom/google/mobile/googlenav/datarequest/DataRequestListener;)V
    .locals 4
    .parameter "context"
    .parameter "appName"
    .parameter "listener"

    .prologue
    .line 94
    const-class v1, Lcom/google/android/common/datarequest/DrdUtil;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/google/android/common/datarequest/DrdUtil;->sIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 116
    :goto_0
    monitor-exit v1

    return-void

    .line 98
    :cond_0
    :try_start_1
    sput-object p1, Lcom/google/android/common/datarequest/DrdUtil;->sLogTag:Ljava/lang/String;

    .line 99
    new-instance v2, Lcom/google/android/common/datarequest/DrdUtil$LogPrinter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/common/datarequest/DrdUtil$LogPrinter;-><init>(Lcom/google/android/common/datarequest/DrdUtil$1;)V

    invoke-static {v2}, Lcom/google/mobile/common/Log;->setPrinter(Lcom/google/mobile/common/Log$Printer;)V

    .line 101
    invoke-static {}, Lcom/google/mobile/common/Config;->getInstance()Lcom/google/mobile/common/Config;

    move-result-object v2

    if-nez v2, :cond_1

    .line 102
    new-instance v2, Lcom/google/mobile/common/android/AndroidConfig;

    invoke-direct {v2, p0}, Lcom/google/mobile/common/android/AndroidConfig;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/google/mobile/common/Config;->setConfig(Lcom/google/mobile/common/Config;)V

    .line 106
    :cond_1
    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->getInstance()Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 107
    .local v0, dispatcher:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    if-nez v0, :cond_2

    .line 108
    invoke-static {p0, p1}, Lcom/google/android/common/datarequest/DrdUtil;->createDataRequestDispatcher(Landroid/content/Context;Ljava/lang/String;)Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 110
    :cond_2
    if-eqz p2, :cond_3

    .line 111
    invoke-virtual {v0, p2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->addDataRequestListener(Lcom/google/mobile/googlenav/datarequest/DataRequestListener;)V

    .line 113
    :cond_3
    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->start()V

    .line 115
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/common/datarequest/DrdUtil;->sIsInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    .end local v0           #dispatcher:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method
