.class Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider$1;
.super Ljava/lang/Object;
.source "IndexedDownloadBookItemEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;->notifyListeners(ILcom/amazon/kcp/library/models/IDownloadBookItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;

.field final synthetic val$book:Lcom/amazon/kcp/library/models/IDownloadBookItem;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;ILcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider$1;->this$0:Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider;

    iput p2, p0, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider$1;->val$index:I

    iput-object p3, p0, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider$1;->val$book:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCallback(Ljava/lang/Object;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 55
    check-cast p1, Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;

    .end local p1
    iget v0, p0, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider$1;->val$index:I

    iget-object v1, p0, Lcom/amazon/foundation/internal/IndexedDownloadBookItemEventProvider$1;->val$book:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {p1, v0, v1}, Lcom/amazon/foundation/internal/IIndexedDownloadBookItemCallback;->execute(ILcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 56
    return-void
.end method
