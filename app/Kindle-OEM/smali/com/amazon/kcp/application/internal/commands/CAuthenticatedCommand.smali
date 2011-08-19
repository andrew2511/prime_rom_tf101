.class public abstract Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.super Lcom/amazon/kcp/application/internal/commands/CCommand;
.source "CAuthenticatedCommand.java"


# instance fields
.field protected authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

.field public registerCanceledCallback:Lcom/amazon/foundation/ICallback;

.field public registerSuccessfulCallback:Lcom/amazon/foundation/ICallback;

.field private registerUIFactory:Lcom/amazon/kcp/application/ILoginUIFactory;

.field private showRegisterPageOnNotAuthenticated:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;-><init>()V

    .line 37
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->registerSuccessfulCallback:Lcom/amazon/foundation/ICallback;

    .line 48
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand$2;-><init>(Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->registerCanceledCallback:Lcom/amazon/foundation/ICallback;

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;)V
    .locals 1
    .parameter "registerUIFactory"
    .parameter "authenticationManager"

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Z)V
    .locals 0
    .parameter "registerUIFactory"
    .parameter "authenticationManager"
    .parameter "showRegisterPageOnNotAuthenticated"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>()V

    .line 89
    iput-boolean p3, p0, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->showRegisterPageOnNotAuthenticated:Z

    .line 90
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    .line 91
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->registerUIFactory:Lcom/amazon/kcp/application/ILoginUIFactory;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->onRegisterSuccessful()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->onRegisterCanceled()V

    return-void
.end method

.method private onRegisterCanceled()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->setError(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->kill()V

    .line 136
    return-void
.end method

.method private onRegisterSuccessful()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->authenticatedExecute()V

    .line 127
    return-void
.end method


# virtual methods
.method protected abstract authenticatedExecute()V
.end method

.method public execute()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->authenticatedExecute()V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->showRegisterPageOnNotAuthenticated:Z

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->setError(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->kill()V

    goto :goto_0
.end method
