.class public Lcom/amazon/kcp/application/internal/commands/CStartupCommand;
.super Lcom/amazon/kcp/store/internal/commands/CStoreCommand;
.source "CStartupCommand.java"


# instance fields
.field private model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

.field private synchronizationManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

.field private updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

.field private webserviceClient:Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;Lcom/amazon/kcp/application/internal/IUpdateManager;Lcom/amazon/kcp/store/IStoreController;Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 1
    .parameter "synchronizationManager"
    .parameter "updateManager"
    .parameter "store"
    .parameter "webConnector"

    .prologue
    .line 38
    invoke-direct {p0, p3}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;-><init>(Lcom/amazon/kcp/store/IStoreController;)V

    .line 39
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/commands/CStartupCommand;->updateManager:Lcom/amazon/kcp/application/internal/IUpdateManager;

    .line 40
    new-instance v0, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;

    invoke-direct {v0, p4}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CStartupCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/CStartupCommand;->synchronizationManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    .line 42
    return-void
.end method


# virtual methods
.method protected buildResultsPageModel()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->storeController:Lcom/amazon/kcp/store/IStoreController;

    invoke-interface {v0}, Lcom/amazon/kcp/store/IStoreController;->getModelFactory()Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;->getBrowseModel(J)Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CStartupCommand;->model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    .line 65
    return-void
.end method

.method public execute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-super {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->execute()V

    .line 53
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->LAUNCH:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kcp/library/models/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/foundation/IStatusTracker;)V

    .line 54
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/CStartupCommand;->synchronizationManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->hasRequestFor(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/CStartupCommand;->synchronizationManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected getModel()Lcom/amazon/kcp/store/models/internal/CAsyncModel;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CStartupCommand;->model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    return-object v0
.end method

.method protected launchWebRequest()V
    .locals 4

    .prologue
    .line 71
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/CStartupCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/CStartupCommand;->model:Lcom/amazon/kcp/store/models/internal/CBrowseModel;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/CStartupCommand;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/internal/webservices/GetBrowseNodesWebservice;->createGetBrowseNodesRequest(Lcom/amazon/kcp/store/models/internal/CBrowseModel;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v0

    .line 75
    .local v0, request:Lcom/amazon/foundation/internal/IAsynchronousCallback;
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/CStartupCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/CStartupCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 76
    return-void
.end method

.method protected showPage()Lcom/amazon/kcp/application/IBasePage;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method
