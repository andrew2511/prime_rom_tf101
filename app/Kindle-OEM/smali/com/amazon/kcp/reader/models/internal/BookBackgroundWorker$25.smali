.class Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$25;
.super Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
.source "BookBackgroundWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Ljava/lang/Runnable;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/ICancelRequester;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$resultCallback:Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;

.field final synthetic val$statusTracker:Lcom/amazon/foundation/IStatusTracker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$25;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    iput-object p6, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$25;->val$query:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$25;->val$resultCallback:Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;

    iput-object p8, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$25;->val$statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public performOperation(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 4
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$25;->val$query:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    const/4 v0, 0x0

    .line 834
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$25;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$900(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$25;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$25;->val$resultCallback:Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$25;->val$statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;->search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    goto :goto_0
.end method
