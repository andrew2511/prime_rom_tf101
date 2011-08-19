.class public Lcom/amazon/foundation/internal/IntEventProvider;
.super Ljava/lang/Object;
.source "IntEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/IIntEventProvider;


# instance fields
.field private final manager:Lcom/amazon/foundation/internal/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCallbackManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>(Lcom/amazon/foundation/internal/CallbackManager;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/CallbackManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/amazon/foundation/internal/IntEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    .line 70
    return-void
.end method


# virtual methods
.method public isRegistered(Lcom/amazon/foundation/IIntCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amazon/foundation/internal/IntEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyListeners(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/foundation/internal/IntEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    new-instance v1, Lcom/amazon/foundation/internal/IntEventProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/foundation/internal/IntEventProvider$1;-><init>(Lcom/amazon/foundation/internal/IntEventProvider;I)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/CallbackManager;->executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V

    .line 53
    return-void
.end method

.method public register(Lcom/amazon/foundation/IIntCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amazon/foundation/internal/IntEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->register(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregister(Lcom/amazon/foundation/IIntCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/foundation/internal/IntEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
