.class Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$2;
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
    .line 57
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$2;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 2
    .parameter "todoItemWrapper"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$2;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$000(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getState()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->REMOVING_FROM_LOCAL_TODO_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    if-eq v0, v1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getError()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->CDE_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$2;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$100(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;->onLicenseCountError()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$2;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->access$100(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;->onTodoError()V

    goto :goto_0
.end method
