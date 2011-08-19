.class Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$14;
.super Ljava/lang/Object;
.source "BookBackgroundWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$14;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$14;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    const-string v1, "swapStateRunnable"

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$000(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$14;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$1000(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$14;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$1000(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    .line 506
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$14;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$1300(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v1

    .line 508
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$14;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v2, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$1302(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    .line 509
    if-eqz v1, :cond_0

    .line 511
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$14;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$900(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;->recycleState(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;)V

    .line 514
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated UI state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    return-void

    .line 506
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
