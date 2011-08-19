.class Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$5;
.super Ljava/lang/Object;
.source "BookDownloadTracker.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IDownloadBookItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$5;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 1
    .parameter "book"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$5;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$100(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;->onDownloadProgressChanged()V

    .line 109
    return-void
.end method
