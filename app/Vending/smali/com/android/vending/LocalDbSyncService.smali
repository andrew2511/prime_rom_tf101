.class public Lcom/android/vending/LocalDbSyncService;
.super Lcom/android/vending/compat/VendingService;
.source "LocalDbSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static mDeactivatedForTests:Z

.field private static mRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/android/vending/LocalDbSyncService;->mDeactivatedForTests:Z

    .line 23
    sput-boolean v0, Lcom/android/vending/LocalDbSyncService;->mRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/vending/compat/VendingService;-><init>()V

    return-void
.end method

.method public static activateAfterTests()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/LocalDbSyncService;->mDeactivatedForTests:Z

    .line 32
    return-void
.end method

.method public static deactivateForTests()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/vending/LocalDbSyncService;->mDeactivatedForTests:Z

    .line 28
    return-void
.end method

.method public static installationOrUninstallationInitiated()V
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/android/vending/LocalDbSyncService;->mDeactivatedForTests:Z

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/vending/LocalDbSyncService;->setIsSyncRequired(Z)V

    goto :goto_0
.end method

.method public static isSyncRequired()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/vending/LocalDbSyncService;->mDeactivatedForTests:Z

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->DB_SYNC_REQUIRED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private static setIsSyncRequired(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 87
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->DB_SYNC_REQUIRED:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x2

    .line 41
    if-eqz p1, :cond_0

    sget-boolean v1, Lcom/android/vending/LocalDbSyncService;->mDeactivatedForTests:Z

    if-eqz v1, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/LocalDbSyncService;->stopSelf()V

    move v1, v3

    .line 59
    :goto_0
    return v1

    .line 45
    :cond_1
    const-class v1, Lcom/android/vending/LocalDbSyncService;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-boolean v2, Lcom/android/vending/LocalDbSyncService;->mRunning:Z

    if-eqz v2, :cond_2

    .line 49
    monitor-exit v1

    move v1, v3

    goto :goto_0

    .line 51
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/vending/LocalDbSyncService;->mRunning:Z

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Vending-LocalDbSyncService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 56
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v1, v3

    .line 59
    goto :goto_0

    .line 53
    .end local v0           #t:Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    const-string v0, "Syncing local DB with package manager..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/vending/api/LocalAssetDatabase;->syncWithPackageManager(Landroid/content/Context;)V

    .line 65
    sput-boolean v2, Lcom/android/vending/LocalDbSyncService;->mRunning:Z

    .line 66
    invoke-static {v2}, Lcom/android/vending/LocalDbSyncService;->setIsSyncRequired(Z)V

    .line 67
    const-string v0, "Syncing done."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/vending/LocalDbSyncService;->stopSelf()V

    .line 69
    return-void
.end method
