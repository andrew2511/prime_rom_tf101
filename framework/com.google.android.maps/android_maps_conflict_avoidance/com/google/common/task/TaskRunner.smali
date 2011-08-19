.class public Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;
.super Ljava/lang/Object;
.source "TaskRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field private defaultPriority:I

.field protected factory:Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;

.field private maxPriority:I

.field private minPriority:I

.field protected mutex:Ljava/lang/Object;

.field protected name:Ljava/lang/String;

.field protected priorityTaskQueue:Ljava/util/Vector;

.field protected running:Z

.field private final runningTaskMap:Ljava/util/Hashtable;

.field private final taskMap:Ljava/util/Hashtable;

.field protected timerTaskQueue:Ljava/util/Vector;

.field protected workers:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;)V
    .registers 4
    .parameter "factory"

    .prologue
    .line 60
    const-string v0, "TaskRunner"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;-><init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;Ljava/lang/String;I)V
    .registers 7
    .parameter "factory"
    .parameter "name"
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    .line 35
    const/16 v0, 0x7f

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->defaultPriority:I

    .line 36
    const/16 v0, 0xff

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->maxPriority:I

    .line 37
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->minPriority:I

    .line 56
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->running:Z

    .line 70
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->factory:Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;

    .line 71
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->name:Ljava/lang/String;

    .line 72
    new-array v0, p3, [Ljava/lang/Thread;

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->workers:[Ljava/lang/Thread;

    .line 73
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    .line 79
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->taskMap:Ljava/util/Hashtable;

    .line 80
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->runningTaskMap:Ljava/util/Hashtable;

    .line 82
    return-void
.end method


# virtual methods
.method public cancelTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)I
    .registers 4
    .parameter "task"

    .prologue
    .line 235
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->cancelInternal()I

    move-result v1

    monitor-exit v0

    return v1

    .line 237
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method cancelTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)Z
    .registers 6
    .parameter "task"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 246
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_5
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 268
    monitor-exit v0

    move v0, v2

    :goto_e
    return v0

    .line 250
    :pswitch_f
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 251
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->setState(I)V

    .line 252
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 253
    monitor-exit v0

    move v0, v3

    goto :goto_e

    .line 257
    :pswitch_20
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 258
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->setState(I)V

    .line 259
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 260
    monitor-exit v0

    move v0, v3

    goto :goto_e

    .line 264
    :pswitch_31
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->setState(I)V

    .line 265
    monitor-exit v0

    move v0, v2

    goto :goto_e

    .line 270
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v1

    .line 247
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_20
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method getDefaultPriority()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->defaultPriority:I

    return v0
.end method

.method protected getNextTaskToRun()Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 309
    const/4 v2, 0x0

    .line 319
    .local v2, task:Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    :goto_2
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 320
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    .line 322
    .local v3, timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v4

    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 326
    .local v0, delta:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2d

    .line 328
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4, v8}, Ljava/util/Vector;->removeElementAt(I)V

    .line 329
    invoke-virtual {p0, v3}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->schedulePriorityTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/Task;)V

    goto :goto_2

    .line 339
    .end local v0           #delta:J
    .end local v3           #timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;
    :cond_2d
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_46

    .line 340
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #task:Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    check-cast v2, Landroid_maps_conflict_avoidance/com/google/common/task/Task;

    .line 341
    .restart local v2       #task:Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setState(I)V

    .line 342
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4, v8}, Ljava/util/Vector;->removeElementAt(I)V

    .line 345
    :cond_46
    return-object v2
.end method

.method public run()V
    .registers 6

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 359
    .local v0, task:Landroid_maps_conflict_avoidance/com/google/common/task/Task;
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 362
    if-eqz v0, :cond_15

    .line 364
    :try_start_6
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1d

    .line 365
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setState(I)V

    .line 366
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->scheduleInternal()V

    .line 370
    :cond_14
    :goto_14
    const/4 v0, 0x0

    .line 373
    :cond_15
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->waitForSomethingToDo()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 375
    monitor-exit v2

    .line 397
    return-void

    .line 367
    :cond_1d
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_14

    .line 368
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setState(I)V

    goto :goto_14

    .line 381
    :catchall_29
    move-exception v3

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v3

    .line 378
    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->getNextTaskToRun()Landroid_maps_conflict_avoidance/com/google/common/task/Task;

    move-result-object v0

    .line 381
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_29

    .line 385
    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->updateStartTimestamp()V

    .line 388
    :try_start_36
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->runInternal()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_3d

    .line 394
    :goto_39
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->updateFinishTimestamp()V

    goto :goto_1

    .line 389
    :catch_3d
    move-exception v1

    .line 390
    .local v1, throwable:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runtime exception thrown by task ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid_maps_conflict_avoidance/com/google/debug/Log;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 391
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_39
.end method

.method schedulePriorityTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/Task;)V
    .registers 8
    .parameter "task"

    .prologue
    .line 172
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 174
    :try_start_3
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->getPriority()I

    move-result v2

    .line 175
    .local v2, priority:I
    const/4 v0, 0x0

    .line 176
    .local v0, lower:I
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 177
    .local v3, upper:I
    :goto_e
    if-ge v0, v3, :cond_27

    .line 178
    add-int v4, v0, v3

    div-int/lit8 v1, v4, 0x2

    .line 179
    .local v1, midway:I
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid_maps_conflict_avoidance/com/google/common/task/Task;

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->getPriority()I

    move-result v4

    if-gt v2, v4, :cond_25

    .line 180
    add-int/lit8 v0, v1, 0x1

    goto :goto_e

    .line 182
    :cond_25
    move v3, v1

    goto :goto_e

    .line 186
    .end local v1           #midway:I
    :cond_27
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v4, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 187
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->updateRunnableTimestamp()V

    .line 188
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setState(I)V

    .line 189
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 190
    monitor-exit v5

    .line 191
    return-void

    .line 190
    .end local v0           #lower:I
    .end local v2           #priority:I
    .end local v3           #upper:I
    :catchall_3a
    move-exception v4

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v4
.end method

.method scheduleTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)V
    .registers 4
    .parameter "task"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->updateScheduleTimestamp()V

    .line 148
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_6
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 161
    :goto_d
    :pswitch_d
    monitor-exit v0

    .line 162
    return-void

    .line 151
    :pswitch_f
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->scheduleInternal()V

    goto :goto_d

    .line 161
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1

    .line 155
    :pswitch_16
    const/4 v1, 0x4

    :try_start_17
    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->setState(I)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_13

    goto :goto_d

    .line 149
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_16
    .end packed-switch
.end method

.method scheduleTimerTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;)V
    .registers 11
    .parameter "task"

    .prologue
    .line 201
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 204
    :try_start_3
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v2

    .line 205
    .local v2, scheduled:J
    const/4 v0, 0x0

    .line 206
    .local v0, lower:I
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 207
    .local v4, upper:I
    :goto_e
    if-ge v0, v4, :cond_29

    .line 208
    add-int v5, v0, v4

    div-int/lit8 v1, v5, 0x2

    .line 209
    .local v1, midway:I
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v7

    cmp-long v5, v2, v7

    if-ltz v5, :cond_27

    .line 210
    add-int/lit8 v0, v1, 0x1

    goto :goto_e

    .line 212
    :cond_27
    move v4, v1

    goto :goto_e

    .line 216
    .end local v1           #midway:I
    :cond_29
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v5, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 217
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->setState(I)V

    .line 218
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 219
    monitor-exit v6

    .line 220
    return-void

    .line 219
    .end local v0           #lower:I
    .end local v2           #scheduled:J
    .end local v4           #upper:I
    :catchall_39
    move-exception v5

    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v5
.end method

.method protected waitForSomethingToDo()Z
    .registers 8

    .prologue
    .line 280
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->priorityTaskQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 284
    :try_start_8
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 286
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_15} :catch_39

    .line 301
    :cond_15
    :goto_15
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->running:Z

    return v3

    .line 288
    :cond_18
    :try_start_18
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->timerTaskQueue:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    .line 291
    .local v2, timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->getScheduledTime()J

    move-result-wide v3

    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v5}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 293
    .local v0, delta:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_15

    .line 294
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->mutex:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_38} :catch_39

    goto :goto_15

    .line 297
    .end local v0           #delta:J
    .end local v2           #timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;
    :catch_39
    move-exception v3

    goto :goto_15
.end method
