.class public abstract Lcom/amazon/kcp/application/internal/CAsyncPage;
.super Lcom/amazon/kcp/application/internal/CBasePage;
.source "CAsyncPage.java"

# interfaces
.implements Lcom/amazon/kcp/store/pages/IAsyncPage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/internal/CAsyncPage$StatusTracker;
    }
.end annotation


# instance fields
.field private asyncPageStatusTracker:Lcom/amazon/kcp/application/internal/CAsyncPage$StatusTracker;

.field private model:Lcom/amazon/kcp/store/models/IAsyncModel;

.field private modelChangedCallback:Lcom/amazon/foundation/ICallback;

.field private modelFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private updateModelEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private updateModelFailedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private updateModelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/store/models/IAsyncModel;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/CBasePage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    .line 63
    new-instance v0, Lcom/amazon/kcp/application/internal/CAsyncPage$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/CAsyncPage$1;-><init>(Lcom/amazon/kcp/application/internal/CAsyncPage;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->modelChangedCallback:Lcom/amazon/foundation/ICallback;

    .line 71
    new-instance v0, Lcom/amazon/kcp/application/internal/CAsyncPage$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/CAsyncPage$2;-><init>(Lcom/amazon/kcp/application/internal/CAsyncPage;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->modelFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 79
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->updateModelEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 80
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->updateModelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 81
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->updateModelFailedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 95
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->model:Lcom/amazon/kcp/store/models/IAsyncModel;

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->model:Lcom/amazon/kcp/store/models/IAsyncModel;

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IAsyncModel;->getChangeEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->modelChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->model:Lcom/amazon/kcp/store/models/IAsyncModel;

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IAsyncModel;->getFinishedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->modelFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 99
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/CBasePage;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Lcom/amazon/kcp/application/internal/CAsyncPage$StatusTracker;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/application/internal/CAsyncPage$StatusTracker;-><init>(Lcom/amazon/kcp/application/internal/CAsyncPage;Lcom/amazon/foundation/IStatusTracker;)V

    iput-object v1, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->asyncPageStatusTracker:Lcom/amazon/kcp/application/internal/CAsyncPage$StatusTracker;

    .line 104
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/CAsyncPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/CAsyncPage;->onModelUpdated()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/internal/CAsyncPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/CAsyncPage;->onModelFinished()V

    return-void
.end method

.method private onModelFinished()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->updateModelEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->updateModelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 160
    return-void
.end method

.method private onModelUpdated()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->updateModelEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 150
    return-void
.end method


# virtual methods
.method public disconnectPage()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->model:Lcom/amazon/kcp/store/models/IAsyncModel;

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IAsyncModel;->getChangeEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->modelChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->model:Lcom/amazon/kcp/store/models/IAsyncModel;

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IAsyncModel;->getFinishedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->modelFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 185
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/CBasePage;->disconnectPage()V

    .line 186
    return-void
.end method

.method protected getAsyncModel()Lcom/amazon/kcp/store/models/IAsyncModel;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->model:Lcom/amazon/kcp/store/models/IAsyncModel;

    return-object v0
.end method

.method public getStatusTracker()Lcom/amazon/foundation/IStatusTracker;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->asyncPageStatusTracker:Lcom/amazon/kcp/application/internal/CAsyncPage$StatusTracker;

    return-object v0
.end method

.method public getUpdateModelEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->updateModelEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getUpdateModelFailedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->updateModelFailedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getUpdateModelFinishedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->updateModelFinishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method protected onCommandIdle()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CAsyncPage;->updateModelFailedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 140
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/CBasePage;->onCommandIdle()V

    .line 141
    return-void
.end method
