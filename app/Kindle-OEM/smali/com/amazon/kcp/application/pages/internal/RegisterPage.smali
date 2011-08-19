.class public Lcom/amazon/kcp/application/pages/internal/RegisterPage;
.super Lcom/amazon/kcp/application/internal/CBasePage;
.source "RegisterPage.java"


# instance fields
.field private cancelationEventProvider:Lcom/amazon/foundation/internal/EventProvider;

.field private failureEventProvider:Lcom/amazon/foundation/internal/EventProvider;

.field private successEventProvider:Lcom/amazon/foundation/internal/EventProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 1
    .parameter "applicationController"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0, v0}, Lcom/amazon/kcp/application/pages/internal/RegisterPage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/ICallback;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/ICallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/CBasePage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    .line 21
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->successEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    .line 26
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->failureEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    .line 31
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->cancelationEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    .line 52
    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->successEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0, p2}, Lcom/amazon/foundation/internal/EventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 57
    :cond_0
    if-eqz p3, :cond_1

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->cancelationEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0, p3}, Lcom/amazon/foundation/internal/EventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 61
    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->cancelationEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 95
    return-void
.end method

.method public getCancelationEventProvider()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->cancelationEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getFailureEventProvider()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->failureEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getSuccessEventProvider()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->successEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method protected onCommandKilled()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/CBasePage;->onCommandKilled()V

    .line 134
    invoke-virtual {p0}, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->getCommand()Lcom/amazon/kcp/application/internal/ICommand;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ICommand;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->failureEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->successEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 10
    .parameter "email"
    .parameter "password"
    .parameter "statusTracker"

    .prologue
    .line 71
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;

    iget-object v1, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v5

    move-object v7, p3

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;-><init>(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/library/models/internal/IDownloadManager;JLcom/amazon/foundation/IStatusTracker;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v0, command:Lcom/amazon/kcp/application/internal/commands/RegisterCommand;
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->connectToCommand(Lcom/amazon/kcp/application/internal/ICommand;)V

    .line 83
    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->execute()V

    .line 84
    return-void
.end method
