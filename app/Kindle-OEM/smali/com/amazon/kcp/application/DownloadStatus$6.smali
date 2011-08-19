.class Lcom/amazon/kcp/application/DownloadStatus$6;
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
    .line 133
    iput-object p1, p0, Lcom/amazon/kcp/application/DownloadStatus$6;->this$0:Lcom/amazon/kcp/application/DownloadStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus$6;->this$0:Lcom/amazon/kcp/application/DownloadStatus;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/DownloadStatus;->isOurItem(Lcom/amazon/kcp/application/models/internal/TodoItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus$6;->this$0:Lcom/amazon/kcp/application/DownloadStatus;

    invoke-static {v0}, Lcom/amazon/kcp/application/DownloadStatus;->access$200(Lcom/amazon/kcp/application/DownloadStatus;)Lcom/amazon/foundation/IStatusTracker;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->registerStatusTracker(Lcom/amazon/foundation/IStatusTracker;)V

    .line 142
    :cond_0
    return-void
.end method
