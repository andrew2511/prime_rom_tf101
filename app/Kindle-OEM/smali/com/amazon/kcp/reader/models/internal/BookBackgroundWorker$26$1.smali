.class Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26$1;
.super Ljava/lang/Object;
.source "BookBackgroundWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;->performOperation(Lcom/amazon/foundation/internal/ICancelRequester;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 870
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26$1;->this$1:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;

    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26$1;->this$1:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$2400(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/foundation/internal/StringEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26$1;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/StringEventProvider;->notifyListeners(Ljava/lang/String;)V

    .line 874
    return-void
.end method
