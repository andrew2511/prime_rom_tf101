.class public Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;
.super Ljava/lang/Object;
.source "IndexedDownloadBookItemEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IIndexedDownloadBookItemEventProvider;


# instance fields
.field private final manager:Lcom/amazon/foundation/internal/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCallbackManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;-><init>(Lcom/amazon/foundation/internal/CallbackManager;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/CallbackManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    .line 27
    return-void
.end method


# virtual methods
.method public isRegistered(Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyListeners(ILcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 2
    .parameter "index"
    .parameter "book"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    new-instance v1, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider$1;-><init>(Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;ILcom/amazon/kcp/library/models/IDownloadBookItem;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/CallbackManager;->executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V

    .line 58
    return-void
.end method

.method public register(Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->register(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unregister(Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;->manager:Lcom/amazon/foundation/internal/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/CallbackManager;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
