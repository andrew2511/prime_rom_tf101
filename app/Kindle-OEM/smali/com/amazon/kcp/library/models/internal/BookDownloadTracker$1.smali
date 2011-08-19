.class Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$1;
.super Ljava/lang/Object;
.source "BookDownloadTracker.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;


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
    .line 47
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$1;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 2
    .parameter "todoItemWrapper"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$1;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$000(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getState()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->REMOVING_FROM_LOCAL_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    if-eq v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$1;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$100(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;->onTodoProcessed()V

    .line 55
    :cond_0
    return-void
.end method
