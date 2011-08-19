.class public abstract Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
.super Ljava/lang/Object;
.source "AbstractTask.java"


# static fields
.field private static final EMPTY_TASK_ARRAY:[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;


# instance fields
.field private final name:Ljava/lang/String;

.field private runCounter:I

.field private runCounterLock:Ljava/lang/Object;

.field protected runnable:Ljava/lang/Runnable;

.field protected runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

.field private state:I

.field protected tasks:Ljava/util/Vector;

.field private final varzInsideQueue:Ljava/lang/String;

.field private final varzOutsideQueue:Ljava/lang/String;

.field private final varzTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->EMPTY_TASK_ARRAY:[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "runner"
    .parameter "runnable"

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .parameter "runner"
    .parameter "runnable"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    .line 139
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    .line 140
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    .line 141
    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    .line 152
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->varzOutsideQueue:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->varzInsideQueue:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->varzTime:Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method abstract cancelInternal()I
.end method

.method protected getState()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->state:I

    return v0
.end method

.method protected getTasks()[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    .registers 3

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, taskArray:[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    monitor-enter p0

    .line 236
    :try_start_2
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    if-eqz v1, :cond_15

    .line 237
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    .line 238
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->tasks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 242
    :goto_13
    monitor-exit p0

    .line 243
    return-object v0

    .line 240
    :cond_15
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->EMPTY_TASK_ARRAY:[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    goto :goto_13

    .line 242
    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method protected run()V
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 284
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 286
    :cond_9
    return-void
.end method

.method runInternal()V
    .registers 6

    .prologue
    .line 316
    :try_start_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->run()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_22

    .line 322
    :goto_3
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    monitor-enter v3

    .line 323
    :try_start_6
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounter:I

    .line 324
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 325
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_27

    .line 327
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->getTasks()[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;

    move-result-object v1

    .line 329
    .local v1, taskArray:[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    array-length v3, v1

    if-ge v0, v3, :cond_2a

    .line 330
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->schedule()V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 317
    .end local v0           #i:I
    .end local v1           #taskArray:[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    :catch_22
    move-exception v2

    .line 319
    .local v2, throwable:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 325
    .end local v2           #throwable:Ljava/lang/Throwable;
    :catchall_27
    move-exception v4

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v4

    .line 332
    .restart local v0       #i:I
    .restart local v1       #taskArray:[Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
    :cond_2a
    return-void
.end method

.method public schedule()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    const/4 v1, 0x0

    :try_start_4
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runCounter:I

    .line 269
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    .line 270
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->scheduleTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)V

    .line 271
    return-void

    .line 269
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method abstract scheduleInternal()V
.end method

.method protected setState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 260
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->state:I

    .line 261
    return-void
.end method

.method updateFinishTimestamp()V
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 377
    :cond_4
    return-void
.end method

.method updateRunnableTimestamp()V
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 358
    :cond_4
    return-void
.end method

.method updateScheduleTimestamp()V
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 349
    :cond_4
    return-void
.end method

.method updateStartTimestamp()V
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 368
    :cond_4
    return-void
.end method
