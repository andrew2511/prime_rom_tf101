.class public Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;
.super Ljava/lang/Object;
.source "StatefulTodoItemEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;


# instance fields
.field final manager:Lcom/amazon/foundation/internal/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCallbackManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;-><init>(Lcom/amazon/foundation/internal/CallbackManager;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/CallbackManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    .line 80
    return-void
.end method


# virtual methods
.method public isRegistered(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyListeners(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    new-instance v1, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider$1;-><init>(Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/CallbackManager;->executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V

    .line 39
    return-void
.end method

.method public register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->register(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
