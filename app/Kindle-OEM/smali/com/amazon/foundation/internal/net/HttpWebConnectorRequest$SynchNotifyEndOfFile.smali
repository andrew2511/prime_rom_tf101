.class Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyEndOfFile;
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
    name = "SynchNotifyEndOfFile"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;


# direct methods
.method private constructor <init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyEndOfFile;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyEndOfFile;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyEndOfFile;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$400(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyEndOfFile;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$500(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/internal/IDataOutputStream;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/foundation/internal/IDataOutputStream;->close()Z

    move-result v0

    .line 156
    .local v0, retCode:Z
    if-nez v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyEndOfFile;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$1000(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;->run()V

    .line 161
    .end local v0           #retCode:Z
    :cond_0
    return-void
.end method
