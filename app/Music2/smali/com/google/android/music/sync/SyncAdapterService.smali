.class public Lcom/google/android/music/sync/SyncAdapterService;
.super Landroid/app/Service;
.source "SyncAdapterService.java"


# static fields
.field private static sSyncAdapter:Lcom/google/android/music/sync/google/MusicSyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapter:Lcom/google/android/music/sync/google/MusicSyncAdapter;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static isSyncActive(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapter:Lcom/google/android/music/sync/google/MusicSyncAdapter;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapter:Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->isSyncActive(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapter:Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 24
    sget-object v2, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 25
    :try_start_0
    sget-object v3, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapter:Lcom/google/android/music/sync/google/MusicSyncAdapter;

    if-nez v3, :cond_0

    .line 26
    new-instance v0, Lcom/google/android/music/sync/google/MusicAuthInfo;

    invoke-virtual {p0}, Lcom/google/android/music/sync/SyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, authInfo:Lcom/google/android/music/sync/common/AuthInfo;
    new-instance v1, Lcom/google/android/music/sync/api/MusicApiClientImpl;

    invoke-virtual {p0}, Lcom/google/android/music/sync/SyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl;-><init>(Landroid/content/Context;Lcom/google/android/music/sync/common/AuthInfo;)V

    .line 30
    .local v1, musicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;
    invoke-static {}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->newBuilder()Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;->setMusicApiClient(Lcom/google/android/music/sync/api/MusicApiClient;)Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;->setAuthInfo(Lcom/google/android/music/sync/common/AuthInfo;)Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->setActionOnInitialization(I)Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/music/sync/SyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->build(Landroid/content/Context;)Lcom/google/android/music/sync/common/AbstractSyncAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    sput-object p0, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapter:Lcom/google/android/music/sync/google/MusicSyncAdapter;

    .line 36
    .end local v0           #authInfo:Lcom/google/android/music/sync/common/AuthInfo;
    .end local v1           #musicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;
    :cond_0
    monitor-exit v2

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
