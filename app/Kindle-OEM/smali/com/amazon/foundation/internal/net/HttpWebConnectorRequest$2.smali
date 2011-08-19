.class Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$2;
.super Ljava/lang/Object;
.source "HttpWebConnectorRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->stopReading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$2;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$2;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$1300(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/internal/QueueableRequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$2;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$1200(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/ICallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/QueueableRequestManager;->removeRequest(Lcom/amazon/foundation/ICallback;)V

    .line 433
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$2;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$1400(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 434
    return-void
.end method
