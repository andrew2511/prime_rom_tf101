.class public Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;
.super Lcom/amazon/kcp/application/internal/commands/CCommand;
.source "DownloadSidecarCommand.java"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final authManager:Lcom/amazon/kcp/application/AuthenticationManager;

.field private final contentType:Ljava/lang/String;

.field private final fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

.field private final libraryController:Lcom/amazon/kcp/library/ILibraryController;

.field private pathToDownload:Ljava/lang/String;

.field private final requestFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private sidecarFilename:Ljava/lang/String;

.field private final statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private final webserviceClient:Lcom/amazon/kcp/internal/webservices/SidecarWebservice;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 2
    .parameter "libraryController"
    .parameter "webConnector"
    .parameter "authManager"
    .parameter "fileConnectionFactory"
    .parameter "asin"
    .parameter "contentType"
    .parameter "statusTracker"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;-><init>()V

    .line 48
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 74
    new-instance v0, Lcom/amazon/kcp/internal/webservices/SidecarWebservice;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/internal/webservices/SidecarWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/SidecarWebservice;

    .line 75
    iput-object p3, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    .line 76
    iput-object p4, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 77
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 78
    iput-object p5, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->asin:Ljava/lang/String;

    .line 79
    iput-object p6, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->contentType:Ljava/lang/String;

    .line 80
    iput-object p7, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mbp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->addTemporaryExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->sidecarFilename:Ljava/lang/String;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->onRequestFinished()V

    return-void
.end method

.method private onRequestFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/models/CLibrary;->getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->sidecarFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/amazon/kcp/library/models/ILocalBookItem;->setAnnotationFile(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->setError(Z)V

    .line 118
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DownloadSidecarCommand"

    const-string v2, "SidecarAddToLibraryFailed"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->sidecarFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 137
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->kill()V

    .line 138
    return-void

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find ASIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in the library, can\'t add sidecar."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->sidecarFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->setError(Z)V

    .line 133
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DownloadSidecarCommand"

    const-string v2, "SidecarDownloadFailed"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->sidecarFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->pathToDownload:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->sidecarFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v5

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->webserviceClient:Lcom/amazon/kcp/internal/webservices/SidecarWebservice;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->asin:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->contentType:Ljava/lang/String;

    new-instance v4, Lcom/amazon/foundation/internal/RawFileOutputStream;

    invoke-direct {v4, v5}, Lcom/amazon/foundation/internal/RawFileOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v5, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/internal/webservices/SidecarWebservice;->createSidecarRequest(Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->requestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    goto :goto_0
.end method
