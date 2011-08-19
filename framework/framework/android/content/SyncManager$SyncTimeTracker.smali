.class Landroid/content/SyncManager$SyncTimeTracker;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncTimeTracker"
.end annotation


# instance fields
.field mLastWasSyncing:Z

.field private mTimeSpentSyncing:J

.field mWhenSyncStarted:J

.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method private constructor <init>(Landroid/content/SyncManager;)V
    .registers 4
    .parameter

    .prologue
    .line 1304
    iput-object p1, p0, Landroid/content/SyncManager$SyncTimeTracker;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1306
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    .line 1308
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/SyncManager;Landroid/content/SyncManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1304
    invoke-direct {p0, p1}, Landroid/content/SyncManager$SyncTimeTracker;-><init>(Landroid/content/SyncManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized timeSpentSyncing()J
    .registers 7

    .prologue
    .line 1327
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Landroid/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-nez v2, :cond_9

    iget-wide v2, p0, Landroid/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    .line 1330
    :goto_7
    monitor-exit p0

    return-wide v2

    .line 1329
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1330
    .local v0, now:J
    iget-wide v2, p0, Landroid/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v4, p0, Landroid/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    goto :goto_7

    .line 1327
    .end local v0           #now:J
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized update()V
    .registers 8

    .prologue
    .line 1314
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/content/SyncManager$SyncTimeTracker;->this$0:Landroid/content/SyncManager;

    iget-object v3, v3, Landroid/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    const/4 v3, 0x1

    move v0, v3

    .line 1315
    .local v0, isSyncInProgress:Z
    :goto_d
    iget-boolean v3, p0, Landroid/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_21

    if-ne v0, v3, :cond_16

    .line 1323
    :goto_11
    monitor-exit p0

    return-void

    .line 1314
    .end local v0           #isSyncInProgress:Z
    :cond_13
    const/4 v3, 0x0

    move v0, v3

    goto :goto_d

    .line 1316
    .restart local v0       #isSyncInProgress:Z
    :cond_16
    :try_start_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1317
    .local v1, now:J
    if-eqz v0, :cond_24

    .line 1318
    iput-wide v1, p0, Landroid/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    .line 1322
    :goto_1e
    iput-boolean v0, p0, Landroid/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_21

    goto :goto_11

    .line 1314
    .end local v0           #isSyncInProgress:Z
    .end local v1           #now:J
    :catchall_21
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1320
    .restart local v0       #isSyncInProgress:Z
    .restart local v1       #now:J
    :cond_24
    :try_start_24
    iget-wide v3, p0, Landroid/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v5, p0, Landroid/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    sub-long v5, v1, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_21

    goto :goto_1e
.end method
