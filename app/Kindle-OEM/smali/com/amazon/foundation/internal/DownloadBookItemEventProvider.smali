.class public Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;
.super Ljava/lang/Object;
.source "DownloadBookItemEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;


# instance fields
.field private final manager:Lcom/amazon/foundation/internal/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCallbackManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;-><init>(Lcom/amazon/foundation/internal/CallbackManager;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/CallbackManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    .line 65
    return-void
.end method


# virtual methods
.method public isRegistered(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    new-instance v1, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider$1;-><init>(Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/CallbackManager;->executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V

    .line 48
    return-void
.end method

.method public register(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->register(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregister(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
