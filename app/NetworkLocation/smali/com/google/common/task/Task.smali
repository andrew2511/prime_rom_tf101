.class public Lcom/google/common/task/Task;
.super Lcom/google/common/task/AbstractTask;


# instance fields
.field private priority:I


# direct methods
.method public constructor <init>(Lcom/google/common/task/TaskRunner;)V
    .locals 2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/google/common/task/TaskRunner;->getDefaultPriority()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/task/Task;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/common/task/TaskRunner;->getDefaultPriority()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/task/Task;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/common/task/Task;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/common/task/TaskRunner;->getDefaultPriority()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/task/Task;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/task/AbstractTask;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/google/common/task/Task;->setPriorityInternal(I)V

    return-void
.end method

.method private setPriorityInternal(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/task/Task;->priority:I

    return-void
.end method


# virtual methods
.method cancelInternal()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/task/Task;->runner:Lcom/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/common/task/TaskRunner;->cancelTaskInternal(Lcom/google/common/task/AbstractTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getPriority()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/common/task/Task;->priority:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method scheduleInternal()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/task/Task;->runner:Lcom/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/common/task/TaskRunner;->schedulePriorityTaskInternal(Lcom/google/common/task/Task;)V

    return-void
.end method
