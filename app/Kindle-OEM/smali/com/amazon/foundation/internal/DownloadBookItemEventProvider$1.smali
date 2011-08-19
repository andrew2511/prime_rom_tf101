.class Lcom/amazon/foundation/internal/DownloadBookItemEventProvider$1;
.super Ljava/lang/Object;
.source "DownloadBookItemEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

.field final synthetic val$value:Lcom/amazon/kcp/library/models/IDownloadBookItem;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider$1;->this$0:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    iput-object p2, p0, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider$1;->val$value:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 45
    check-cast p1, Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    .end local p1
    iget-object v0, p0, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider$1;->val$value:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {p1, v0}, Lcom/amazon/foundation/internal/IDownloadBookItemCallback;->execute(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 46
    return-void
.end method
