.class public Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;
.super Lcom/amazon/kcp/application/internal/commands/CCommand;
.source "DownloadContentCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;,
        Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;
    }
.end annotation


# static fields
.field public static CONTENT_SUBSTATE:Ljava/lang/String; = null

.field private static final DEFAULT_NUM_RETRIES:I = 0x2

.field public static DOWNLOAD_STATE:Ljava/lang/String; = null

.field private static final LICENSE_COUNT_ERROR_STATUS_CODE:I = 0x193

.field public static final LOG_FEATURE_NAME:Ljava/lang/String; = "DOWNLOAD_CONTENT_COMMAND"

.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "DownloadContentCommand"

.field private static final MIN_DOWNLOAD_TO_RESET_RETRIES:I = 0x10000

.field private static final NEED_SIDECAR_HEADER:Ljava/lang/String; = "1"

.field public static SIDECAR_SUBSTATE:Ljava/lang/String;


# instance fields
.field private authManager:Lcom/amazon/kcp/application/AuthenticationManager;

.field private bookFilename:Ljava/lang/String;

.field private bookRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

.field private bookWebserviceClient:Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice;

.field private chunkDownloadFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private contentLengthCallback:Lcom/amazon/foundation/IStringCallback;

.field private contentRangeCallback:Lcom/amazon/foundation/IStringCallback;

.field private fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

.field private headersSidecarCallback:Lcom/amazon/foundation/IStringCallback;

.field private headersStatusCodeCallback:Lcom/amazon/foundation/IIntCallback;

.field private isChunking:Z

.field private libraryController:Lcom/amazon/kcp/library/ILibraryController;

.field private messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

.field private needSidecar:Z

.field private numBytesSuccessfullyDownloaded:J

.field private pathToDownload:Ljava/lang/String;

.field private rawSidecarStream:Lcom/amazon/foundation/internal/RawFileOutputStream;

.field private resumableDownloadToken:Ljava/lang/String;

.field private resumableDownloadTokenCallback:Lcom/amazon/foundation/IStringCallback;

.field private retriesLeft:I

.field private settingsHelper:Lcom/amazon/system/io/IPersistentSettingsHelper;

.field private sidecarDownloadFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private sidecarDownloaded:Z

.field private sidecarFileStream:Ljava/io/OutputStream;

.field private sidecarFilename:Ljava/lang/String;

.field private sidecarRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

.field private sidecarWebserviceClient:Lcom/amazon/kcp/internal/webservices/SidecarWebservice;

.field private smartChunker:Lcom/amazon/kcp/application/IDownloadChunker;

.field private statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

.field private streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

.field private todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

.field private totalConnectionDownloadSize:J

.field private totalDownloadSize:J

.field private uiMessaging:Lcom/amazon/kcp/application/IUIMessaging;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const-string v0, "download"

    sput-object v0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->DOWNLOAD_STATE:Ljava/lang/String;

    .line 138
    const-string v0, "content"

    sput-object v0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->CONTENT_SUBSTATE:Ljava/lang/String;

    .line 143
    const-string v0, "sidecar"

    sput-object v0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->SIDECAR_SUBSTATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/system/io/IPersistentSettingsHelper;Lcom/amazon/kcp/application/IUIMessaging;Lcom/amazon/kcp/application/IDownloadChunker;)V
    .locals 4
    .parameter "libraryController"
    .parameter "webConnector"
    .parameter "fileConnectionFactory"
    .parameter "todoItemWrapper"
    .parameter "authManager"
    .parameter "settingsHelper"
    .parameter "uiMessaging"
    .parameter "chunker"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 435
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;-><init>()V

    .line 261
    iput-boolean v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->needSidecar:Z

    .line 262
    iput-boolean v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarDownloaded:Z

    .line 318
    iput-object v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->resumableDownloadToken:Ljava/lang/String;

    .line 326
    iput-object v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->pathToDownload:Ljava/lang/String;

    .line 328
    new-instance v2, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$1;-><init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->chunkDownloadFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 340
    new-instance v2, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$2;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$2;-><init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarDownloadFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 352
    new-instance v2, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$3;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$3;-><init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->headersSidecarCallback:Lcom/amazon/foundation/IStringCallback;

    .line 360
    new-instance v2, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$4;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$4;-><init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->headersStatusCodeCallback:Lcom/amazon/foundation/IIntCallback;

    .line 368
    new-instance v2, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$5;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$5;-><init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->contentLengthCallback:Lcom/amazon/foundation/IStringCallback;

    .line 384
    new-instance v2, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$6;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$6;-><init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->contentRangeCallback:Lcom/amazon/foundation/IStringCallback;

    .line 409
    new-instance v2, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$7;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$7;-><init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->resumableDownloadTokenCallback:Lcom/amazon/foundation/IStringCallback;

    .line 436
    iput-object p3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 437
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 438
    iput-object p4, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    .line 439
    new-instance v2, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    invoke-direct {v2, p0, p4}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;-><init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;Lcom/amazon/foundation/IStatusTracker;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    .line 440
    iput-object p5, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    .line 441
    new-instance v2, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice;

    invoke-direct {v2, p2}, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookWebserviceClient:Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice;

    .line 442
    new-instance v2, Lcom/amazon/kcp/internal/webservices/SidecarWebservice;

    invoke-direct {v2, p2}, Lcom/amazon/kcp/internal/webservices/SidecarWebservice;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    iput-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarWebserviceClient:Lcom/amazon/kcp/internal/webservices/SidecarWebservice;

    .line 443
    iput-object p7, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->uiMessaging:Lcom/amazon/kcp/application/IUIMessaging;

    .line 444
    iput-object p6, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->settingsHelper:Lcom/amazon/system/io/IPersistentSettingsHelper;

    .line 445
    iput-object p8, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->smartChunker:Lcom/amazon/kcp/application/IDownloadChunker;

    .line 448
    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, asin:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTypeString()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, contentType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->addTemporaryExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookFilename:Ljava/lang/String;

    .line 451
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->getTotalDownloadSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->numBytesSuccessfullyDownloaded:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->totalConnectionDownloadSize:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->totalDownloadSize:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->setDownloadToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->onDownloadChunkFinished()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->onDownloadSidecarFinished()V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->onHttpHeadersReceived(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->onHttpStatusCodeReceived(I)V

    return-void
.end method

.method private addContentToLibrary()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 908
    iget-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->needSidecar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarDownloaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarFileStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarFileStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->hasError()Z

    move-result v0

    if-nez v0, :cond_2

    .line 923
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/amazon/kcp/library/models/CLibrary;->addBookFiles(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Image;[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 926
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DownloadContentCommand"

    const-string v2, "AddBookToLibraryFailed"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 927
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadBook"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 928
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->setError(Z)V

    .line 933
    :cond_1
    invoke-direct {p0, v4}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->setDownloadToken(Ljava/lang/String;)V

    .line 941
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    .line 943
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v0, v1, :cond_3

    .line 945
    const-string v0, "BookDownloaded"

    .line 963
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "DownloadContentCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadBook"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v4}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->kill()V

    .line 966
    return-void

    .line 916
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DownloadContentCommand"

    const-string v2, "SidecarDownloadFailed"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    goto/16 :goto_0

    .line 937
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadBook"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    goto :goto_1

    .line 947
    :cond_3
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v0, v1, :cond_4

    .line 949
    const-string v0, "SampleDownloaded"

    goto :goto_2

    .line 951
    :cond_4
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v0, v1, :cond_5

    .line 953
    const-string v0, "MagazineDownloaded"

    goto :goto_2

    .line 955
    :cond_5
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v0, v1, :cond_6

    .line 957
    const-string v0, "NewspaperDownloaded"

    goto :goto_2

    .line 961
    :cond_6
    const-string v0, "UnknownContentDownloaded"

    goto :goto_2
.end method

.method private computePathToDownload()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 469
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->pathToDownload:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 475
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DownloadContentCommand"

    const-string v2, "NoRootLocation"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    move v0, v4

    .line 481
    :goto_0
    return v0

    .line 479
    :cond_1
    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->pathToDownload:Ljava/lang/String;

    .line 481
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private downloadBook()V
    .locals 7

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->computePathToDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->resetDownloadState()V

    .line 500
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    sget-object v1, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->DOWNLOAD_STATE:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->CONTENT_SUBSTATE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Begin download of content with ASIN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->setupConnection()V

    .line 507
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    if-nez v0, :cond_1

    .line 510
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DownloadContentCommand"

    const-string v2, "NoBookStream"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    invoke-virtual {v6}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->getLatestErrorState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    invoke-virtual {v6}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->getLatestErrorSubstate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadBook"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 513
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->setError(Z)V

    .line 514
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->kill()V

    goto/16 :goto_0

    .line 518
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->startDownloadingChunk()V

    goto/16 :goto_0
.end method

.method private downloadSidecar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 857
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->computePathToDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 862
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->resetDownloadState()V

    .line 863
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    sget-object v1, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->DOWNLOAD_STATE:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->SIDECAR_SUBSTATE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 866
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTypeString()Ljava/lang/String;

    move-result-object v3

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mbp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarFilename:Ljava/lang/String;

    .line 869
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->addTemporaryExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarFilename:Ljava/lang/String;

    .line 871
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarFilename:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/amazon/system/io/internal/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarFileStream:Ljava/io/OutputStream;

    .line 873
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarFileStream:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create output stream from file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DownloadContentCommand"

    const-string v2, "SidecarStreamCreationError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 878
    invoke-virtual {p0, v5}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->setError(Z)V

    .line 879
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->kill()V

    goto/16 :goto_0

    .line 883
    :cond_1
    new-instance v0, Lcom/amazon/foundation/internal/RawFileOutputStream;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarFileStream:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/RawFileOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->rawSidecarStream:Lcom/amazon/foundation/internal/RawFileOutputStream;

    .line 885
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarWebserviceClient:Lcom/amazon/kcp/internal/webservices/SidecarWebservice;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v4, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->rawSidecarStream:Lcom/amazon/foundation/internal/RawFileOutputStream;

    iget-object v5, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/internal/webservices/SidecarWebservice;->createSidecarRequest(Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    .line 888
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    const-string v1, "Content-Length"

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->contentLengthCallback:Lcom/amazon/foundation/IStringCallback;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->registerHttpHeaderCallback(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V

    .line 890
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarDownloadFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    goto/16 :goto_0
.end method

.method private getTotalDownloadSize()J
    .locals 2

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->isChunking:Z

    if-eqz v0, :cond_0

    .line 847
    iget-wide v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->totalDownloadSize:J

    .line 851
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->totalConnectionDownloadSize:J

    goto :goto_0
.end method

.method private onDownloadChunkFinished()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 703
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->isCDEDownloadError()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    .line 706
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->getNumBytesSoFar()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->numBytesSuccessfullyDownloaded:J

    sub-long/2addr v1, v3

    .line 707
    iget-object v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    invoke-virtual {v3}, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->getNumBytesSoFar()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->numBytesSuccessfullyDownloaded:J

    .line 708
    const-wide/32 v3, 0x10000

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 710
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting retries since we downloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes this chunk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const/4 v1, 0x2

    iput v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->retriesLeft:I

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_a

    .line 717
    :cond_1
    iget-boolean v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->isChunking:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 719
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->smartChunker:Lcom/amazon/kcp/application/IDownloadChunker;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IDownloadChunker;->onUnsuccessfulChunkDownload()V

    .line 723
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->retriesLeft:I

    if-lez v1, :cond_4

    .line 725
    iget v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->retriesLeft:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->retriesLeft:I

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encountered a download error, resuming download from byte "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->numBytesSuccessfullyDownloaded:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->retriesLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " retries left after this one!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DownloadContentCommand"

    const-string v2, "BookDownloadAutoRetry"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->startDownloadingChunk()V

    .line 836
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 703
    goto/16 :goto_0

    .line 738
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadBook"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 739
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "DownloadContentCommand"

    const-string v3, "BookDownloadFailed"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 740
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "DownloadContentCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BookDownloadFailed_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    invoke-virtual {v4}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->getLatestErrorState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    invoke-virtual {v4}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->getLatestErrorSubstate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v4}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getServerFailureCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v5}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getServerFailureCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 742
    if-eqz v0, :cond_5

    .line 745
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    sget-object v1, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->CDE_ERROR:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->uiMessaging:Lcom/amazon/kcp/application/IUIMessaging;

    if-eqz v0, :cond_5

    .line 749
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->getLinkURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->getLinkTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 752
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    .line 753
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->MAGAZINE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->NEWSPAPER:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-eq v0, v1, :cond_5

    .line 758
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->uiMessaging:Lcom/amazon/kcp/application/IUIMessaging;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-virtual {v2}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-virtual {v3}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->getLinkURL()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-virtual {v4}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->getLinkTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v5}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kcp/application/IUIMessaging;->showAlertWithDPLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    if-eqz v0, :cond_6

    .line 772
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->finalizeStream()Z

    .line 773
    iput-object v7, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    .line 780
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v0

    .line 781
    if-eqz v0, :cond_7

    array-length v1, v0

    if-lez v1, :cond_7

    .line 783
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Lcom/amazon/system/io/IFileConnectionFactory;->avaliableSizeForPath(Ljava/lang/String;)J

    move-result-wide v0

    .line 784
    const-wide/32 v2, 0x500000

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 787
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 789
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DownloadContentCommand"

    const-string v2, "FileSystemFull"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :cond_7
    :goto_4
    invoke-virtual {p0, v6}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->setError(Z)V

    .line 802
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->kill()V

    goto/16 :goto_1

    .line 740
    :cond_8
    const-string v4, ""

    goto/16 :goto_2

    .line 764
    :cond_9
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->uiMessaging:Lcom/amazon/kcp/application/IUIMessaging;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-virtual {v2}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 805
    :cond_a
    iget-wide v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->numBytesSuccessfullyDownloaded:J

    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->getTotalDownloadSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    .line 808
    iget-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->isChunking:Z

    if-eqz v0, :cond_b

    .line 810
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->smartChunker:Lcom/amazon/kcp/application/IDownloadChunker;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDownloadChunker;->onSuccessfulChunkDownload()V

    .line 812
    :cond_b
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->startDownloadingChunk()V

    goto/16 :goto_1

    .line 817
    :cond_c
    iget-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->isChunking:Z

    if-eqz v0, :cond_d

    .line 819
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DownloadContentCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BookDownloadSucceed_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->smartChunker:Lcom/amazon/kcp/application/IDownloadChunker;

    invoke-interface {v3}, Lcom/amazon/kcp/application/IDownloadChunker;->getChunkSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->smartChunker:Lcom/amazon/kcp/application/IDownloadChunker;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDownloadChunker;->onSuccessfulChunkDownload()V

    .line 826
    :cond_d
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->finalizeStream()Z

    .line 828
    iget-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->needSidecar:Z

    if-eqz v0, :cond_e

    .line 830
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->downloadSidecar()V

    goto/16 :goto_1

    .line 834
    :cond_e
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->addContentToLibrary()V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_4
.end method

.method private onDownloadSidecarFinished()V
    .locals 4

    .prologue
    .line 895
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarDownloaded:Z

    .line 897
    iget-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarDownloaded:Z

    if-nez v0, :cond_0

    .line 899
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DownloadContentCommand"

    const-string v2, "SidecarDownloadError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 901
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 903
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->addContentToLibrary()V

    .line 904
    return-void

    .line 895
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onHttpHeadersReceived(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 693
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->needSidecar:Z

    .line 698
    :cond_0
    return-void
.end method

.method private onHttpStatusCodeReceived(I)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 638
    sget v0, Lcom/mobipocket/common/net/WebLoader;->HTTP_PARTIAL_CONTENT:I

    if-ne p1, v0, :cond_2

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->isChunking:Z

    .line 641
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->smartChunker:Lcom/amazon/kcp/application/IDownloadChunker;

    if-eqz v0, :cond_0

    const/16 v0, 0x19d

    if-ne p1, v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->smartChunker:Lcom/amazon/kcp/application/IDownloadChunker;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDownloadChunker;->onUnsuccessfulChunkDownload()V

    .line 646
    :cond_0
    const/16 v0, 0x193

    if-ne p1, v0, :cond_4

    .line 650
    new-instance v0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;-><init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    .line 652
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-static {v0, v1}, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice;->getNewCDEDownloadErrorDescriber(Lcom/amazon/kcp/application/models/internal/TodoItem;Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    move-result-object v0

    .line 653
    if-nez v0, :cond_3

    .line 689
    :cond_1
    :goto_1
    return-void

    .line 638
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 658
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->messageDetails:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;

    invoke-virtual {v1, v4}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;->setCDEDownloadError(Z)V

    .line 660
    new-instance v1, Lcom/amazon/foundation/internal/parser/xml/SAXParser;

    invoke-direct {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;-><init>(Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;)V

    .line 661
    new-instance v0, Lcom/amazon/foundation/internal/CharOutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lcom/amazon/foundation/internal/CharOutputStreamWriter;-><init>(Lcom/amazon/foundation/internal/ICharOutputStream;Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->setStream(Lcom/amazon/foundation/internal/IDataOutputStream;)V

    goto :goto_1

    .line 666
    :cond_4
    sget v0, Lcom/mobipocket/common/net/WebLoader;->HTTP_OK:I

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->numBytesSuccessfullyDownloaded:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->finalizeStream()Z

    .line 672
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 675
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->prepareNewEmptyStream()Lcom/amazon/foundation/internal/RawFileOutputStream;

    move-result-object v0

    .line 677
    if-nez v0, :cond_5

    .line 679
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DownloadContentCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoBookStream_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    invoke-virtual {v3}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->getLatestErrorState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    invoke-virtual {v3}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->getLatestErrorSubstate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 680
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadBook"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->setError(Z)V

    .line 682
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->kill()V

    goto/16 :goto_1

    .line 686
    :cond_5
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->setStream(Lcom/amazon/foundation/internal/IDataOutputStream;)V

    .line 687
    iput-wide v5, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->numBytesSuccessfullyDownloaded:J

    goto/16 :goto_1
.end method

.method private prepareNewEmptyStream()Lcom/amazon/foundation/internal/RawFileOutputStream;
    .locals 4

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    invoke-static {v1, v0, v2, v3}, Lcom/amazon/system/io/internal/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;ZLcom/amazon/foundation/IStatusTracker;)Ljava/io/OutputStream;

    move-result-object v1

    .line 588
    if-nez v1, :cond_0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create output stream from file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const/4 v0, 0x0

    .line 594
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/foundation/internal/RawFileOutputStream;

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/RawFileOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private resetDownloadState()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 486
    iput-wide v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->numBytesSuccessfullyDownloaded:J

    .line 487
    iput-wide v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->totalDownloadSize:J

    iput-wide v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->totalConnectionDownloadSize:J

    .line 488
    const/4 v0, 0x2

    iput v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->retriesLeft:I

    .line 489
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->reset()V

    .line 490
    return-void
.end method

.method private setDownloadToken(Ljava/lang/String;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->resumableDownloadToken:Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->settingsHelper:Lcom/amazon/system/io/IPersistentSettingsHelper;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookFilename:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->setToken(Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method private setupConnection()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 530
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->finalizeStream()Z

    .line 533
    iput-object v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->settingsHelper:Lcom/amazon/system/io/IPersistentSettingsHelper;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookFilename:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->getToken(Lcom/amazon/system/io/IPersistentSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->resumableDownloadToken:Ljava/lang/String;

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->resumableDownloadToken:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 545
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    invoke-static {v1, v0, v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->outputStreamAppendingExistingFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/foundation/IStatusTracker;)Ljava/io/OutputStream;

    move-result-object v1

    .line 547
    if-eqz v1, :cond_1

    .line 549
    new-instance v2, Lcom/amazon/foundation/internal/RawFileOutputStream;

    invoke-direct {v2, v1}, Lcom/amazon/foundation/internal/RawFileOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 550
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->fileSize(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->numBytesSuccessfullyDownloaded:J

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resumable download initialized at byte offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->numBytesSuccessfullyDownloaded:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 561
    :goto_0
    if-nez v0, :cond_3

    .line 564
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->prepareNewEmptyStream()Lcom/amazon/foundation/internal/RawFileOutputStream;

    move-result-object v0

    .line 565
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->numBytesSuccessfullyDownloaded:J

    .line 568
    if-nez v0, :cond_3

    .line 581
    :goto_1
    return-void

    .line 556
    :cond_1
    invoke-direct {p0, v3}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->setDownloadToken(Ljava/lang/String;)V

    :cond_2
    move-object v0, v3

    goto :goto_0

    .line 574
    :cond_3
    new-instance v1, Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/ResumableStreamAdapter;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    .line 575
    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    iget-wide v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->numBytesSuccessfullyDownloaded:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->setStream(Lcom/amazon/foundation/internal/IDataOutputStream;J)V

    .line 577
    const/4 v0, 0x2

    iput v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->retriesLeft:I

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->isChunking:Z

    goto :goto_1
.end method

.method private startDownloadingChunk()V
    .locals 10

    .prologue
    .line 611
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->smartChunker:Lcom/amazon/kcp/application/IDownloadChunker;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDownloadChunker;->getChunkSize()I

    move-result v0

    int-to-long v6, v0

    .line 612
    iget-wide v4, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->numBytesSuccessfullyDownloaded:J

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got chunk size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from the smart chunker (retries left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->retriesLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookWebserviceClient:Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    iget-object v8, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->resumableDownloadToken:Ljava/lang/String;

    iget-object v9, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->statusTracker:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    invoke-virtual/range {v0 .. v9}, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice;->createDownloadRequest(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/models/internal/TodoItem;Lcom/amazon/foundation/internal/IDataOutputStream;JJLjava/lang/String;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    .line 626
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->headersStatusCodeCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->registerHttpStatusCallback(Lcom/amazon/foundation/IIntCallback;)V

    .line 627
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    const-string v1, "Hint-Sidecar-Download"

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->headersSidecarCallback:Lcom/amazon/foundation/IStringCallback;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->registerHttpHeaderCallback(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V

    .line 628
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    const-string v1, "Content-Length"

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->contentLengthCallback:Lcom/amazon/foundation/IStringCallback;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->registerHttpHeaderCallback(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V

    .line 629
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    const-string v1, "Content-Range"

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->contentRangeCallback:Lcom/amazon/foundation/IStringCallback;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->registerHttpHeaderCallback(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V

    .line 630
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    const-string v1, "ResumableDownloadToken"

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->resumableDownloadTokenCallback:Lcom/amazon/foundation/IStringCallback;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->registerHttpHeaderCallback(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V

    .line 632
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->chunkDownloadFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 633
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadBook"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->todoItemWrapper:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->downloadBook()V

    .line 460
    return-void
.end method

.method public kill()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 971
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    .line 977
    iput-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->bookRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    .line 978
    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->kill()V

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    if-eqz v0, :cond_1

    .line 987
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    .line 988
    iput-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->sidecarRequest:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    .line 989
    invoke-virtual {v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->kill()V

    .line 993
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    if-eqz v0, :cond_3

    .line 995
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 997
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->setError(Z)V

    .line 1000
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->cancel()V

    .line 1001
    iput-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    .line 1005
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    if-eqz v0, :cond_4

    .line 1007
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/ResumableStreamAdapter;->finalizeStream()Z

    .line 1008
    iput-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->streamAdapter:Lcom/amazon/foundation/internal/ResumableStreamAdapter;

    .line 1011
    :cond_4
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;->kill()V

    .line 1012
    return-void
.end method
