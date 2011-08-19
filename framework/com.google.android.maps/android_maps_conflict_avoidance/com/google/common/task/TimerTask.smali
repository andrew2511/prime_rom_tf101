.class public Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;
.super Landroid_maps_conflict_avoidance/com/google/common/task/Task;
.source "TimerTask.java"


# instance fields
.field private count:I

.field private deadline:J

.field private delay:J

.field private isFixedRate:Z

.field private period:J

.field private scheduled:J


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "runner"
    .parameter "runnable"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 8
    .parameter "runner"
    .parameter "runnable"
    .parameter "name"

    .prologue
    const-wide/16 v2, -0x1

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->delay:J

    .line 29
    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->deadline:J

    .line 31
    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->period:J

    .line 34
    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->isFixedRate:Z

    .line 68
    return-void
.end method


# virtual methods
.method declared-synchronized cancelInternal()I
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 114
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->cancelTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    .line 116
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_22

    .line 121
    :goto_11
    monitor-exit p0

    return v0

    .line 117
    :cond_13
    :try_start_13
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    .line 119
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_22

    goto :goto_11

    .line 121
    :cond_20
    const/4 v0, 0x0

    goto :goto_11

    .line 114
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScheduledTime()J
    .registers 3

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUnscheduled()Z
    .registers 5

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method runInternal()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 218
    monitor-enter p0

    .line 219
    :try_start_3
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->period:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 220
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    .line 236
    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2a

    .line 238
    invoke-super {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->runInternal()V

    .line 240
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->scheduleTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)V

    .line 241
    return-void

    .line 222
    :cond_17
    :try_start_17
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    if-lez v0, :cond_21

    .line 223
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    .line 225
    :cond_21
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    if-nez v0, :cond_2d

    .line 226
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    goto :goto_d

    .line 236
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_2a

    throw v0

    .line 228
    :cond_2d
    :try_start_2d
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->isFixedRate:Z

    if-eqz v0, :cond_39

    .line 229
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->period:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    goto :goto_d

    .line 231
    :cond_39
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->period:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_2a

    goto :goto_d
.end method

.method public schedule()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 76
    monitor-enter p0

    .line 77
    :try_start_3
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->count:I

    if-lez v0, :cond_29

    .line 78
    :cond_c
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    .line 79
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->deadline:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    .line 80
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->delay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    .line 87
    :cond_29
    :goto_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_38

    .line 88
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->scheduleTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)V

    .line 89
    return-void

    .line 83
    :cond_30
    :try_start_30
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->deadline:J

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->delay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    goto :goto_29

    .line 87
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method declared-synchronized scheduleInternal()V
    .registers 5

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->scheduled:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 97
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->scheduleTimerTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 99
    :cond_e
    monitor-exit p0

    return-void

    .line 96
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDelay(J)V
    .registers 4
    .parameter "delay"

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->delay:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 158
    monitor-exit p0

    return-void

    .line 157
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
