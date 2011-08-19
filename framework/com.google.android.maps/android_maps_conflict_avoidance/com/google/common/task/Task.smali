.class public Landroid_maps_conflict_avoidance/com/google/common/task/Task;
.super Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;
.source "Task.java"


# instance fields
.field private priority:I


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "runner"
    .parameter "runnable"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->getDefaultPriority()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;I)V
    .registers 5
    .parameter "runner"
    .parameter "runnable"
    .parameter "priority"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5
    .parameter "runner"
    .parameter "runnable"
    .parameter "name"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->getDefaultPriority()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .registers 5
    .parameter "runner"
    .parameter "runnable"
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p4}, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->setPriorityInternal(I)V

    .line 72
    return-void
.end method

.method private setPriorityInternal(I)V
    .registers 2
    .parameter "priority"

    .prologue
    .line 132
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->priority:I

    .line 133
    return-void
.end method


# virtual methods
.method cancelInternal()I
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->cancelTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public declared-synchronized getPriority()I
    .registers 2

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->priority:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method scheduleInternal()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/task/Task;->runner:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->schedulePriorityTaskInternal(Landroid_maps_conflict_avoidance/com/google/common/task/Task;)V

    .line 140
    return-void
.end method
