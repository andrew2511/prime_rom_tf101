.class Lcom/amazon/kcp/application/DownloadStatus$3;
.super Ljava/lang/Object;
.source "DownloadStatus.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/DownloadStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/DownloadStatus;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/DownloadStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/amazon/kcp/application/DownloadStatus$3;->this$0:Lcom/amazon/kcp/application/DownloadStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus$3;->this$0:Lcom/amazon/kcp/application/DownloadStatus;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/DownloadStatus;->isOurItem(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getState()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->QUEUED_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getState()Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;->PROCESSING_STATE:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus$3;->this$0:Lcom/amazon/kcp/application/DownloadStatus;

    sget-object v1, Lcom/amazon/kcp/application/IDownloadStatus$Status;->DownloadFailed:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/DownloadStatus;->access$102(Lcom/amazon/kcp/application/DownloadStatus;Lcom/amazon/kcp/application/IDownloadStatus$Status;)Lcom/amazon/kcp/application/IDownloadStatus$Status;

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus$3;->this$0:Lcom/amazon/kcp/application/DownloadStatus;

    sget-object v1, Lcom/amazon/kcp/application/IDownloadStatus$Status;->SyncFailed:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/DownloadStatus;->access$102(Lcom/amazon/kcp/application/DownloadStatus;Lcom/amazon/kcp/application/IDownloadStatus$Status;)Lcom/amazon/kcp/application/IDownloadStatus$Status;

    goto :goto_0
.end method
