.class public abstract Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
.super Ljava/lang/Object;
.source "BookBackgroundWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Operation"
.end annotation


# instance fields
.field private final canceledBy:Lcom/amazon/foundation/internal/ICancelRequester;

.field private final cancels:Lcom/amazon/foundation/internal/ICancelable;

.field private final name:Ljava/lang/String;

.field private final notificationRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "cancels"
    .parameter "canceledBy"
    .parameter "notificationRunnable"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 73
    :cond_1
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->name:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->cancels:Lcom/amazon/foundation/internal/ICancelable;

    .line 75
    iput-object p4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->canceledBy:Lcom/amazon/foundation/internal/ICancelRequester;

    .line 76
    iput-object p5, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->notificationRunnable:Ljava/lang/Runnable;

    .line 77
    return-void
.end method


# virtual methods
.method public final enqueue()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    const-string v1, "Operation.enqueue"

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$000(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->cancels:Lcom/amazon/foundation/internal/ICancelable;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->cancels:Lcom/amazon/foundation/internal/ICancelable;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICancelable;->requestCancel()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$100(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$200(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOOK BACKGROUND WORKER: Enqueuing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    return-void
.end method

.method public abstract performOperation(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    const-string v1, "Operation.run"

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$300(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOOK BACKGROUND WORKER: Dequeuing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->cancels:Lcom/amazon/foundation/internal/ICancelable;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->cancels:Lcom/amazon/foundation/internal/ICancelable;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICancelable;->reset()V

    .line 111
    :cond_0
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->canceledBy:Lcom/amazon/foundation/internal/ICancelRequester;

    invoke-interface {v1}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->canceledBy:Lcom/amazon/foundation/internal/ICancelRequester;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->performOperation(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->canceledBy:Lcom/amazon/foundation/internal/ICancelRequester;

    invoke-interface {v1}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->notificationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->notificationRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$400(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/Runnable;)V

    .line 134
    :cond_1
    if-eqz v0, :cond_2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOOK BACKGROUND WORKER: Completed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :goto_1
    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->canceledBy:Lcom/amazon/foundation/internal/ICancelRequester;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOOK BACKGROUND WORKER: Canceled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 144
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOOK BACKGROUND WORKER: Failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
