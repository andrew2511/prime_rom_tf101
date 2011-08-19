.class Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$3;
.super Ljava/lang/Object;
.source "BookDownloadTracker.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


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
    .line 78
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$3;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 5
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$3;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$200(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$3;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$3;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v1}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$500(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$3;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v2}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$300(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$3;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v3}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$400(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$202(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$3;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$600(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$3;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$100(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$3;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v1}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$200(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;->onDownloadAdded(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    goto :goto_0

    .line 87
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
