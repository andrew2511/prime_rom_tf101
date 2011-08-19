.class public abstract Lcom/google/common/io/BaseConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/io/ConnectionFactory;


# instance fields
.field private hasPreviousNetworkSuccessBeenRead:Z

.field private final netAvailablePrefName:Ljava/lang/String;

.field private networkWorked:Z

.field private networkWorkedThisSession:Z

.field protected final store:Lcom/google/common/io/PersistentStore;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/common/io/BaseConnectionFactory;->networkWorkedThisSession:Z

    iput-boolean v0, p0, Lcom/google/common/io/BaseConnectionFactory;->networkWorked:Z

    iput-boolean v0, p0, Lcom/google/common/io/BaseConnectionFactory;->hasPreviousNetworkSuccessBeenRead:Z

    iput-object p1, p0, Lcom/google/common/io/BaseConnectionFactory;->netAvailablePrefName:Ljava/lang/String;

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/Config;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/BaseConnectionFactory;->store:Lcom/google/common/io/PersistentStore;

    return-void
.end method

.method private setNetworkWorked(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/io/BaseConnectionFactory;->hasPreviousNetworkSuccessBeenRead:Z

    iput-boolean p1, p0, Lcom/google/common/io/BaseConnectionFactory;->networkWorked:Z

    return-void
.end method


# virtual methods
.method protected checkPreviousNetworkSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/io/BaseConnectionFactory;->store:Lcom/google/common/io/PersistentStore;

    iget-object v1, p0, Lcom/google/common/io/BaseConnectionFactory;->netAvailablePrefName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/common/io/BaseConnectionFactory;->setNetworkWorked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNetworkPreferenceValue()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkWorked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/io/BaseConnectionFactory;->hasPreviousNetworkSuccessBeenRead:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/io/BaseConnectionFactory;->checkPreviousNetworkSuccess()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/common/io/BaseConnectionFactory;->networkWorked:Z

    return v0
.end method

.method public notifyFailure()V
    .locals 0

    return-void
.end method

.method public declared-synchronized registerNetworkSuccess(Z)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/common/io/BaseConnectionFactory;->networkWorkedThisSession:Z

    invoke-virtual {p0}, Lcom/google/common/io/BaseConnectionFactory;->getNetworkWorked()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/io/BaseConnectionFactory;->networkWorked:Z

    iget-object v0, p0, Lcom/google/common/io/BaseConnectionFactory;->store:Lcom/google/common/io/PersistentStore;

    iget-object v1, p0, Lcom/google/common/io/BaseConnectionFactory;->netAvailablePrefName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/common/io/BaseConnectionFactory;->getNetworkPreferenceValue()B

    move-result v4

    aput-byte v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v5

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
