.class public Lcom/amazon/kcp/application/internal/commands/SyncCommand;
.super Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.source "SyncCommand.java"


# instance fields
.field private applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private stepCommands:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amazon/kcp/application/internal/commands/CCommand;",
            ">;"
        }
    .end annotation
.end field

.field private stepFinishedCallback:Lcom/amazon/foundation/ICallback;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/foundation/IStatusTracker;ILcom/amazon/kcp/application/IAnnotationCache;ZLcom/amazon/kcp/library/models/ILocalBookInfo;JZ)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, p1, v5, v6}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Z)V

    .line 32
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->stepCommands:Ljava/util/LinkedList;

    .line 34
    new-instance v5, Lcom/amazon/kcp/application/internal/commands/SyncCommand$1;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/application/internal/commands/SyncCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/SyncCommand;)V

    iput-object v5, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->stepFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 65
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 78
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 104
    if-eqz p4, :cond_1

    invoke-interface/range {p4 .. p4}, Lcom/amazon/kcp/application/IAnnotationCache;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface/range {p4 .. p4}, Lcom/amazon/kcp/application/IAnnotationCache;->isSyncAnnotationsOn()Z

    move-result v5

    if-nez v5, :cond_0

    and-int/lit8 v5, p3, 0x20

    if-eqz v5, :cond_1

    .line 109
    :cond_0
    new-instance v5, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;

    iget-object v6, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface/range {p4 .. p4}, Lcom/amazon/kcp/application/IAnnotationCache;->getJournal()Ljava/lang/String;

    move-result-object v7

    move-wide/from16 v8, p7

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;Ljava/lang/String;JLcom/amazon/foundation/IStatusTracker;)V

    .line 111
    iget-object v6, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->stepCommands:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 115
    :cond_1
    and-int/lit8 v5, p3, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 117
    new-instance v5, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;

    iget-object v6, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    move-object v0, v5

    move-object v1, v6

    move-object v2, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/foundation/IStatusTracker;Z)V

    .line 119
    iget-object v6, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->stepCommands:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 122
    :cond_2
    and-int/lit8 v5, p3, 0x29

    const/16 v6, 0x29

    if-ne v5, v6, :cond_3

    .line 124
    new-instance v5, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;

    iget-object v6, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, p5

    move/from16 v3, p9

    move-object v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;-><init>(Lcom/amazon/kcp/application/internal/ILocalTodoManager;ZZLcom/amazon/foundation/IStatusTracker;)V

    .line 126
    iget-object v6, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->stepCommands:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 129
    :cond_3
    and-int/lit8 v5, p3, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_4

    .line 131
    if-eqz p6, :cond_4

    .line 134
    invoke-interface/range {p6 .. p6}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 139
    new-instance v5, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;

    iget-object v7, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    iget-object v6, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v8

    iget-object v6, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v9

    iget-object v6, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v10

    move-object/from16 v6, p6

    move-object v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;-><init>(Lcom/amazon/kcp/library/models/ILocalBookInfo;Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/library/models/ILibrary;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/foundation/IStatusTracker;)V

    .line 146
    iget-object v6, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->stepCommands:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 150
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/SyncCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->handleStepFinished()V

    return-void
.end method

.method private handleStepFinished()V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->stepCommands:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/internal/ICommand;

    .line 197
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->stepCommands:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 199
    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ICommand;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "SyncCommand"

    const-string v2, "SyncCommandError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->setError(Z)V

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->processOneStep()V

    .line 208
    return-void
.end method

.method private processOneStep()V
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->stepCommands:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->stepCommands:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/internal/ICommand;

    .line 165
    .local v0, step:Lcom/amazon/kcp/application/internal/ICommand;
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->stepFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 171
    .end local v0           #step:Lcom/amazon/kcp/application/internal/ICommand;
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->kill()V

    goto :goto_0
.end method


# virtual methods
.method protected authenticatedExecute()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->setError(Z)V

    .line 155
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->processOneStep()V

    .line 156
    return-void
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/SyncCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->stop()V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->kill()V

    goto :goto_0
.end method
