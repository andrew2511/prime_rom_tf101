.class public Lcom/amazon/foundation/internal/EventProvider;
.super Ljava/lang/Object;
.source "EventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/IEventProvider;


# instance fields
.field private final executor:Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;

.field private final manager:Lcom/amazon/foundation/internal/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCallbackManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>(Lcom/amazon/foundation/internal/CallbackManager;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/CallbackManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/foundation/internal/EventProvider$1;-><init>(Lcom/amazon/foundation/internal/EventProvider;)V

    iput-object v0, p0, Lcom/amazon/foundation/internal/EventProvider;->executor:Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;

    .line 66
    iput-object p1, p0, Lcom/amazon/foundation/internal/EventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    .line 67
    return-void
.end method


# virtual methods
.method public isRegistered(Lcom/amazon/foundation/ICallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/foundation/internal/EventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyListeners()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazon/foundation/internal/EventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    iget-object v1, p0, Lcom/amazon/foundation/internal/EventProvider;->executor:Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/CallbackManager;->executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V

    .line 26
    return-void
.end method

.method public register(Lcom/amazon/foundation/ICallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/foundation/internal/EventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->register(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregister(Lcom/amazon/foundation/ICallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/foundation/internal/EventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
