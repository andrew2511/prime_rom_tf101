.class Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$6;
.super Ljava/lang/Object;
.source "HttpWebConnectorRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->reportState(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

.field final synthetic val$state:Ljava/lang/String;

.field final synthetic val$substate:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$6;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    iput-object p2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$6;->val$state:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$6;->val$substate:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 742
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$6;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$900(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/IStatusTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$6;->val$state:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$6;->val$substate:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    return-void
.end method
