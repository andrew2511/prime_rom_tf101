.class public Lcom/amazon/kcp/store/models/internal/CAsyncModel;
.super Lcom/amazon/kcp/internal/webservices/WebServiceModel;
.source "CAsyncModel.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IAsyncModel;


# instance fields
.field private fromCache:Z

.field private state:Lcom/amazon/kcp/store/models/IAsyncModel$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/amazon/kcp/internal/webservices/WebServiceModel;-><init>()V

    .line 25
    sget-object v0, Lcom/amazon/kcp/store/models/IAsyncModel$State;->NONE:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->state:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->fromCache:Z

    .line 27
    return-void
.end method


# virtual methods
.method public empty()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/amazon/kcp/store/models/IAsyncModel$State;->NONE:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->state:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->fromCache:Z

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 45
    return-void
.end method

.method public getState()Lcom/amazon/kcp/store/models/IAsyncModel$State;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->state:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    return-object v0
.end method

.method public hasResults()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public isFromCache()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->fromCache:Z

    return v0
.end method

.method public setIsFromCache(Z)V
    .locals 1
    .parameter "cached"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->fromCache:Z

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 96
    return-void
.end method

.method public setState(Lcom/amazon/kcp/store/models/IAsyncModel$State;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->state:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->state:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    sget-object v1, Lcom/amazon/kcp/store/models/IAsyncModel$State;->LOADED:Lcom/amazon/kcp/store/models/IAsyncModel$State;

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CAsyncModel;->finishedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 68
    :cond_0
    return-void
.end method
