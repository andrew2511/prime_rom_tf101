.class Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyInitialisation;
.super Ljava/lang/Object;
.source "HttpWebConnectorRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynchNotifyInitialisation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;


# direct methods
.method private constructor <init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyInitialisation;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyInitialisation;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyInitialisation;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$500(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/internal/IDataOutputStream;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IDataOutputStream;->initialize()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 184
    :goto_0
    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyInitialisation;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$1000(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;->run()V

    .line 187
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyInitialisation;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$1100(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V

    .line 189
    :cond_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delegate dataObserver failed to initialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    const/4 v0, 0x0

    goto :goto_0
.end method
