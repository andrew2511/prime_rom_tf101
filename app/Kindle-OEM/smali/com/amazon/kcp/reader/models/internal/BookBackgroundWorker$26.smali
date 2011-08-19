.class Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;
.super Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
.source "BookBackgroundWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->executeActiveArea(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

.field final synthetic val$activeArea:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 847
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    iput-object p6, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;->val$activeArea:Ljava/lang/Object;

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
    .line 850
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$900(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;->val$activeArea:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;->executeActiveArea(Ljava/lang/Object;Lcom/amazon/foundation/internal/ICancelRequester;)Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 855
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$2100(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$400(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/Runnable;)V

    .line 880
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 859
    :cond_1
    const-string v1, "https://www.amazon.com/gp/g7g/fws/anchor/detailPageEbook.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 861
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$2200(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$400(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 863
    :cond_2
    const-string v1, "https://www.amazon.com/gp/g7g/fws/anchor/buyEbook.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 865
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$2300(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$400(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 869
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    new-instance v2, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26$1;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$400(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
