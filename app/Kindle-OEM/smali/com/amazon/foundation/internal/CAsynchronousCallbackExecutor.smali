.class public Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;
.super Ljava/lang/Object;
.source "CAsynchronousCallbackExecutor.java"


# instance fields
.field private actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

.field private completionCallbackForCaller:Lcom/amazon/foundation/ICallback;

.field private error:Z

.field private requestKilledCallback:Lcom/amazon/foundation/ICallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->error:Z

    .line 24
    new-instance v0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor$1;

    invoke-direct {v0, p0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor$1;-><init>(Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;)V

    iput-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->requestKilledCallback:Lcom/amazon/foundation/ICallback;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->onExecutionFinished()V

    return-void
.end method

.method private callCompletionCallbackForCaller()V
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->completionCallbackForCaller:Lcom/amazon/foundation/ICallback;

    if-eqz v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->completionCallbackForCaller:Lcom/amazon/foundation/ICallback;

    .line 160
    .local v0, executor:Lcom/amazon/foundation/ICallback;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->completionCallbackForCaller:Lcom/amazon/foundation/ICallback;

    .line 161
    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    .line 163
    .end local v0           #executor:Lcom/amazon/foundation/ICallback;
    :cond_0
    return-void
.end method

.method private onExecutionFinished()V
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->error:Z

    .line 137
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IAsynchronousCallback;->getKillEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->requestKilledCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 143
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IAsynchronousCallback;->hasError()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->error:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->callCompletionCallbackForCaller()V

    .line 150
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->error:Z

    .line 60
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IAsynchronousCallback;->kill()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    .line 63
    :cond_0
    return-void
.end method

.method public execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V
    .locals 4
    .parameter "action"
    .parameter "callback"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->stop()V

    .line 95
    if-nez p1, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->error:Z

    .line 97
    iput-object p2, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->completionCallbackForCaller:Lcom/amazon/foundation/ICallback;

    .line 100
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->error:Z

    if-nez v0, :cond_3

    .line 102
    iput-object p1, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    .line 105
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IAsynchronousCallback;->getKillEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->requestKilledCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->error:Z

    .line 107
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->error:Z

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IAsynchronousCallback;->execute()V

    .line 131
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 95
    goto :goto_0

    :cond_1
    move v0, v2

    .line 105
    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IAsynchronousCallback;->kill()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    .line 122
    invoke-direct {p0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->callCompletionCallbackForCaller()V

    goto :goto_2

    .line 129
    :cond_3
    invoke-direct {p0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->callCompletionCallbackForCaller()V

    goto :goto_2
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->error:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->stop()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->completionCallbackForCaller:Lcom/amazon/foundation/ICallback;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->error:Z

    .line 174
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IAsynchronousCallback;->kill()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    .line 76
    :cond_0
    return-void
.end method
