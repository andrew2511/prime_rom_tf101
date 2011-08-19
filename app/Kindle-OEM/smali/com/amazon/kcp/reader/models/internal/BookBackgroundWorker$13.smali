.class Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$13;
.super Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
.source "BookBackgroundWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$13;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public performOperation(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$13;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$900(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;->getState(Lcom/amazon/foundation/internal/ICancelRequester;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_0

    .line 483
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$13;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$1000(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 485
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$13;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$1000(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$13;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$1200(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/system/Utilities;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$13;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$1100(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/system/Utilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 489
    const/4 v0, 0x1

    .line 492
    :goto_0
    return v0

    .line 486
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 492
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
