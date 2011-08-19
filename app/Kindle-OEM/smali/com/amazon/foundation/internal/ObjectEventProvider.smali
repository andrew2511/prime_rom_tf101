.class public Lcom/amazon/foundation/internal/ObjectEventProvider;
.super Ljava/lang/Object;
.source "ObjectEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectEventProvider;


# instance fields
.field private final callbackManager:Lcom/amazon/foundation/internal/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCallbackManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/ObjectEventProvider;-><init>(Lcom/amazon/foundation/internal/CallbackManager;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/CallbackManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/foundation/internal/ObjectEventProvider;->callbackManager:Lcom/amazon/foundation/internal/CallbackManager;

    .line 28
    return-void
.end method


# virtual methods
.method public isRegistered(Lcom/amazon/foundation/internal/IObjectCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/foundation/internal/ObjectEventProvider;->callbackManager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyListeners(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/foundation/internal/ObjectEventProvider;->callbackManager:Lcom/amazon/foundation/internal/CallbackManager;

    new-instance v1, Lcom/amazon/foundation/internal/ObjectEventProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/foundation/internal/ObjectEventProvider$1;-><init>(Lcom/amazon/foundation/internal/ObjectEventProvider;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/CallbackManager;->executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V

    .line 43
    return-void
.end method

.method public register(Lcom/amazon/foundation/internal/IObjectCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/foundation/internal/ObjectEventProvider;->callbackManager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->register(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregister(Lcom/amazon/foundation/internal/IObjectCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazon/foundation/internal/ObjectEventProvider;->callbackManager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
