.class public Lcom/amazon/foundation/internal/StringEventProvider;
.super Ljava/lang/Object;
.source "StringEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/IStringEventProvider;


# instance fields
.field private final manager:Lcom/amazon/foundation/internal/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCallbackManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/StringEventProvider;-><init>(Lcom/amazon/foundation/internal/CallbackManager;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/CallbackManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/amazon/foundation/internal/StringEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    .line 68
    return-void
.end method


# virtual methods
.method public isRegistered(Lcom/amazon/foundation/IStringCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amazon/foundation/internal/StringEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyListeners(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amazon/foundation/internal/StringEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    new-instance v1, Lcom/amazon/foundation/internal/StringEventProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/foundation/internal/StringEventProvider$1;-><init>(Lcom/amazon/foundation/internal/StringEventProvider;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/CallbackManager;->executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V

    .line 35
    return-void
.end method

.method public register(Lcom/amazon/foundation/IStringCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazon/foundation/internal/StringEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->register(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregister(Lcom/amazon/foundation/IStringCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/foundation/internal/StringEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
