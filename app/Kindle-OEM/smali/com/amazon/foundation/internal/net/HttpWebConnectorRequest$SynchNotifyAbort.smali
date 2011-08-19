.class Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;
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
    name = "SynchNotifyAbort"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;


# direct methods
.method private constructor <init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$500(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/internal/IDataOutputStream;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IDataOutputStream;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delegate dataObserver failed to abort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
