.class Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$20;
.super Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
.source "BookBackgroundWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->setLineSpacing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

.field final synthetic val$newSpacing:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$20;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    iput p6, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$20;->val$newSpacing:I

    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public performOperation(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 2
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$20;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$900(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$20;->val$newSpacing:I

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;->setLineSpacing(ILcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    return v0
.end method
