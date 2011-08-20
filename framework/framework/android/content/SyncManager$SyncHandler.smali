.class Landroid/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;
    }
.end annotation


# static fields
.field private static final MESSAGE_CANCEL:I = 0x6

.field private static final MESSAGE_CHECK_ALARMS:I = 0x3

.field private static final MESSAGE_SERVICE_CONNECTED:I = 0x4

.field private static final MESSAGE_SERVICE_DISCONNECTED:I = 0x5

.field private static final MESSAGE_SYNC_ALARM:I = 0x2

.field private static final MESSAGE_SYNC_FINISHED:I = 0x1


# instance fields
.field private mAlarmScheduleTime:Ljava/lang/Long;

.field private volatile mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

.field public final mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method public constructor <init>(Landroid/content/SyncManager;Landroid/os/Looper;)V
    .registers 6
    .parameter
    .parameter "looper"

    .prologue
    const/4 v2, 0x0

    .line 1420
    iput-object p1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    .line 1421
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1356
    new-instance v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    invoke-direct {v0, p0}, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;-><init>(Landroid/content/SyncManager$SyncHandler;)V

    iput-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    .line 1357
    iput-object v2, p0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 1358
    new-instance v0, Landroid/content/SyncManager$SyncTimeTracker;

    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager$SyncTimeTracker;-><init>(Landroid/content/SyncManager;Landroid/content/SyncManager$1;)V

    iput-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    .line 1359
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    .line 1362
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1422
    return-void
.end method

.method static synthetic access$1000(Landroid/content/SyncManager$SyncHandler;Ljava/lang/String;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1347
    invoke-direct {p0, p1, p2}, Landroid/content/SyncManager$SyncHandler;->getSyncWakeLock(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1347
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    return-object v0
.end method

.method private cancelActiveSyncLocked(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 7
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 1867
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v3, v3, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1869
    .local v1, activeSyncs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncManager$ActiveSyncContext;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncManager$ActiveSyncContext;

    .line 1870
    .local v0, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    if-eqz v0, :cond_d

    .line 1872
    if-eqz p1, :cond_28

    .line 1873
    iget-object v3, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v3, v3, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1887
    .end local v0           #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    :cond_27
    return-void

    .line 1878
    .restart local v0       #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    :cond_28
    if-eqz p2, :cond_34

    .line 1879
    iget-object v3, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v3, v3, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1883
    :cond_34
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Landroid/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Landroid/content/SyncManager$ActiveSyncContext;)V

    goto :goto_d
.end method

.method private closeActiveSyncContext(Landroid/content/SyncManager$ActiveSyncContext;)V
    .registers 4
    .parameter "activeSyncContext"

    .prologue
    .line 1970
    invoke-virtual {p1}, Landroid/content/SyncManager$ActiveSyncContext;->close()V

    .line 1971
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1972
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v0}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->removeActiveSync(Landroid/content/SyncInfo;)V

    .line 1973
    return-void
.end method

.method private dispatchSyncOperation(Landroid/content/SyncOperation;)Z
    .registers 14
    .parameter "op"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 1810
    const-string v1, "SyncManager"

    invoke-static {v1, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1811
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSyncOperation: we are going to sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num active syncs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v3, v3, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v1, v1, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/SyncManager$ActiveSyncContext;

    .line 1814
    .local v9, syncContext:Landroid/content/SyncManager$ActiveSyncContext;
    const-string v1, "SyncManager"

    invoke-virtual {v9}, Landroid/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1819
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #syncContext:Landroid/content/SyncManager$ActiveSyncContext;
    :cond_60
    iget-object v1, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 1820
    .local v8, syncAdapterType:Landroid/content/SyncAdapterType;
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v1, v1, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v1, v8}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v7

    .line 1822
    .local v7, syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v7, :cond_a1

    .line 1823
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find a sync adapter for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing settings for it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v1}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v1

    iget-object v2, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/SyncStorageEngine;->removeAuthority(Landroid/accounts/Account;Ljava/lang/String;)V

    move v1, v10

    .line 1842
    :goto_a0
    return v1

    .line 1829
    :cond_a1
    new-instance v0, Landroid/content/SyncManager$ActiveSyncContext;

    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-virtual {p0, p1}, Landroid/content/SyncManager$SyncHandler;->insertStartSyncEvent(Landroid/content/SyncOperation;)J

    move-result-wide v3

    iget v5, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncManager$ActiveSyncContext;-><init>(Landroid/content/SyncManager;Landroid/content/SyncOperation;JI)V

    .line 1831
    .local v0, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v1}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/SyncStorageEngine;->addActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    .line 1832
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v1, v1, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1833
    const-string v1, "SyncManager"

    invoke-static {v1, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 1834
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSyncOperation: starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_e2
    invoke-virtual {v0, v7}, Landroid/content/SyncManager$ActiveSyncContext;->bindToSyncAdapter(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;)Z

    move-result v1

    if-nez v1, :cond_105

    .line 1837
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind attempt failed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    invoke-direct {p0, v0}, Landroid/content/SyncManager$SyncHandler;->closeActiveSyncContext(Landroid/content/SyncManager$ActiveSyncContext;)V

    move v1, v10

    .line 1839
    goto :goto_a0

    .line 1842
    :cond_105
    const/4 v1, 0x1

    goto :goto_a0
.end method

.method private getSyncWakeLock(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .registers 8
    .parameter "accountType"
    .parameter "authority"

    .prologue
    .line 1372
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1373
    .local v2, wakeLockKey:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 1374
    .local v1, wakeLock:Landroid/os/PowerManager$WakeLock;
    if-nez v1, :cond_3f

    .line 1375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*sync*_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1376
    .local v0, name:Ljava/lang/String;
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 1377
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1378
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    .end local v0           #name:Ljava/lang/String;
    :cond_3f
    return-object v1
.end method

.method private installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;J)V
    .registers 16
    .parameter "account"
    .parameter "authority"
    .parameter "numDeletes"

    .prologue
    const/4 v10, 0x0

    .line 2170
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v6}, Landroid/content/SyncManager;->access$2700(Landroid/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v6

    if-nez v6, :cond_a

    .line 2206
    :cond_9
    :goto_9
    return-void

    .line 2172
    :cond_a
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p2, v10}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 2174
    .local v4, providerInfo:Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_9

    .line 2177
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2179
    .local v0, authorityName:Ljava/lang/CharSequence;
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/content/SyncActivityTooManyDeletes;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2180
    .local v1, clickIntent:Landroid/content/Intent;
    const-string v6, "account"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2181
    const-string v6, "authority"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2182
    const-string/jumbo v6, "provider"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2183
    const-string v6, "numDeletes"

    invoke-virtual {v1, v6, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2185
    invoke-direct {p0, v1}, Landroid/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 2186
    const-string v6, "SyncManager"

    const-string v7, "No activity found to handle too many deletes."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2190
    :cond_5c
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-static {v6, v10, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2193
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104010f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2196
    .local v5, tooManyDeletesDescFormat:Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Notification;

    const v6, 0x10804b5

    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x104010d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2200
    .local v2, notification:Landroid/app/Notification;
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x104010e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2204
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 2205
    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v6}, Landroid/content/SyncManager;->access$2700(Landroid/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result v7

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v7, v8

    invoke-virtual {v6, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_9
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 2215
    iget-object v5, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2216
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2217
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2218
    .local v2, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    if-ge v0, v2, :cond_2b

    .line 2219
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2220
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_28

    .line 2222
    const/4 v5, 0x1

    .line 2226
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_27
    return v5

    .line 2218
    .restart local v4       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2b
    move v5, v6

    .line 2226
    goto :goto_27
.end method

.method private manageSyncAlarmLocked(JJ)V
    .registers 32
    .parameter "nextPeriodicEventElapsedTime"
    .parameter "nextPendingEventElapsedTime"

    .prologue
    .line 2069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 2158
    :cond_c
    :goto_c
    return-void

    .line 2070
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mStorageIsLow:Z
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$000(Landroid/content/SyncManager;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    move/from16 v21, v0

    if-nez v21, :cond_c2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    invoke-static {}, Landroid/content/SyncManager;->access$2800()J

    move-result-wide v23

    add-long v21, v21, v23

    move-wide/from16 v15, v21

    .line 2080
    .local v15, notificationTime:J
    :goto_6b
    const-wide v11, 0x7fffffffffffffffL

    .line 2081
    .local v11, earliestTimeoutTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_80
    :goto_80
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_ca

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SyncManager$ActiveSyncContext;

    .line 2082
    .local v8, currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    move-object v0, v8

    iget-wide v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    move-wide/from16 v21, v0

    invoke-static {}, Landroid/content/SyncManager;->access$2100()J

    move-result-wide v23

    add-long v9, v21, v23

    .line 2084
    .local v9, currentSyncTimeoutTime:J
    const-string v21, "SyncManager"

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_bc

    .line 2085
    const-string v21, "SyncManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "manageSyncAlarm: active sync, mTimeoutStartTime + MAX is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :cond_bc
    cmp-long v21, v11, v9

    if-lez v21, :cond_80

    .line 2089
    move-wide v11, v9

    goto :goto_80

    .line 2073
    .end local v8           #currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v9           #currentSyncTimeoutTime:J
    .end local v11           #earliestTimeoutTime:J
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #notificationTime:J
    :cond_c2
    const-wide v21, 0x7fffffffffffffffL

    move-wide/from16 v15, v21

    goto :goto_6b

    .line 2093
    .restart local v11       #earliestTimeoutTime:J
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v15       #notificationTime:J
    :cond_ca
    const-string v21, "SyncManager"

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_ef

    .line 2094
    const-string v21, "SyncManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "manageSyncAlarm: notificationTime is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_ef
    const-string v21, "SyncManager"

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_114

    .line 2098
    const-string v21, "SyncManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "manageSyncAlarm: earliestTimeoutTime is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :cond_114
    const-string v21, "SyncManager"

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_13a

    .line 2102
    const-string v21, "SyncManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "manageSyncAlarm: nextPeriodicEventElapsedTime is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :cond_13a
    const-string v21, "SyncManager"

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_160

    .line 2106
    const-string v21, "SyncManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "manageSyncAlarm: nextPendingEventElapsedTime is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_160
    move-wide v0, v15

    move-wide v2, v11

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 2111
    .local v6, alarmTime:J
    move-wide v0, v6

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 2112
    move-wide v0, v6

    move-wide/from16 v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 2115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 2116
    .local v17, now:J
    const-wide/16 v21, 0x7530

    add-long v21, v21, v17

    cmp-long v21, v6, v21

    if-gez v21, :cond_269

    .line 2117
    const-string v21, "SyncManager"

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_1b3

    .line 2118
    const-string v21, "SyncManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "manageSyncAlarm: the alarmTime is too small, "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", setting to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-wide/16 v23, 0x7530

    add-long v23, v23, v17

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    :cond_1b3
    const-wide/16 v21, 0x7530

    add-long v6, v17, v21

    .line 2131
    :cond_1b7
    :goto_1b7
    const/16 v20, 0x0

    .line 2132
    .local v20, shouldSet:Z
    const/16 v19, 0x0

    .line 2133
    .local v19, shouldCancel:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2ac

    const/16 v21, 0x1

    move/from16 v5, v21

    .line 2134
    .local v5, alarmIsActive:Z
    :goto_1c7
    const-wide v21, 0x7fffffffffffffffL

    cmp-long v21, v6, v21

    if-eqz v21, :cond_2b2

    const/16 v21, 0x1

    move/from16 v14, v21

    .line 2135
    .local v14, needAlarm:Z
    :goto_1d4
    if-eqz v14, :cond_2b8

    .line 2136
    if-eqz v5, :cond_1e6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v21, v6, v21

    if-gez v21, :cond_1e8

    .line 2137
    :cond_1e6
    const/16 v20, 0x1

    .line 2144
    :cond_1e8
    :goto_1e8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #calls: Landroid/content/SyncManager;->ensureAlarmService()V
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$3000(Landroid/content/SyncManager;)V

    .line 2145
    if-eqz v20, :cond_2bc

    .line 2146
    const-string v21, "SyncManager"

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_23d

    .line 2147
    const-string v21, "SyncManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "requesting that the alarm manager wake us up at elapsed time "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", now is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sub-long v23, v6, v17

    const-wide/16 v25, 0x3e8

    div-long v23, v23, v25

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " secs from now"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_23d
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 2152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$3200(Landroid/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v23, v0

    #getter for: Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;
    invoke-static/range {v23 .. v23}, Landroid/content/SyncManager;->access$3100(Landroid/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-wide v2, v6

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_c

    .line 2122
    .end local v5           #alarmIsActive:Z
    .end local v14           #needAlarm:Z
    .end local v19           #shouldCancel:Z
    .end local v20           #shouldSet:Z
    :cond_269
    const-wide/32 v21, 0x6ddd00

    add-long v21, v21, v17

    cmp-long v21, v6, v21

    if-lez v21, :cond_1b7

    .line 2123
    const-string v21, "SyncManager"

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_2a5

    .line 2124
    const-string v21, "SyncManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "manageSyncAlarm: the alarmTime is too large, "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", setting to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-wide/16 v23, 0x7530

    add-long v23, v23, v17

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :cond_2a5
    const-wide/32 v21, 0x6ddd00

    add-long v6, v17, v21

    goto/16 :goto_1b7

    .line 2133
    .restart local v19       #shouldCancel:Z
    .restart local v20       #shouldSet:Z
    :cond_2ac
    const/16 v21, 0x0

    move/from16 v5, v21

    goto/16 :goto_1c7

    .line 2134
    .restart local v5       #alarmIsActive:Z
    :cond_2b2
    const/16 v21, 0x0

    move/from16 v14, v21

    goto/16 :goto_1d4

    .line 2140
    .restart local v14       #needAlarm:Z
    :cond_2b8
    move/from16 v19, v5

    goto/16 :goto_1e8

    .line 2154
    :cond_2bc
    if-eqz v19, :cond_c

    .line 2155
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 2156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v21, v0

    #getter for: Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;
    invoke-static/range {v21 .. v21}, Landroid/content/SyncManager;->access$3200(Landroid/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v22, v0

    #getter for: Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;
    invoke-static/range {v22 .. v22}, Landroid/content/SyncManager;->access$3100(Landroid/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_c
.end method

.method private manageSyncNotificationLocked()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2008
    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v8, v8, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_35

    .line 2009
    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    .line 2013
    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v5, v8, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 2014
    .local v5, shouldCancel:Z
    const/4 v6, 0x0

    .line 2052
    .local v6, shouldInstall:Z
    :cond_16
    :goto_16
    if-eqz v5, :cond_26

    if-nez v6, :cond_26

    .line 2053
    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #setter for: Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z
    invoke-static {v8, v12}, Landroid/content/SyncManager;->access$2902(Landroid/content/SyncManager;Z)Z

    .line 2054
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 2055
    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iput-boolean v12, v8, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 2058
    :cond_26
    if-eqz v6, :cond_34

    .line 2059
    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #setter for: Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z
    invoke-static {v8, v13}, Landroid/content/SyncManager;->access$2902(Landroid/content/SyncManager;Z)Z

    .line 2060
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 2061
    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iput-boolean v13, v8, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 2063
    :cond_34
    return-void

    .line 2017
    .end local v5           #shouldCancel:Z
    .end local v6           #shouldInstall:Z
    :cond_35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2018
    .local v3, now:J
    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v8, v8, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    if-nez v8, :cond_47

    .line 2019
    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    .line 2027
    :cond_47
    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v8, v8, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    if-eqz v8, :cond_50

    .line 2028
    const/4 v5, 0x0

    .restart local v5       #shouldCancel:Z
    move v6, v5

    .restart local v6       #shouldInstall:Z
    goto :goto_16

    .line 2031
    .end local v5           #shouldCancel:Z
    .end local v6           #shouldInstall:Z
    :cond_50
    const/4 v5, 0x0

    .line 2033
    .restart local v5       #shouldCancel:Z
    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v8, v8, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {}, Landroid/content/SyncManager;->access$2800()J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v8, v3, v8

    if-lez v8, :cond_67

    move v7, v13

    .line 2035
    .local v7, timeToShowNotification:Z
    :goto_63
    if-eqz v7, :cond_69

    .line 2036
    const/4 v6, 0x1

    .restart local v6       #shouldInstall:Z
    goto :goto_16

    .end local v6           #shouldInstall:Z
    .end local v7           #timeToShowNotification:Z
    :cond_67
    move v7, v12

    .line 2033
    goto :goto_63

    .line 2039
    .restart local v7       #timeToShowNotification:Z
    :cond_69
    const/4 v6, 0x0

    .line 2040
    .restart local v6       #shouldInstall:Z
    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v8, v8, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncManager$ActiveSyncContext;

    .line 2041
    .local v0, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-object v8, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v8, v8, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v9, "force"

    invoke-virtual {v8, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2043
    .local v2, manualSync:Z
    if-eqz v2, :cond_72

    .line 2044
    const/4 v6, 0x1

    .line 2045
    goto :goto_16
.end method

.method private maybeStartNextSyncLocked()J
    .registers 33

    .prologue
    .line 1618
    const-string v28, "SyncManager"

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    .line 1619
    .local v13, isLoggable:Z
    if-eqz v13, :cond_11

    const-string v28, "SyncManager"

    const-string v29, "maybeStartNextSync"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v28, v0

    #getter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static/range {v28 .. v28}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Z

    move-result v28

    if-nez v28, :cond_2c

    .line 1623
    if-eqz v13, :cond_26

    .line 1624
    const-string v28, "SyncManager"

    const-string v29, "maybeStartNextSync: no data connection, skipping"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_26
    const-wide v28, 0x7fffffffffffffffL

    .line 1806
    :goto_2b
    return-wide v28

    .line 1629
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v28, v0

    #getter for: Landroid/content/SyncManager;->mStorageIsLow:Z
    invoke-static/range {v28 .. v28}, Landroid/content/SyncManager;->access$000(Landroid/content/SyncManager;)Z

    move-result v28

    if-eqz v28, :cond_47

    .line 1630
    if-eqz v13, :cond_41

    .line 1631
    const-string v28, "SyncManager"

    const-string v29, "maybeStartNextSync: memory low, skipping"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_41
    const-wide v28, 0x7fffffffffffffffL

    goto :goto_2b

    .line 1638
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v28, v0

    #getter for: Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;
    invoke-static/range {v28 .. v28}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)[Landroid/accounts/Account;

    move-result-object v4

    .line 1639
    .local v4, accounts:[Landroid/accounts/Account;
    invoke-static {}, Landroid/content/SyncManager;->access$2000()[Landroid/accounts/Account;

    move-result-object v28

    move-object v0, v4

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_69

    .line 1640
    if-eqz v13, :cond_63

    .line 1641
    const-string v28, "SyncManager"

    const-string v29, "maybeStartNextSync: accounts not known, skipping"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_63
    const-wide v28, 0x7fffffffffffffffL

    goto :goto_2b

    .line 1649
    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v28, v0

    #calls: Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static/range {v28 .. v28}, Landroid/content/SyncManager;->access$300(Landroid/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v7

    .line 1651
    .local v7, backgroundDataUsageAllowed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v28, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v28 .. v28}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z

    move-result v15

    .line 1653
    .local v15, masterSyncAutomatically:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 1656
    .local v18, now:J
    const-wide v16, 0x7fffffffffffffffL

    .line 1659
    .local v16, nextReadyToRunTime:J
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1660
    .local v24, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 1661
    if-eqz v13, :cond_d0

    .line 1662
    :try_start_a2
    const-string v29, "SyncManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "build the operation array, syncQueue size is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 1667
    .local v23, operationIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncOperation;>;"
    :cond_ea
    :goto_ea
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1c8

    .line 1668
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/SyncOperation;

    .line 1671
    .local v22, op:Landroid/content/SyncOperation;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v29, v0

    #getter for: Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;
    invoke-static/range {v29 .. v29}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)[Landroid/accounts/Account;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_126

    .line 1672
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v29, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v29 .. v29}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    goto :goto_ea

    .line 1709
    .end local v22           #op:Landroid/content/SyncOperation;
    .end local v23           #operationIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncOperation;>;"
    :catchall_123
    move-exception v29

    monitor-exit v28
    :try_end_125
    .catchall {:try_start_a2 .. :try_end_125} :catchall_123

    throw v29

    .line 1678
    .restart local v22       #op:Landroid/content/SyncOperation;
    .restart local v23       #operationIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncOperation;>;"
    :cond_126
    :try_start_126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v29, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v29 .. v29}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v26

    .line 1679
    .local v26, syncableState:I
    if-nez v26, :cond_159

    .line 1680
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v29, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v29 .. v29}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    goto :goto_ea

    .line 1687
    :cond_159
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v29, v0

    cmp-long v29, v29, v18

    if-lez v29, :cond_175

    .line 1688
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v29, v0

    cmp-long v29, v16, v29

    if-lez v29, :cond_ea

    .line 1689
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v16, v0

    goto/16 :goto_ea

    .line 1696
    :cond_175
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v29, v0

    const-string v30, "ignore_settings"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    if-nez v29, :cond_1bf

    if-lez v26, :cond_1bf

    if-eqz v15, :cond_1a7

    if-eqz v7, :cond_1a7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v29, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v29 .. v29}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_1bf

    .line 1702
    :cond_1a7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v29, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static/range {v29 .. v29}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    goto/16 :goto_ea

    .line 1707
    :cond_1bf
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ea

    .line 1709
    .end local v22           #op:Landroid/content/SyncOperation;
    .end local v26           #syncableState:I
    :cond_1c8
    monitor-exit v28
    :try_end_1c9
    .catchall {:try_start_126 .. :try_end_1c9} :catchall_123

    .line 1716
    if-eqz v13, :cond_1e8

    const-string v28, "SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "sort the candidate operations, size "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_1e8
    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1718
    if-eqz v13, :cond_1f4

    const-string v28, "SyncManager"

    const-string v29, "dispatch all ready sync operations"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_1f4
    const/4 v11, 0x0

    .local v11, i:I
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, N:I
    :goto_1f9
    if-ge v11, v3, :cond_473

    .line 1720
    move-object/from16 v0, v24

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SyncOperation;

    .line 1721
    .local v8, candidate:Landroid/content/SyncOperation;
    invoke-virtual {v8}, Landroid/content/SyncOperation;->isInitialization()Z

    move-result v9

    .line 1723
    .local v9, candidateIsInitialization:Z
    const/16 v20, 0x0

    .line 1724
    .local v20, numInit:I
    const/16 v21, 0x0

    .line 1725
    .local v21, numRegular:I
    const/4 v10, 0x0

    .line 1726
    .local v10, conflict:Landroid/content/SyncManager$ActiveSyncContext;
    const/4 v14, 0x0

    .line 1727
    .local v14, longRunning:Landroid/content/SyncManager$ActiveSyncContext;
    const/16 v27, 0x0

    .line 1729
    .local v27, toReschedule:Landroid/content/SyncManager$ActiveSyncContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_220
    :goto_220
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2a5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SyncManager$ActiveSyncContext;

    .line 1730
    .local v6, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    iget-object v5, v6, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    .line 1731
    .local v5, activeOp:Landroid/content/SyncOperation;
    invoke-virtual {v5}, Landroid/content/SyncOperation;->isInitialization()Z

    move-result v28

    if-eqz v28, :cond_287

    .line 1732
    add-int/lit8 v20, v20, 0x1

    .line 1736
    :goto_236
    move-object v0, v5

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_28a

    move-object v0, v5

    iget-object v0, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_28a

    move-object v0, v5

    iget-boolean v0, v0, Landroid/content/SyncOperation;->allowParallelSyncs:Z

    move/from16 v28, v0

    if-eqz v28, :cond_285

    move-object v0, v5

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_28a

    .line 1740
    :cond_285
    move-object v10, v6

    goto :goto_220

    .line 1734
    :cond_287
    add-int/lit8 v21, v21, 0x1

    goto :goto_236

    .line 1743
    :cond_28a
    invoke-virtual {v5}, Landroid/content/SyncOperation;->isInitialization()Z

    move-result v28

    move v0, v9

    move/from16 v1, v28

    if-ne v0, v1, :cond_220

    move-object v0, v6

    iget-wide v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v28, v0

    invoke-static {}, Landroid/content/SyncManager;->access$2100()J

    move-result-wide v30

    add-long v28, v28, v30

    cmp-long v28, v28, v18

    if-gez v28, :cond_220

    .line 1745
    move-object v14, v6

    goto/16 :goto_220

    .line 1751
    .end local v5           #activeOp:Landroid/content/SyncOperation;
    .end local v6           #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    :cond_2a5
    if-eqz v13, :cond_33b

    .line 1752
    const-string v28, "SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "candidate "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    add-int/lit8 v30, v11, 0x1

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " of "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ": "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const-string v28, "SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "  numActiveInit="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", numActiveRegular="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const-string v28, "SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "  longRunning: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    const-string v28, "SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "  conflict: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_33b
    if-eqz v10, :cond_40c

    .line 1759
    if-eqz v9, :cond_3c1

    move-object v0, v10

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/SyncOperation;->isInitialization()Z

    move-result v28

    if-nez v28, :cond_3c1

    invoke-static {}, Landroid/content/SyncManager;->access$2200()I

    move-result v28

    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_3c1

    .line 1761
    move-object/from16 v27, v10

    .line 1762
    const-string v28, "SyncManager"

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_37b

    .line 1763
    const-string v28, "SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "canceling and rescheduling sync since an initialization takes higher priority, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_37b
    :goto_37b
    if-eqz v27, :cond_397

    .line 1797
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 1800
    :cond_397
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 1801
    :try_start_3a4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncQueue;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/SyncQueue;->remove(Landroid/content/SyncOperation;)V

    .line 1802
    monitor-exit v28
    :try_end_3b7
    .catchall {:try_start_3a4 .. :try_end_3b7} :catchall_470

    .line 1803
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/content/SyncManager$SyncHandler;->dispatchSyncOperation(Landroid/content/SyncOperation;)Z

    .line 1719
    :cond_3bd
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1f9

    .line 1766
    :cond_3c1
    move-object v0, v8

    iget-boolean v0, v0, Landroid/content/SyncOperation;->expedited:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3bd

    move-object v0, v10

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/content/SyncOperation;->expedited:Z

    move/from16 v28, v0

    if-nez v28, :cond_3bd

    move-object v0, v10

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/SyncOperation;->isInitialization()Z

    move-result v28

    move v0, v9

    move/from16 v1, v28

    if-ne v0, v1, :cond_3bd

    .line 1769
    move-object/from16 v27, v10

    .line 1770
    const-string v28, "SyncManager"

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_37b

    .line 1771
    const-string v28, "SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "canceling and rescheduling sync since an expedited takes higher priority, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37b

    .line 1778
    :cond_40c
    if-eqz v9, :cond_45c

    invoke-static {}, Landroid/content/SyncManager;->access$2200()I

    move-result v28

    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_457

    const/16 v28, 0x1

    move/from16 v25, v28

    .line 1781
    .local v25, roomAvailable:Z
    :goto_41c
    if-nez v25, :cond_37b

    .line 1783
    if-eqz v14, :cond_3bd

    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/SyncOperation;->isInitialization()Z

    move-result v28

    move v0, v9

    move/from16 v1, v28

    if-ne v0, v1, :cond_3bd

    .line 1786
    move-object/from16 v27, v14

    .line 1787
    const-string v28, "SyncManager"

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_37b

    .line 1788
    const-string v28, "SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "canceling and rescheduling sync since it ran roo long, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37b

    .line 1778
    .end local v25           #roomAvailable:Z
    :cond_457
    const/16 v28, 0x0

    move/from16 v25, v28

    goto :goto_41c

    :cond_45c
    invoke-static {}, Landroid/content/SyncManager;->access$2300()I

    move-result v28

    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_46b

    const/16 v28, 0x1

    move/from16 v25, v28

    goto :goto_41c

    :cond_46b
    const/16 v28, 0x0

    move/from16 v25, v28

    goto :goto_41c

    .line 1802
    :catchall_470
    move-exception v29

    :try_start_471
    monitor-exit v28
    :try_end_472
    .catchall {:try_start_471 .. :try_end_472} :catchall_470

    throw v29

    .end local v8           #candidate:Landroid/content/SyncOperation;
    .end local v9           #candidateIsInitialization:Z
    .end local v10           #conflict:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #longRunning:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v20           #numInit:I
    .end local v21           #numRegular:I
    .end local v27           #toReschedule:Landroid/content/SyncManager$ActiveSyncContext;
    :cond_473
    move-wide/from16 v28, v16

    .line 1806
    goto/16 :goto_2b
.end method

.method private runBoundToSyncAdapter(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/ISyncAdapter;)V
    .registers 9
    .parameter "activeSyncContext"
    .parameter "syncAdapter"

    .prologue
    .line 1847
    iput-object p2, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 1848
    iget-object v2, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    .line 1850
    .local v2, syncOperation:Landroid/content/SyncOperation;
    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, p1, Landroid/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 1851
    invoke-interface {p2}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1853
    iget-object v3, v2, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v5, v2, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-interface {p2, p1, v3, v4, v5}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_18} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_18} :catch_35

    .line 1864
    :goto_18
    return-void

    .line 1855
    :catch_19
    move-exception v3

    move-object v1, v3

    .line 1856
    .local v1, remoteExc:Landroid/os/RemoteException;
    const-string v3, "SyncManager"

    const-string v4, "maybeStartNextSync: caught a RemoteException, rescheduling"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1857
    invoke-direct {p0, p1}, Landroid/content/SyncManager$SyncHandler;->closeActiveSyncContext(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1858
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->increaseBackoffSetting(Landroid/content/SyncOperation;)V
    invoke-static {v3, v2}, Landroid/content/SyncManager;->access$2400(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V

    .line 1859
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    new-instance v4, Landroid/content/SyncOperation;

    invoke-direct {v4, v2}, Landroid/content/SyncOperation;-><init>(Landroid/content/SyncOperation;)V

    invoke-virtual {v3, v4}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    goto :goto_18

    .line 1860
    .end local v1           #remoteExc:Landroid/os/RemoteException;
    :catch_35
    move-exception v3

    move-object v0, v3

    .line 1861
    .local v0, exc:Ljava/lang/RuntimeException;
    invoke-direct {p0, p1}, Landroid/content/SyncManager$SyncHandler;->closeActiveSyncContext(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1862
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught RuntimeException while starting the sync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method private runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Landroid/content/SyncManager$ActiveSyncContext;)V
    .registers 30
    .parameter "syncResult"
    .parameter "activeSyncContext"

    .prologue
    .line 1891
    const-string v5, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    .line 1893
    .local v26, isLoggable:Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    move v5, v0

    if-eqz v5, :cond_25

    .line 1894
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    move-object v5, v0

    invoke-interface {v5}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p2

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1895
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p2

    iput-boolean v0, v1, Landroid/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 1897
    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/SyncManager$SyncHandler;->closeActiveSyncContext(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1899
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    move-object v8, v0

    .line 1901
    .local v8, syncOperation:Landroid/content/SyncOperation;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide v9, v0

    sub-long v12, v5, v9

    .line 1906
    .local v12, elapsedTime:J
    if-eqz p1, :cond_132

    .line 1907
    if-eqz v26, :cond_66

    .line 1908
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "runSyncFinishedOrCanceled [finished]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    :cond_66
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    move-result v5

    if-nez v5, :cond_e6

    .line 1913
    const-string/jumbo v9, "success"

    .line 1915
    .local v9, historyMessage:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1916
    .local v11, downstreamActivity:I
    const/4 v10, 0x0

    .line 1917
    .local v10, upstreamActivity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    #calls: Landroid/content/SyncManager;->clearBackoffSetting(Landroid/content/SyncOperation;)V
    invoke-static {v5, v8}, Landroid/content/SyncManager;->access$2500(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V

    .line 1932
    :goto_79
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/SyncResult;->delayUntil:J

    move-wide v6, v0

    #calls: Landroid/content/SyncManager;->setDelayUntilTime(Landroid/content/SyncOperation;J)V
    invoke-static {v5, v8, v6, v7}, Landroid/content/SyncManager;->access$2600(Landroid/content/SyncManager;Landroid/content/SyncOperation;J)V

    .line 1949
    :goto_86
    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    move-wide v6, v0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Landroid/content/SyncManager$SyncHandler;->stopSyncEvent(JLandroid/content/SyncOperation;Ljava/lang/String;IIJ)V

    .line 1952
    if-eqz p1, :cond_165

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    move v5, v0

    if-eqz v5, :cond_165

    .line 1953
    iget-object v5, v8, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v6, v8, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v7, v0

    iget-wide v9, v7, Landroid/content/SyncStats;->numDeletes:J

    .end local v9           #historyMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;J)V

    .line 1960
    :goto_ac
    if-eqz p1, :cond_e5

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    move v5, v0

    if-eqz v5, :cond_e5

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    new-instance v14, Landroid/content/SyncOperation;

    iget-object v15, v8, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object v0, v8

    iget v0, v0, Landroid/content/SyncOperation;->syncSource:I

    move/from16 v16, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v19, 0x0

    iget-object v6, v8, Landroid/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-object v0, v8

    iget-wide v0, v0, Landroid/content/SyncOperation;->delayUntil:J

    move-wide/from16 v23, v0

    move-object v0, v8

    iget-boolean v0, v0, Landroid/content/SyncOperation;->allowParallelSyncs:Z

    move/from16 v25, v0

    invoke-direct/range {v14 .. v25}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    invoke-virtual {v5, v14}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 1967
    :cond_e5
    return-void

    .line 1919
    .end local v10           #upstreamActivity:I
    .end local v11           #downstreamActivity:I
    :cond_e6
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed sync operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    move v5, v0

    if-nez v5, :cond_11a

    .line 1922
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    #calls: Landroid/content/SyncManager;->increaseBackoffSetting(Landroid/content/SyncOperation;)V
    invoke-static {v5, v8}, Landroid/content/SyncManager;->access$2400(Landroid/content/SyncManager;Landroid/content/SyncOperation;)V

    .line 1925
    :cond_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Landroid/content/SyncOperation;)V

    .line 1926
    invoke-direct/range {p0 .. p1}, Landroid/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 1928
    .restart local v9       #historyMessage:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1929
    .restart local v11       #downstreamActivity:I
    const/4 v10, 0x0

    .restart local v10       #upstreamActivity:I
    goto/16 :goto_79

    .line 1934
    .end local v9           #historyMessage:Ljava/lang/String;
    .end local v10           #upstreamActivity:I
    .end local v11           #downstreamActivity:I
    :cond_132
    if-eqz v26, :cond_14d

    .line 1935
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "runSyncFinishedOrCanceled [canceled]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_14d
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    move-object v5, v0

    if-eqz v5, :cond_15f

    .line 1939
    :try_start_154
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_15f
    .catch Landroid/os/RemoteException; {:try_start_154 .. :try_end_15f} :catch_180

    .line 1944
    :cond_15f
    :goto_15f
    const-string v9, "canceled"

    .line 1945
    .restart local v9       #historyMessage:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1946
    .restart local v11       #downstreamActivity:I
    const/4 v10, 0x0

    .restart local v10       #upstreamActivity:I
    goto/16 :goto_86

    .line 1956
    :cond_165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    #getter for: Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v5}, Landroid/content/SyncManager;->access$2700(Landroid/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v6, v8, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v6}, Landroid/accounts/Account;->hashCode()I

    move-result v6

    iget-object v7, v8, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_ac

    .line 1940
    .end local v9           #historyMessage:Ljava/lang/String;
    .end local v10           #upstreamActivity:I
    .end local v11           #downstreamActivity:I
    :catch_180
    move-exception v5

    goto :goto_15f
.end method

.method private scheduleReadyPeriodicSyncs()J
    .registers 35

    .prologue
    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #calls: Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v4}, Landroid/content/SyncManager;->access$300(Landroid/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v17

    .line 1550
    .local v17, backgroundDataUsageAllowed:Z
    const-wide v19, 0x7fffffffffffffffL

    .line 1551
    .local v19, earliestFuturePollTime:J
    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z

    move-result v4

    if-nez v4, :cond_26

    :cond_23
    move-wide/from16 v4, v19

    .line 1611
    .end local v17           #backgroundDataUsageAllowed:Z
    :goto_25
    return-wide v4

    .line 1554
    .restart local v17       #backgroundDataUsageAllowed:Z
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 1555
    .local v29, nowAbsolute:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/SyncStorageEngine;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v24

    .line 1556
    .local v24, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v17           #backgroundDataUsageAllowed:Z
    .local v22, i$:Ljava/util/Iterator;
    :cond_3b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_182

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1558
    .local v23, info:Landroid/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #getter for: Landroid/content/SyncManager;->mAccounts:[Landroid/accounts/Account;
    invoke-static {v4}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)[Landroid/accounts/Account;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3b

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatus(Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/SyncStatusInfo;

    move-result-object v32

    .line 1571
    .local v32, status:Landroid/content/SyncStatusInfo;
    const/16 v21, 0x0

    .local v21, i:I
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, N:I
    :goto_a8
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_3b

    .line 1572
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 1573
    .local v8, extras:Landroid/os/Bundle;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    move-object v0, v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Long;

    .line 1575
    .local v31, periodInSeconds:Ljava/lang/Long;
    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v25

    .line 1577
    .local v25, lastPollTimeAbsolute:J
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v27, v25, v4

    .line 1579
    .local v27, nextPollTimeAbsolute:J
    cmp-long v4, v27, v29

    if-gtz v4, :cond_17b

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v18

    .line 1582
    .local v18, backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object v6, v0

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v33

    .line 1585
    .local v33, syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v33, :cond_121

    .line 1571
    .end local v18           #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v33           #syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_11e
    :goto_11e
    add-int/lit8 v21, v21, 0x1

    goto :goto_a8

    .line 1588
    .restart local v18       #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v33       #syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v17, v0

    new-instance v4, Landroid/content/SyncOperation;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object v5, v0

    const/4 v6, 0x4

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object v7, v0

    const-wide/16 v9, 0x0

    if-eqz v18, :cond_178

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :goto_143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v13, v0

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v13}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v13

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object v14, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v13, v14, v15}, Landroid/content/SyncStorageEngine;->getDelayUntilTime(Landroid/accounts/Account;Ljava/lang/String;)J

    move-result-wide v13

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/content/SyncAdapterType;

    invoke-virtual {v15}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v15

    invoke-direct/range {v4 .. v15}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncOperation;)V

    .line 1595
    move-object/from16 v0, v32

    move/from16 v1, v21

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V

    goto :goto_11e

    .line 1588
    :cond_178
    const-wide/16 v11, 0x0

    goto :goto_143

    .line 1599
    .end local v18           #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v33           #syncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_17b
    cmp-long v4, v27, v19

    if-gez v4, :cond_11e

    .line 1600
    move-wide/from16 v19, v27

    goto :goto_11e

    .line 1606
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v16           #N:I
    .end local v21           #i:I
    .end local v23           #info:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v25           #lastPollTimeAbsolute:J
    .end local v27           #nextPollTimeAbsolute:J
    .end local v31           #periodInSeconds:Ljava/lang/Long;
    .end local v32           #status:Landroid/content/SyncStatusInfo;
    :cond_182
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v19, v4

    if-nez v4, :cond_192

    .line 1607
    const-wide v4, 0x7fffffffffffffffL

    goto/16 :goto_25

    .line 1611
    :cond_192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v6, v19, v29

    if-gez v6, :cond_19f

    const-wide/16 v6, 0x0

    :goto_19c
    add-long/2addr v4, v6

    goto/16 :goto_25

    :cond_19f
    sub-long v6, v19, v29

    goto :goto_19c
.end method

.method private sendSyncStateIntent()V
    .registers 4

    .prologue
    .line 2161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2162
    .local v0, syncStateIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2163
    const-string v1, "active"

    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z
    invoke-static {v2}, Landroid/content/SyncManager;->access$2900(Landroid/content/SyncManager;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2164
    const-string v1, "failing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2165
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2166
    return-void
.end method

.method private syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .registers 6
    .parameter "syncResult"

    .prologue
    const-wide/16 v2, 0x0

    .line 1985
    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_8

    .line 1986
    const/4 v0, 0x1

    .line 2000
    :goto_7
    return v0

    .line 1987
    :cond_8
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 1988
    const/4 v0, 0x2

    goto :goto_7

    .line 1989
    :cond_12
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 1990
    const/4 v0, 0x3

    goto :goto_7

    .line 1991
    :cond_1c
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    .line 1992
    const/4 v0, 0x4

    goto :goto_7

    .line 1993
    :cond_26
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_30

    .line 1994
    const/4 v0, 0x5

    goto :goto_7

    .line 1995
    :cond_30
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_36

    .line 1996
    const/4 v0, 0x6

    goto :goto_7

    .line 1997
    :cond_36
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_3c

    .line 1998
    const/4 v0, 0x7

    goto :goto_7

    .line 1999
    :cond_3c
    iget-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_43

    .line 2000
    const/16 v0, 0x8

    goto :goto_7

    .line 2001
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "we are not in an error state, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private waitUntilReadyToRun()V
    .registers 4

    .prologue
    .line 1384
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1385
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    if-eqz v1, :cond_a

    .line 1388
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 1389
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_a} :catch_b

    .line 1396
    :cond_a
    return-void

    .line 1391
    :catch_b
    move-exception v2

    move-object v0, v2

    .line 1392
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 22
    .parameter "msg"

    .prologue
    .line 1425
    const-wide v6, 0x7fffffffffffffffL

    .line 1426
    .local v6, earliestFuturePollTime:J
    const-wide v10, 0x7fffffffffffffffL

    .line 1431
    .local v10, nextPendingSyncTime:J
    :try_start_a
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->waitUntilReadyToRun()V

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v16, v0

    #calls: Landroid/content/SyncManager;->readDataConnectionState()Z
    invoke-static/range {v16 .. v16}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Z

    move-result v16

    #setter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static/range {v15 .. v16}, Landroid/content/SyncManager;->access$402(Landroid/content/SyncManager;Z)Z

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v15, v0

    #getter for: Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v15}, Landroid/content/SyncManager;->access$1700(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1438
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->scheduleReadyPeriodicSyncs()J

    move-result-wide v6

    .line 1439
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v15, v0
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_f8

    packed-switch v15, :pswitch_data_238

    .line 1535
    .end local p1
    :cond_37
    :goto_37
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->manageSyncNotificationLocked()V

    .line 1536
    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v3, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/SyncManager$SyncHandler;->manageSyncAlarmLocked(JJ)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/SyncManager$SyncTimeTracker;->update()V

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v15, v0

    #getter for: Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v15}, Landroid/content/SyncManager;->access$1700(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1540
    return-void

    .line 1441
    .restart local p1
    :pswitch_56
    :try_start_56
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/util/Pair;

    .line 1442
    .local v13, payload:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;"
    const-string v15, "SyncManager"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_99

    .line 1443
    const-string v15, "SyncManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleSyncHandlerMessage: MESSAGE_SERVICE_CANCEL: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v13

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v13

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_99
    move-object v0, v13

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/accounts/Account;

    iget-object v5, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager$SyncHandler;->cancelActiveSyncLocked(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1447
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J

    move-result-wide v10

    .line 1448
    goto :goto_37

    .line 1452
    .end local v13           #payload:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;"
    .restart local p1
    :pswitch_b1
    const-string v15, "SyncManager"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_c2

    .line 1453
    const-string v15, "SyncManager"

    const-string v16, "handleSyncHandlerMessage: MESSAGE_SYNC_FINISHED"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :cond_c2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/content/SyncManager$SyncHandlerMessagePayload;

    .line 1456
    .local v12, payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v15, v0

    move-object v0, v12

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    move-object/from16 v16, v0

    #calls: Landroid/content/SyncManager;->isSyncStillActive(Landroid/content/SyncManager$ActiveSyncContext;)Z
    invoke-static/range {v15 .. v16}, Landroid/content/SyncManager;->access$1800(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Z

    move-result v15

    if-nez v15, :cond_11a

    .line 1457
    const-string v15, "SyncManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v12

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catchall {:try_start_56 .. :try_end_f6} :catchall_f8

    goto/16 :goto_37

    .line 1535
    .end local v12           #payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    .end local p1
    :catchall_f8
    move-exception v15

    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->manageSyncNotificationLocked()V

    .line 1536
    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v3, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/SyncManager$SyncHandler;->manageSyncAlarmLocked(JJ)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/SyncManager$SyncTimeTracker;->update()V

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v16, v0

    #getter for: Landroid/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v16 .. v16}, Landroid/content/SyncManager;->access$1700(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1535
    throw v15

    .line 1462
    .restart local v12       #payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    .restart local p1
    :cond_11a
    :try_start_11a
    iget-object v15, v12, Landroid/content/SyncManager$SyncHandlerMessagePayload;->syncResult:Landroid/content/SyncResult;

    move-object v0, v12

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1465
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J

    move-result-wide v10

    .line 1466
    goto/16 :goto_37

    .line 1469
    .end local v12           #payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    :pswitch_12f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/content/SyncManager$ServiceConnectionData;

    .line 1470
    .local v9, msgData:Landroid/content/SyncManager$ServiceConnectionData;
    const-string v15, "SyncManager"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_15d

    .line 1471
    const-string v15, "SyncManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v9

    iget-object v0, v0, Landroid/content/SyncManager$ServiceConnectionData;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v15, v0

    move-object v0, v9

    iget-object v0, v0, Landroid/content/SyncManager$ServiceConnectionData;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    move-object/from16 v16, v0

    #calls: Landroid/content/SyncManager;->isSyncStillActive(Landroid/content/SyncManager$ActiveSyncContext;)Z
    invoke-static/range {v15 .. v16}, Landroid/content/SyncManager;->access$1800(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Z

    move-result v15

    if-eqz v15, :cond_37

    .line 1476
    iget-object v15, v9, Landroid/content/SyncManager$ServiceConnectionData;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    move-object v0, v9

    iget-object v0, v0, Landroid/content/SyncManager$ServiceConnectionData;->syncAdapter:Landroid/content/ISyncAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager$SyncHandler;->runBoundToSyncAdapter(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/ISyncAdapter;)V

    goto/16 :goto_37

    .line 1482
    .end local v9           #msgData:Landroid/content/SyncManager$ServiceConnectionData;
    :pswitch_17e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/content/SyncManager$ServiceConnectionData;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/SyncManager$ServiceConnectionData;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    move-object v5, v0

    .line 1484
    .local v5, currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    const-string v15, "SyncManager"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_1b0

    .line 1485
    const-string v15, "SyncManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_1b0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v15, v0

    #calls: Landroid/content/SyncManager;->isSyncStillActive(Landroid/content/SyncManager$ActiveSyncContext;)Z
    invoke-static {v15, v5}, Landroid/content/SyncManager;->access$1800(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Z

    move-result v15

    if-eqz v15, :cond_37

    .line 1492
    iget-object v15, v5, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;
    :try_end_1bd
    .catchall {:try_start_11a .. :try_end_1bd} :catchall_f8

    if-eqz v15, :cond_1c4

    .line 1494
    :try_start_1bf
    iget-object v15, v5, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v15, v5}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_1c4
    .catchall {:try_start_1bf .. :try_end_1c4} :catchall_f8
    .catch Landroid/os/RemoteException; {:try_start_1bf .. :try_end_1c4} :catch_235

    .line 1502
    :cond_1c4
    :goto_1c4
    :try_start_1c4
    new-instance v14, Landroid/content/SyncResult;

    invoke-direct {v14}, Landroid/content/SyncResult;-><init>()V

    .line 1503
    .local v14, syncResult:Landroid/content/SyncResult;
    iget-object v15, v14, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v0, v15

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object v2, v15

    iput-wide v0, v2, Landroid/content/SyncStats;->numIoExceptions:J

    .line 1504
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1507
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J

    move-result-wide v10

    .line 1508
    goto/16 :goto_37

    .line 1514
    .end local v5           #currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v14           #syncResult:Landroid/content/SyncResult;
    .restart local p1
    :pswitch_1e6
    const-string v15, "SyncManager"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    .line 1515
    .local v8, isLoggable:Z
    if-eqz v8, :cond_1f7

    .line 1516
    const-string v15, "SyncManager"

    const-string v16, "handleSyncHandlerMessage: MESSAGE_SYNC_ALARM"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_1f7
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    :try_end_1fd
    .catchall {:try_start_1c4 .. :try_end_1fd} :catchall_f8

    .line 1520
    :try_start_1fd
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J
    :try_end_200
    .catchall {:try_start_1fd .. :try_end_200} :catchall_20f

    move-result-wide v10

    .line 1522
    :try_start_201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v15, v0

    #getter for: Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v15}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_37

    :catchall_20f
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v16, v0

    #getter for: Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v16 .. v16}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v15

    .line 1528
    .end local v8           #isLoggable:Z
    :pswitch_21e
    const-string v15, "SyncManager"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_22f

    .line 1529
    const-string v15, "SyncManager"

    const-string v16, "handleSyncHandlerMessage: MESSAGE_CHECK_ALARMS"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_22f
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J
    :try_end_232
    .catchall {:try_start_201 .. :try_end_232} :catchall_f8

    move-result-wide v10

    goto/16 :goto_37

    .line 1495
    .end local p1
    .restart local v5       #currentSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    :catch_235
    move-exception v15

    goto :goto_1c4

    .line 1439
    nop

    :pswitch_data_238
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_1e6
        :pswitch_21e
        :pswitch_12f
        :pswitch_17e
        :pswitch_56
    .end packed-switch
.end method

.method public insertStartSyncEvent(Landroid/content/SyncOperation;)J
    .registers 9
    .parameter "syncOperation"

    .prologue
    const/4 v6, 0x0

    .line 2230
    iget v5, p1, Landroid/content/SyncOperation;->syncSource:I

    .line 2231
    .local v5, source:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2233
    .local v3, now:J
    const/16 v0, 0xaa0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    aput-object v2, v1, v6

    const/4 v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x3

    iget-object v6, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2237
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v0}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->insertStartSyncEvent(Landroid/accounts/Account;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public onBootCompleted()V
    .registers 3

    .prologue
    .line 1364
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    const/4 v1, 0x1

    #setter for: Landroid/content/SyncManager;->mBootCompleted:Z
    invoke-static {v0, v1}, Landroid/content/SyncManager;->access$1502(Landroid/content/SyncManager;Z)Z

    .line 1365
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v0}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;)V

    .line 1366
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_26

    .line 1367
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mReadyToRunLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1369
    :cond_26
    return-void
.end method

.method public stopSyncEvent(JLandroid/content/SyncOperation;Ljava/lang/String;IIJ)V
    .registers 21
    .parameter "rowId"
    .parameter "syncOperation"
    .parameter "resultMessage"
    .parameter "upstreamActivity"
    .parameter "downstreamActivity"
    .parameter "elapsedTime"

    .prologue
    .line 2243
    const/16 v2, 0xaa0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p3, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p3, Landroid/content/SyncOperation;->syncSource:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p3, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2247
    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v2}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v2

    move/from16 v0, p6

    int-to-long v0, v0

    move-wide v8, v0

    move/from16 v0, p5

    int-to-long v0, v0

    move-wide v10, v0

    move-wide v3, p1

    move-wide/from16 v5, p7

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v11}, Landroid/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJ)V

    .line 2249
    return-void
.end method
