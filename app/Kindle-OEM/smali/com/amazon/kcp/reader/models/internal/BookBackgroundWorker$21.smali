.class Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$21;
.super Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
.source "BookBackgroundWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->setColors(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Color;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

.field final synthetic val$backgroundColor:Lcom/amazon/system/drawing/Color;

.field final synthetic val$textColor:Lcom/amazon/system/drawing/Color;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Color;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$21;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    iput-object p6, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$21;->val$textColor:Lcom/amazon/system/drawing/Color;

    iput-object p7, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$21;->val$backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public performOperation(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 3
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$21;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$900(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$21;->val$textColor:Lcom/amazon/system/drawing/Color;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$21;->val$backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;->setColors(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Color;Lcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    return v0
.end method
