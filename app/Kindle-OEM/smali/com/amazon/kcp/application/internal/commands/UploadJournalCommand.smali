.class public Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;
.super Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.source "UploadJournalCommand.java"


# static fields
.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "UploadJournalCommand"


# instance fields
.field private appController:Lcom/amazon/kcp/application/IKindleApplicationController;

.field private journal:Ljava/lang/String;

.field private statusTracker:Lcom/amazon/foundation/IStatusTracker;

.field private timeout:J

.field private uploadRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

.field private uploadRequestFinishedCallback:Lcom/amazon/foundation/ICallback;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;Ljava/lang/String;JLcom/amazon/foundation/IStatusTracker;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;-><init>(Lcom/amazon/kcp/application/ILoginUIFactory;Lcom/amazon/kcp/application/AuthenticationManager;Z)V

    .line 31
    new-instance v0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->uploadRequestFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 51
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    .line 52
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->journal:Ljava/lang/String;

    .line 53
    iput-wide p3, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->timeout:J

    .line 54
    iput-object p5, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uploading journal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->journal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->createUploadRequest()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->onUploadRequestFinished()V

    return-void
.end method

.method private createUploadRequest()V
    .locals 6

    .prologue
    .line 64
    new-instance v0, Lcom/amazon/foundation/internal/NullOutputStream;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/NullOutputStream;-><init>()V

    .line 66
    .local v0, uncaringOutputStream:Lcom/amazon/foundation/internal/IDataOutputStream;
    new-instance v1, Lcom/amazon/kcp/internal/webservices/SidecarWebservice;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/internal/webservices/SidecarWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 68
    .local v1, webService:Lcom/amazon/kcp/internal/webservices/SidecarWebservice;
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->journal:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/amazon/kcp/internal/webservices/SidecarWebservice;->createUploadJournalRequest(Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->uploadRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    .line 76
    iget-wide v2, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->timeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->uploadRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    iget-wide v3, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->timeout:J

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->SetTimeout(J)V

    .line 80
    :cond_0
    return-void
.end method

.method private onUploadRequestFinished()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAnnotationCache()Lcom/amazon/kcp/application/IAnnotationCache;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->journal:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAnnotationCache;->equalsIgnoreJournalTimestamp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAnnotationCache;->resetJournal()V

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->kill()V

    .line 113
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "UploadJournalCommand"

    const-string v2, "UploadJournalError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 101
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->setError(Z)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "UploadJournalCommand"

    const-string v2, "UploadJournalError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 109
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->setError(Z)V

    goto :goto_0
.end method


# virtual methods
.method public authenticatedExecute()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->uploadRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->uploadRequestFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 85
    return-void
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->stop()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->kill()V

    goto :goto_0
.end method
