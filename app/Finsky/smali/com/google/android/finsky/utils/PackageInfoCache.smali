.class public Lcom/google/android/finsky/utils/PackageInfoCache;
.super Ljava/lang/Object;
.source "PackageInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    }
.end annotation


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter "context"
    .parameter "pm"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 34
    new-instance v0, Lcom/google/android/finsky/utils/PackageInfoCache$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/utils/PackageInfoCache$1;-><init>(Lcom/google/android/finsky/utils/PackageInfoCache;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mPackageMonitor:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mPackageMonitor:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->register(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/utils/PackageInfoCache;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/utils/PackageInfoCache;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized updatePackageInfo(Ljava/lang/String;)V
    .locals 9
    .parameter "packageName"

    .prologue
    const/4 v8, 0x0

    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .local v3, packageInfo:Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    if-eqz v3, :cond_0

    .line 119
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    const/4 v5, -0x1

    .line 96
    .local v5, versionCode:I
    const-wide/16 v1, -0x1

    .line 97
    .local v1, firstInstallTime:J
    const/4 v0, 0x0

    .line 99
    .local v0, canLaunch:Z
    :try_start_1
    iget-object v6, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 100
    .local v4, pi:Landroid/content/pm/PackageInfo;
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 103
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "firstInstallTime"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v1

    .line 104
    iget-object v6, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    move v0, v6

    .line 117
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :goto_1
    :try_start_2
    new-instance v3, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;

    .end local v3           #packageInfo:Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    invoke-direct {v3, v5, v1, v2, v0}, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;-><init>(IJZ)V

    .line 118
    .restart local v3       #packageInfo:Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    iget-object v6, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v6, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 90
    .end local v0           #canLaunch:Z
    .end local v1           #firstInstallTime:J
    .end local v3           #packageInfo:Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    .end local v5           #versionCode:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v0       #canLaunch:Z
    .restart local v1       #firstInstallTime:J
    .restart local v3       #packageInfo:Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    .restart local v4       #pi:Landroid/content/pm/PackageInfo;
    .restart local v5       #versionCode:I
    :cond_1
    move v0, v8

    .line 104
    goto :goto_1

    .line 113
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 111
    :catch_1
    move-exception v6

    goto :goto_1

    .line 109
    :catch_2
    move-exception v6

    goto :goto_1

    .line 107
    :catch_3
    move-exception v6

    goto :goto_1

    .line 105
    :catch_4
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized canLaunch(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;

    iget-boolean v0, v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->canLaunch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPackageVersion(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;

    iget v0, v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSystemFirstInstallTime(Landroid/content/Context;)J
    .locals 3
    .parameter "context"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, packageName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;

    iget-wide v1, v1, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->firstInstallTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v1

    .line 126
    .end local v0           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isPackageInstalled(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSystemPackage(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;

    iget-wide v0, v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->firstInstallTime:J

    iget-object v2, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/utils/PackageInfoCache;->getSystemFirstInstallTime(Landroid/content/Context;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
