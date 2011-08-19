.class public abstract Lcom/amazon/kcp/store/internal/commands/CStoreCommand;
.super Lcom/amazon/kcp/application/internal/commands/CLoadMoreCommand;
.source "CStoreCommand.java"


# instance fields
.field private existingPage:Lcom/amazon/kcp/application/IBasePage;

.field private isReusingModel:Z

.field protected requestFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field protected storeController:Lcom/amazon/kcp/store/IStoreController;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/store/IStoreController;)V
    .locals 2
    .parameter "storeController"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CLoadMoreCommand;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->existingPage:Lcom/amazon/kcp/application/IBasePage;

    .line 22
    iput-boolean v1, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->isReusingModel:Z

    .line 24
    new-instance v0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand$1;-><init>(Lcom/amazon/kcp/store/internal/commands/CStoreCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 55
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->storeController:Lcom/amazon/kcp/store/IStoreController;

    .line 56
    iput-boolean v1, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->isReusingModel:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/store/IStoreController;Lcom/amazon/kcp/application/IBasePage;)V
    .locals 1
    .parameter "storeController"
    .parameter "existingPage"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;-><init>(Lcom/amazon/kcp/store/IStoreController;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->isReusingModel:Z

    .line 43
    iput-object p2, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->existingPage:Lcom/amazon/kcp/application/IBasePage;

    .line 44
    return-void
.end method


# virtual methods
.method protected abstract buildResultsPageModel()V
.end method

.method public execute()V
    .locals 3

    .prologue
    .line 95
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->setError(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->buildResultsPageModel()V

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->getModel()Lcom/amazon/kcp/store/models/internal/CAsyncModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 104
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->setError(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->notifyIdleEvent()V

    .line 137
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->isReusingModel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->existingPage:Lcom/amazon/kcp/application/IBasePage;

    move-object v0, v1

    .line 110
    .local v0, page:Lcom/amazon/kcp/application/IBasePage;
    :goto_1
    if-eqz v0, :cond_1

    .line 113
    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IBasePage;->connectToCommand(Lcom/amazon/kcp/application/internal/ICommand;)V

    .line 114
    invoke-interface {v0}, Lcom/amazon/kcp/application/IBasePage;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->getModel()Lcom/amazon/kcp/store/models/internal/CAsyncModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->getState()Lcom/amazon/kcp/store/models/IAsyncModel$State;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADING:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    if-ne v1, v2, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->kill()V

    goto :goto_0

    .line 109
    .end local v0           #page:Lcom/amazon/kcp/application/IBasePage;
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->showPage()Lcom/amazon/kcp/application/IBasePage;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 125
    .restart local v0       #page:Lcom/amazon/kcp/application/IBasePage;
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->getModel()Lcom/amazon/kcp/store/models/internal/CAsyncModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->hasResults()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->isReusingModel:Z

    if-nez v1, :cond_4

    .line 128
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->getModel()Lcom/amazon/kcp/store/models/internal/CAsyncModel;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 129
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->kill()V

    goto :goto_0

    .line 134
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->getModel()Lcom/amazon/kcp/store/models/internal/CAsyncModel;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADING:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 136
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->launchWebRequest()V

    goto :goto_0
.end method

.method protected abstract getModel()Lcom/amazon/kcp/store/models/internal/CAsyncModel;
.end method

.method public getStatusTracker()Lcom/amazon/foundation/IStatusTracker;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    return-object v0
.end method

.method public isReusingModel()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->isReusingModel:Z

    return v0
.end method

.method protected abstract launchWebRequest()V
.end method

.method protected onRequestFinished()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->getModel()Lcom/amazon/kcp/store/models/internal/CAsyncModel;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/store/models/IAsyncModel$State;->ERROR:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->setError(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->notifyIdleEvent()V

    .line 156
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->notifyKillEvent()V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->getModel()Lcom/amazon/kcp/store/models/internal/CAsyncModel;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V

    .line 161
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStoreCommand;->kill()V

    goto :goto_0
.end method

.method protected abstract showPage()Lcom/amazon/kcp/application/IBasePage;
.end method
