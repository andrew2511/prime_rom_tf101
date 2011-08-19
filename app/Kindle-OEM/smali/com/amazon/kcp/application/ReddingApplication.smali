.class public Lcom/amazon/kcp/application/ReddingApplication;
.super Landroid/app/Application;
.source "ReddingApplication.java"


# static fields
.field public static final APP_START_TIMER:Ljava/lang/String; = "ApplicationStartTimer"

.field public static final HAS_ACTION_BAR:Z

.field public static final HAS_SEARCH_VIEW:Z

.field static defaultApplicationContext:Landroid/content/Context;


# instance fields
.field private appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field private appStartupFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/amazon/android/widget/SearchViewWrapper$Availability;->isAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_SEARCH_VIEW:Z

    .line 58
    const/4 v0, 0x0

    .line 61
    :try_start_0
    const-string v1, "android.app.ActionBar"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v0, 0x1

    .line 68
    :goto_0
    sput-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_ACTION_BAR:Z

    .line 69
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->appStartupFailed:Z

    return-void
.end method

.method public static getDefaultApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->defaultApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private final getInternalVersion()J
    .locals 5

    .prologue
    .line 195
    const-wide/16 v0, 0x0

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 202
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "KindleVersionNumber"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    if-eqz v2, :cond_0

    .line 205
    const-string v3, "version="

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 206
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 208
    const-string v4, "version="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 209
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 220
    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    return-object v0
.end method

.method public hasAppStartupFailed()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->appStartupFailed:Z

    return v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 74
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 76
    sput-object p0, Lcom/amazon/kcp/application/ReddingApplication;->defaultApplicationContext:Landroid/content/Context;

    .line 97
    const-string v0, "KindleOEM"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/application/ReddingApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    const-string v1, "ranStub"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    const-string v1, "ranStub"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ApplicationStartTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/performance/KCPInstrumentation;->initializeUnused()V

    .line 112
    new-instance v0, Lcom/amazon/android/system/AndroidUtilities;

    invoke-direct {v0}, Lcom/amazon/android/system/AndroidUtilities;-><init>()V

    invoke-static {v0}, Lcom/amazon/system/SynchronizationUtilities;->setUtilities(Lcom/amazon/system/Utilities;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getInternalVersion()J

    move-result-wide v4

    .line 123
    :try_start_1
    new-instance v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    new-instance v1, Lcom/amazon/android/system/AndroidUtilities;

    invoke-direct {v1}, Lcom/amazon/android/system/AndroidUtilities;-><init>()V

    new-instance v2, Lcom/amazon/kcp/application/AndroidSecureStorage;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/application/AndroidSecureStorage;-><init>(Landroid/content/Context;)V

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/application/AndroidApplicationController;-><init>(Lcom/amazon/android/system/AndroidUtilities;Lcom/amazon/kcp/application/ISecureStorage;Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;
    :try_end_1
    .catch Lcom/amazon/kcp/application/ResourceUnavailableException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :goto_1
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->appStartupFailed:Z

    if-nez v0, :cond_1

    .line 135
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v0, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v0, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v0, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v0, "file"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/application/ReddingApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    :cond_1
    return-void

    .line 128
    :catch_0
    move-exception v0

    iput-boolean v6, p0, Lcom/amazon/kcp/application/ReddingApplication;->appStartupFailed:Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 5

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 154
    iget-boolean v1, p0, Lcom/amazon/kcp/application/ReddingApplication;->appStartupFailed:Z

    if-nez v1, :cond_0

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v0, metricData:Ljava/util/Map;
    invoke-static {}, Lcom/amazon/kcp/cover/CoverManager;->getInstance()Lcom/amazon/kcp/cover/CoverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/cover/CoverManager;->onLowMemory(Ljava/util/Map;)V

    .line 159
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "ReddingApplication"

    const-string v3, "OnLowMemory"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->WARN:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 161
    .end local v0           #metricData:Ljava/util/Map;
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 168
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->appStartupFailed:Z

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/ReddingApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->exit()V

    .line 173
    :cond_0
    return-void
.end method
