.class Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$18;
.super Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
.source "BookBackgroundWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->setSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

.field final synthetic val$newHeight:I

.field final synthetic val$newWidth:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;II)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$18;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    iput p6, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$18;->val$newWidth:I

    iput p7, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$18;->val$newHeight:I

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
    .line 637
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$18;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$900(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$18;->val$newWidth:I

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$18;->val$newHeight:I

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;->setSize(IILcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    return v0
.end method
