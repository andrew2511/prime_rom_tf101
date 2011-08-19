.class public Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;
.super Lcom/amazon/kcp/application/internal/commands/CCommand;
.source "ProcessTodoAnnotationsCommand.java"


# instance fields
.field private final itemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private final itemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private final itemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private final statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private final syncFinishedCallback:Lcom/amazon/foundation/IIntCallback;

.field private final throttled:Z

.field private final todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

.field private final userInitiated:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/internal/ILocalTodoManager;ZZLcom/amazon/foundation/IStatusTracker;)V
    .locals 1
    .parameter "todoManager"
    .parameter "throttled"
    .parameter "userInitiated"
    .parameter "statusTracker"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;-><init>()V

    .line 33
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->itemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 41
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand$2;-><init>(Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->itemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 49
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand$3;-><init>(Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->itemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 57
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand$4;-><init>(Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->syncFinishedCallback:Lcom/amazon/foundation/IIntCallback;

    .line 76
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    .line 77
    iput-boolean p2, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->throttled:Z

    .line 78
    iput-boolean p3, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->userInitiated:Z

    .line 79
    iput-object p4, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->onItemAdded(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->onItemProcessed(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->onItemError(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->onSyncFinished(I)V

    return-void
.end method

.method private doneProcessingAnnotations()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Done processing all events in the todo queue, therefore all annotation events. has error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->hasError()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->kill()V

    .line 177
    return-void
.end method

.method private onItemAdded(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item added, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v1}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getQueueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    return-void
.end method

.method private onItemError(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 138
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->setError(Z)V

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getQueueSize()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->doneProcessingAnnotations()V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing item, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v1}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getQueueSize()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private onItemProcessed(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getQueueSize()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->doneProcessingAnnotations()V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item processed successfully, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v1}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getQueueSize()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private onSyncFinished(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 156
    if-ne p1, v4, :cond_0

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getQueueSize()I

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync finished, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v1}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getQueueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ProcessTodoAnnotationsCommand"

    const-string v2, "ProcessTodoAnnotationsError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v1}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getQueueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->setError(Z)V

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->doneProcessingAnnotations()V

    goto :goto_0
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->itemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->itemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->itemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getSyncFinishedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->syncFinishedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 197
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemAddedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->itemAddedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->itemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->itemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getSyncFinishedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->syncFinishedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 92
    iget-boolean v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->userInitiated:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    iget-boolean v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->throttled:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->syncWithRemoteTodo(ZILcom/amazon/foundation/IStatusTracker;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    iget-boolean v1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->throttled:Z

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->syncWithRemoteTodo(ZILcom/amazon/foundation/IStatusTracker;)V

    goto :goto_0
.end method

.method public kill()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->unregister()V

    .line 185
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;->kill()V

    .line 186
    return-void
.end method
