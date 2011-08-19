.class public Lcom/amazon/foundation/internal/ImageEventProvider;
.super Ljava/lang/Object;
.source "ImageEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IImageEventProvider;


# instance fields
.field private final manager:Lcom/amazon/foundation/internal/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCallbackManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/ImageEventProvider;-><init>(Lcom/amazon/foundation/internal/CallbackManager;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/CallbackManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/amazon/foundation/internal/ImageEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    .line 67
    return-void
.end method


# virtual methods
.method public isRegistered(Lcom/amazon/foundation/internal/IImageCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/foundation/internal/ImageEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyListeners(Lcom/amazon/foundation/internal/IImage;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/foundation/internal/ImageEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    new-instance v1, Lcom/amazon/foundation/internal/ImageEventProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/foundation/internal/ImageEventProvider$1;-><init>(Lcom/amazon/foundation/internal/ImageEventProvider;Lcom/amazon/foundation/internal/IImage;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/CallbackManager;->executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V

    .line 50
    return-void
.end method

.method public register(Lcom/amazon/foundation/internal/IImageCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amazon/foundation/internal/ImageEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->register(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregister(Lcom/amazon/foundation/internal/IImageCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/foundation/internal/ImageEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
