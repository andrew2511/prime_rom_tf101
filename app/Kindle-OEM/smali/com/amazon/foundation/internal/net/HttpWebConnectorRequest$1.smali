.class Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$1;
.super Ljava/lang/Object;
.source "HttpWebConnectorRequest.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;-><init>(Lcom/amazon/system/util/Utilities;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/QueueableRequestManager;Ljava/util/Hashtable;Lcom/amazon/system/net/HttpConnectionFactory;I)V
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
    .line 267
    iput-object p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$1;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$1;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->launchRequest()V

    .line 271
    return-void
.end method
