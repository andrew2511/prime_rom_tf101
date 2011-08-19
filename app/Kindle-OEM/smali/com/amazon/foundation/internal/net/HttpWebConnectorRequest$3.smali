.class Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$3;
.super Ljava/lang/Object;
.source "HttpWebConnectorRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->openConnection()V
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
    .line 592
    iput-object p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$3;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$3;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$900(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/IStatusTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$3;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$1500(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/amazon/foundation/IStatusTracker;->setMaxProgress(J)V

    .line 597
    return-void
.end method
