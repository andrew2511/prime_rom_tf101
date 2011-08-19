.class public Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;
.super Lcom/amazon/kcp/application/internal/commands/CCommand;
.source "UploadWatermarkSnapshotCommand.java"


# instance fields
.field private onRequestFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private request:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/CLibrary;Ljava/lang/String;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/AuthenticationManager;)V
    .locals 7
    .parameter "localLibrary"
    .parameter "uploadURL"
    .parameter "webConnector"
    .parameter "authManager"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;-><init>()V

    .line 25
    new-instance v1, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand$1;-><init>(Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;)V

    iput-object v1, p0, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;->onRequestFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 41
    new-instance v0, Lcom/amazon/kcp/internal/webservices/UploadWatermarkSnapshotWebservice;

    invoke-direct {v0, p3}, Lcom/amazon/kcp/internal/webservices/UploadWatermarkSnapshotWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 43
    .local v0, webservice:Lcom/amazon/kcp/internal/webservices/UploadWatermarkSnapshotWebservice;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 44
    .local v2, watermarks:Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 45
    .local v3, asins:Ljava/util/Vector;
    invoke-virtual {p1, v2, v3}, Lcom/amazon/kcp/library/models/CLibrary;->getWatermarkAndAsinData(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 48
    new-instance v4, Lcom/amazon/foundation/internal/CharOutputStreamWriter;

    new-instance v1, Lcom/amazon/foundation/internal/CStringOutputStream;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/CStringOutputStream;-><init>()V

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Lcom/amazon/foundation/internal/CharOutputStreamWriter;-><init>(Lcom/amazon/foundation/internal/ICharOutputStream;Ljava/lang/String;)V

    .line 50
    .local v4, responseStream:Lcom/amazon/foundation/internal/IDataOutputStream;
    const/4 v6, 0x0

    move-object v1, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/internal/webservices/UploadWatermarkSnapshotWebservice;->createUploadWatermarkSnapshotRequest(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    iput-object v1, p0, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;->request:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;->onRequestFinished()V

    return-void
.end method

.method private onRequestFinished()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;->setError(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;->kill()V

    .line 76
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;->request:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;->setError(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;->kill()V

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v1, p0, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;->request:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    iget-object v2, p0, Lcom/amazon/kcp/library/internal/commands/UploadWatermarkSnapshotCommand;->onRequestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    goto :goto_0
.end method
