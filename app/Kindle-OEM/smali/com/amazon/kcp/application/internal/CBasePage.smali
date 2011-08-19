.class public abstract Lcom/amazon/kcp/application/internal/CBasePage;
.super Ljava/lang/Object;
.source "CBasePage.java"

# interfaces
.implements Lcom/amazon/kcp/application/IBasePage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;
    }
.end annotation


# instance fields
.field protected applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private command:Lcom/amazon/kcp/application/internal/ICommand;

.field private commandIdleAction:Lcom/amazon/foundation/ICallback;

.field private commandKilledAction:Lcom/amazon/foundation/ICallback;

.field private final statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;-><init>(Lcom/amazon/kcp/application/internal/CBasePage$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    .line 28
    iput-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->command:Lcom/amazon/kcp/application/internal/ICommand;

    .line 29
    new-instance v0, Lcom/amazon/kcp/application/internal/CBasePage$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/CBasePage$1;-><init>(Lcom/amazon/kcp/application/internal/CBasePage;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->commandIdleAction:Lcom/amazon/foundation/ICallback;

    .line 36
    new-instance v0, Lcom/amazon/kcp/application/internal/CBasePage$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/CBasePage$2;-><init>(Lcom/amazon/kcp/application/internal/CBasePage;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->commandKilledAction:Lcom/amazon/foundation/ICallback;

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 2
    .parameter "applicationController"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;-><init>(Lcom/amazon/kcp/application/internal/CBasePage$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    .line 28
    iput-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->command:Lcom/amazon/kcp/application/internal/ICommand;

    .line 29
    new-instance v0, Lcom/amazon/kcp/application/internal/CBasePage$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/CBasePage$1;-><init>(Lcom/amazon/kcp/application/internal/CBasePage;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->commandIdleAction:Lcom/amazon/foundation/ICallback;

    .line 36
    new-instance v0, Lcom/amazon/kcp/application/internal/CBasePage$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/CBasePage$2;-><init>(Lcom/amazon/kcp/application/internal/CBasePage;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->commandKilledAction:Lcom/amazon/foundation/ICallback;

    .line 103
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 104
    return-void
.end method

.method private registerEvents(Lcom/amazon/kcp/application/internal/ICommand;)V
    .locals 2
    .parameter

    .prologue
    .line 181
    invoke-interface {p1}, Lcom/amazon/kcp/application/internal/ICommand;->getIdleEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->commandIdleAction:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 182
    invoke-interface {p1}, Lcom/amazon/kcp/application/internal/ICommand;->getKillEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->commandKilledAction:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 183
    return-void
.end method

.method private unregisterEvents(Lcom/amazon/kcp/application/internal/ICommand;)V
    .locals 2
    .parameter

    .prologue
    .line 193
    invoke-interface {p1}, Lcom/amazon/kcp/application/internal/ICommand;->getIdleEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->commandIdleAction:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->isRegistered(Lcom/amazon/foundation/ICallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {p1}, Lcom/amazon/kcp/application/internal/ICommand;->getIdleEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->commandIdleAction:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 198
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/application/internal/ICommand;->getKillEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->commandKilledAction:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->isRegistered(Lcom/amazon/foundation/ICallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-interface {p1}, Lcom/amazon/kcp/application/internal/ICommand;->getKillEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->commandKilledAction:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 202
    :cond_1
    return-void
.end method


# virtual methods
.method public connectToCommand(Lcom/amazon/kcp/application/internal/ICommand;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->command:Lcom/amazon/kcp/application/internal/ICommand;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->command:Lcom/amazon/kcp/application/internal/ICommand;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/internal/CBasePage;->unregisterEvents(Lcom/amazon/kcp/application/internal/ICommand;)V

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->command:Lcom/amazon/kcp/application/internal/ICommand;

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->command:Lcom/amazon/kcp/application/internal/ICommand;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->command:Lcom/amazon/kcp/application/internal/ICommand;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/internal/CBasePage;->registerEvents(Lcom/amazon/kcp/application/internal/ICommand;)V

    .line 127
    :cond_1
    return-void
.end method

.method public disconnectPage()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->command:Lcom/amazon/kcp/application/internal/ICommand;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->command:Lcom/amazon/kcp/application/internal/ICommand;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/internal/CBasePage;->unregisterEvents(Lcom/amazon/kcp/application/internal/ICommand;)V

    .line 221
    :cond_0
    return-void
.end method

.method protected getCommand()Lcom/amazon/kcp/application/internal/ICommand;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->command:Lcom/amazon/kcp/application/internal/ICommand;

    return-object v0
.end method

.method public getStatusTracker()Lcom/amazon/foundation/IStatusTracker;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    return-object v0
.end method

.method protected onCommandIdle()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->command:Lcom/amazon/kcp/application/internal/ICommand;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ICommand;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->getSubstate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/CBasePage;->reportError()V

    .line 139
    :cond_0
    return-void
.end method

.method protected onCommandKilled()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method protected reportError()V
    .locals 5

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->getSubstate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    const-string v1, "ErrorMessage"

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/CBasePage;->statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->getSubstate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "CBasePageError"

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/CBasePage;->statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->getState()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->applicationController:Lcom/amazon/kcp/application/IKindleApplicationController;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CBasePage;->statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->getState()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/CBasePage;->statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->getSubstate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/IKindleApplicationController;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CBasePage;->statusTracker:Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/CBasePage$StatusTracker;->clearState()V

    .line 158
    return-void
.end method
