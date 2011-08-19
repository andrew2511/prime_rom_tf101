.class public abstract Lcom/amazon/kcp/store/AbstractWebStoreController;
.super Ljava/lang/Object;
.source "AbstractWebStoreController.java"

# interfaces
.implements Lcom/amazon/kcp/store/IWebStoreController;


# instance fields
.field protected final appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field protected final credentialsUpdateFailedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field protected final credentialsUpdatedEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private updateFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private updatingCredentials:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->credentialsUpdatedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 23
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->credentialsUpdateFailedEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 30
    new-instance v0, Lcom/amazon/kcp/store/AbstractWebStoreController$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/AbstractWebStoreController$1;-><init>(Lcom/amazon/kcp/store/AbstractWebStoreController;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->updateFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 45
    iput-object p1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->updatingCredentials:Z

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->credentialsUpdatedEvent:Lcom/amazon/foundation/internal/EventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->updateFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/EventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->credentialsUpdateFailedEvent:Lcom/amazon/foundation/internal/EventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->updateFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/EventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/store/AbstractWebStoreController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->updatingCredentials:Z

    return p1
.end method


# virtual methods
.method public abstract clearStoreCredentials()V
.end method

.method public getCredentialsUpdateFailedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->credentialsUpdateFailedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getCredentialsUpdatedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->credentialsUpdatedEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public populateStoreCredentials(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V
    .locals 1
    .parameter "credentialsModel"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->credentialsUpdatedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 85
    return-void
.end method

.method public updateStoreCookies()V
    .locals 3

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->updatingCredentials:Z

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->updatingCredentials:Z

    .line 59
    new-instance v0, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;

    iget-object v1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    .line 62
    invoke-virtual {v0}, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->getKillEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/store/AbstractWebStoreController$2;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/store/AbstractWebStoreController$2;-><init>(Lcom/amazon/kcp/store/AbstractWebStoreController;Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;)V

    invoke-interface {v1, v2}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 75
    invoke-virtual {v0}, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->execute()V

    .line 77
    :cond_0
    return-void
.end method
