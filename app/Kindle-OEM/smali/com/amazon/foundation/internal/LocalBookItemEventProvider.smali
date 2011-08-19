.class public Lcom/amazon/foundation/internal/LocalBookItemEventProvider;
.super Ljava/lang/Object;
.source "LocalBookItemEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/ILocalBookItemEventProvider;


# instance fields
.field private final manager:Lcom/amazon/foundation/internal/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCallbackManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;-><init>(Lcom/amazon/foundation/internal/CallbackManager;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/CallbackManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    .line 54
    return-void
.end method


# virtual methods
.method public isRegistered(Lcom/amazon/foundation/internal/ILocalBookItemCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyListeners(Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    new-instance v1, Lcom/amazon/foundation/internal/LocalBookItemEventProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/foundation/internal/LocalBookItemEventProvider$1;-><init>(Lcom/amazon/foundation/internal/LocalBookItemEventProvider;Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/CallbackManager;->executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V

    .line 37
    return-void
.end method

.method public register(Lcom/amazon/foundation/internal/ILocalBookItemCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->register(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregister(Lcom/amazon/foundation/internal/ILocalBookItemCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
