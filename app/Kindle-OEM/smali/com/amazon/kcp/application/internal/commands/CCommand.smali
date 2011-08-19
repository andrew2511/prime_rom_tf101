.class public abstract Lcom/amazon/kcp/application/internal/commands/CCommand;
.super Lcom/amazon/foundation/internal/CAsynchronousCallback;
.source "CCommand.java"

# interfaces
.implements Lcom/amazon/kcp/application/internal/ICommand;


# instance fields
.field protected executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

.field private idleEvent:Lcom/amazon/foundation/internal/EventProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/amazon/foundation/internal/CAsynchronousCallback;-><init>()V

    .line 17
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CCommand;->idleEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 19
    new-instance v0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    return-void
.end method


# virtual methods
.method public getIdleEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CCommand;->idleEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public kill()V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;->notifyKillEvent()V

    .line 35
    return-void
.end method

.method protected notifyIdleEvent()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CCommand;->idleEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 43
    return-void
.end method
