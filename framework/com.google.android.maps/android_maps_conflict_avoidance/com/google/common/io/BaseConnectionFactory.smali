.class public abstract Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;
.super Ljava/lang/Object;
.source "BaseConnectionFactory.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/ConnectionFactory;


# instance fields
.field private hasPreviousNetworkSuccessBeenRead:Z

.field private final netAvailablePrefName:Ljava/lang/String;

.field private networkWorked:Z

.field private networkWorkedThisSession:Z

.field protected final store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "netAvailablePrefName"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorkedThisSession:Z

    .line 28
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorked:Z

    .line 35
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->hasPreviousNetworkSuccessBeenRead:Z

    .line 49
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->netAvailablePrefName:Ljava/lang/String;

    .line 50
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    .line 51
    return-void
.end method

.method private setNetworkWorked(Z)V
    .registers 3
    .parameter "worked"

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->hasPreviousNetworkSuccessBeenRead:Z

    .line 111
    iput-boolean p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorked:Z

    .line 112
    return-void
.end method


# virtual methods
.method protected checkPreviousNetworkSuccess()V
    .registers 4

    .prologue
    .line 58
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->netAvailablePrefName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    .line 59
    .local v0, preference:[B
    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :goto_b
    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->setNetworkWorked(Z)V

    .line 60
    return-void

    .line 59
    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method protected getNetworkPreferenceValue()B
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkWorked()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->hasPreviousNetworkSuccessBeenRead:Z

    if-nez v0, :cond_7

    .line 101
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->checkPreviousNetworkSuccess()V

    .line 103
    :cond_7
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorked:Z

    return v0
.end method

.method public getNetworkWorkedThisSession()Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorkedThisSession:Z

    return v0
.end method

.method public notifyFailure()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method

.method public declared-synchronized registerNetworkSuccess(Z)Z
    .registers 8
    .parameter "forcePrefWrite"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 72
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorkedThisSession:Z

    .line 74
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->getNetworkWorked()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_25

    .line 75
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorked:Z

    .line 76
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->netAvailablePrefName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->getNetworkPreferenceValue()B

    move-result v4

    aput-byte v4, v2, v3

    invoke-interface {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_27

    move v0, v5

    .line 80
    :goto_23
    monitor-exit p0

    return v0

    :cond_25
    move v0, v1

    goto :goto_23

    .line 72
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public usingMDS()Z
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method
