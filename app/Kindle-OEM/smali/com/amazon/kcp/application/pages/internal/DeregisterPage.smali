.class public Lcom/amazon/kcp/application/pages/internal/DeregisterPage;
.super Lcom/amazon/kcp/application/internal/CBasePage;
.source "DeregisterPage.java"


# instance fields
.field private cleanupAICache:Lcom/amazon/foundation/ICallback;

.field private failureEventProvider:Lcom/amazon/foundation/internal/EventProvider;

.field private successEventProvider:Lcom/amazon/foundation/internal/EventProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 1
    .parameter "applicationController"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/CBasePage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    .line 22
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->successEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    .line 27
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->failureEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    .line 33
    new-instance v0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage$1;-><init>(Lcom/amazon/kcp/application/pages/internal/DeregisterPage;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->cleanupAICache:Lcom/amazon/foundation/ICallback;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/pages/internal/DeregisterPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->onCleanupAICache()V

    return-void
.end method

.method private onCleanupAICache()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->getCommand()Lcom/amazon/kcp/application/internal/ICommand;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ICommand;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->cleanupCoverCache()Z

    .line 76
    invoke-virtual {p0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->getCommand()Lcom/amazon/kcp/application/internal/ICommand;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ICommand;->getKillEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->cleanupAICache:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->isRegistered(Lcom/amazon/foundation/ICallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->getCommand()Lcom/amazon/kcp/application/internal/ICommand;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ICommand;->getKillEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->cleanupAICache:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    goto :goto_0
.end method

.method private onRemoveLicensedContent()V
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    .line 48
    .local v0, library:Lcom/amazon/kcp/library/models/ILibrary;
    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILibrary;->deleteLicensedContent()V

    goto :goto_0
.end method


# virtual methods
.method public deregister(Z)V
    .locals 1
    .parameter "removeLicensedContent"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->deregister(ZZ)V

    .line 99
    return-void
.end method

.method public deregister(ZZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;

    iget-object v1, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleApplicationController;->getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v5

    iget-object v4, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAccountSecretProvider()Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

    move-result-object v6

    iget-object v4, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleApplicationController;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v7

    move v4, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;-><init>(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/internal/IUpdateManager;ZLcom/amazon/foundation/IStatusTracker;Lcom/amazon/kcp/reader/models/IAccountSecretProvider;Lcom/amazon/kcp/application/ILocalStorage;Z)V

    .line 118
    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->onRemoveLicensedContent()V

    .line 128
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->connectToCommand(Lcom/amazon/kcp/application/internal/ICommand;)V

    .line 137
    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->execute()V

    .line 138
    return-void
.end method

.method public getFailureEventProvider()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->failureEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getSuccessEventProvider()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->successEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCommandKilled()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/CBasePage;->onCommandKilled()V

    .line 176
    invoke-virtual {p0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->getCommand()Lcom/amazon/kcp/application/internal/ICommand;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ICommand;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->failureEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->successEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method
