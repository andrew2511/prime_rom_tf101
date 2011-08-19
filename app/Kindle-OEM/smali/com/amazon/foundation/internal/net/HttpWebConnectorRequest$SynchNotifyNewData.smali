.class Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;
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
    name = "SynchNotifyNewData"
.end annotation


# instance fields
.field private newDataBuffer:[B

.field private newDataBufferLen:I

.field private newDataBufferOffset:I

.field final synthetic this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;


# direct methods
.method private constructor <init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;-><init>(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$400(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$500(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/internal/IDataOutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->newDataBuffer:[B

    iget v2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->newDataBufferOffset:I

    iget v3, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->newDataBufferLen:I

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/foundation/internal/IDataOutputStream;->write([BII)I

    move-result v0

    .line 122
    iget v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->newDataBufferLen:I

    if-ne v0, v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v1, v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$600(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;I)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$702(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;Z)Z

    .line 129
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$800(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const-string v0, "MidStream"

    .line 131
    :goto_1
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$900(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/IStatusTracker;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v1}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$900(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/IStatusTracker;

    move-result-object v1

    const-string v2, "FileStreamWriteError"

    invoke-interface {v1, v2, v0}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$1000(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyAbort;->run()V

    .line 136
    iget-object v0, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->this$0:Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;

    invoke-static {v0}, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;->access$1100(Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest;)V

    goto :goto_0

    .line 129
    :cond_3
    const-string v0, "StartOfStream"

    goto :goto_1
.end method

.method public setData([BII)V
    .locals 0
    .parameter "buffer"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->newDataBuffer:[B

    .line 105
    iput p2, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->newDataBufferOffset:I

    .line 106
    iput p3, p0, Lcom/amazon/foundation/internal/net/HttpWebConnectorRequest$SynchNotifyNewData;->newDataBufferLen:I

    .line 107
    return-void
.end method
