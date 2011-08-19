.class public Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$1;,
        Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;,
        Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;,
        Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

.field private static requestId:I


# instance fields
.field protected volatile active:Z

.field protected bytesReceived:I

.field protected bytesSent:I

.field private final clock:Lcom/google/mobile/common/Clock;

.field protected connectionFactory:Lcom/google/mobile/common/io/HttpConnectionFactory;

.field protected cookie:J

.field protected final debug:Z

.field protected final defaultServer:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

.field protected final distributionChannel:Ljava/lang/String;

.field private errorRetryTime:J

.field private firstConnectionErrorTime:J

.field protected globalSpecialUrlArguments:Ljava/lang/String;

.field private volatile lastActiveTime:J

.field private lastException:Ljava/lang/Throwable;

.field private lastMcc:I

.field private volatile lastSuccessTime:J

.field private final listeners:Ljava/util/Vector;

.field private maxNetworkErrorRetryTimeout:J

.field protected volatile mockLostDataConnection:Z

.field private volatile networkErrorMode:Z

.field private volatile networkSpeedBytesPerSecond:I

.field protected final platformID:Ljava/lang/String;

.field protected final properties:Lcom/google/mobile/common/io/protocol/ProtoBuf;

.field protected volatile serverAddress:Ljava/lang/String;

.field protected final softwareVersion:Ljava/lang/String;

.field private volatile suspendCount:I

.field protected thirdPartyServers:Ljava/util/Vector;

.field private final threadDispatchLock:Ljava/lang/Object;

.field protected warmUpManager:Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;

.field private volatile workerForegroundThreadCount:I

.field private volatile workerSubmissionThreadCount:I

.field private volatile workerThreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v2, -0x1

    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    iput-boolean v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->active:Z

    iput-wide v4, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J

    iput-wide v4, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    iput-wide v4, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    iput v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    iput v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    iput v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;

    iput v2, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->networkSpeedBytesPerSecond:I

    iput v2, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->lastMcc:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->maybeGetSecureAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->serverAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->softwareVersion:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->platformID:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->distributionChannel:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    invoke-static {}, Lcom/google/mobile/common/Config;->getInstance()Lcom/google/mobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mobile/common/Config;->getConnectionFactory()Lcom/google/mobile/common/io/HttpConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Lcom/google/mobile/common/io/HttpConnectionFactory;

    invoke-static {}, Lcom/google/mobile/common/Config;->getInstance()Lcom/google/mobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mobile/common/Config;->getClock()Lcom/google/mobile/common/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clock:Lcom/google/mobile/common/Clock;

    new-instance v0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clock:Lcom/google/mobile/common/Clock;

    invoke-direct {v0, p0, v1}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;-><init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;Lcom/google/mobile/common/Clock;)V

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;

    iput v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    iput v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    new-instance v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->serverAddress:Ljava/lang/String;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;-><init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Ljava/util/Vector;B)V

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->loadOrRequestCookie()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    new-instance v0, Lcom/google/mobile/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/mobile/googlenav/proto/GmmMessageTypes;->CLIENT_PROPERTIES_REQUEST_PROTO:Lcom/google/mobile/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/mobile/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->properties:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$308(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2

    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    return v0
.end method

.method static synthetic access$310(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2

    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2

    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2

    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    return v0
.end method

.method static synthetic access$508(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2

    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    return v0
.end method

.method static synthetic access$510(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2

    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)Lcom/google/mobile/common/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clock:Lcom/google/mobile/common/Clock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clearNetworkError()V

    return-void
.end method

.method private addClientPropertiesRequest(Ljava/util/Vector;Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->canHandle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/mobile/googlenav/datarequest/ClientPropertiesRequest;

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->properties:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v1}, Lcom/google/mobile/googlenav/datarequest/ClientPropertiesRequest;-><init>(Lcom/google/mobile/common/io/protocol/ProtoBuf;)V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mobile/googlenav/datarequest/DataRequest;

    instance-of v1, p0, Lcom/google/mobile/googlenav/datarequest/ClientPropertiesRequest;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public static clearInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->instance:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    return-void
.end method

.method private declared-synchronized clearNetworkError()V
    .locals 2

    monitor-enter p0

    const-wide/high16 v0, -0x8000

    :try_start_0
    iput-wide v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static containsForegroundRequest(Ljava/util/Vector;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mobile/googlenav/datarequest/DataRequest;

    invoke-interface {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method protected static containsSubmissionRequest(Ljava/util/Vector;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mobile/googlenav/datarequest/DataRequest;

    invoke-interface {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->isSubmission()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    .locals 7

    const-class v6, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->instance:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to create multiple DataRequestDispatchers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->maybeGetSecureAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->instance:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    new-instance v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;

    sget-object v1, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->instance:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;-><init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$1;)V

    invoke-static {v0}, Lcom/google/mobile/common/Log;->setLogSaver(Lcom/google/mobile/common/Log$LogSaver;)V

    sget-object v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->instance:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v0
.end method

.method public static getInstance()Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
    .locals 1

    sget-object v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->instance:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    return-object v0
.end method

.method private handleError(ILjava/lang/Throwable;)V
    .locals 5

    const-wide/16 v3, 0x7d0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->lastException:Ljava/lang/Throwable;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/google/mobile/common/ConfigSettings;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Lcom/google/mobile/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Lcom/google/mobile/common/io/HttpConnectionFactory;->notifyFailure()V

    iget-boolean v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    if-nez v1, :cond_4

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    iget-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    const-wide/high16 v3, -0x8000

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clock:Lcom/google/mobile/common/Clock;

    invoke-interface {v1}, Lcom/google/mobile/common/Clock;->relativeTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clock:Lcom/google/mobile/common/Clock;

    invoke-interface {v3}, Lcom/google/mobile/common/Clock;->relativeTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    :goto_1
    iget-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    iget-wide v3, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    iput-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :try_start_2
    iget-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    const-wide/16 v3, 0x5

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static loadCookie()J
    .locals 3

    const-string v0, "SessionID"

    invoke-static {v0}, Lcom/google/mobile/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/mobile/common/Config;->getInstance()Lcom/google/mobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mobile/common/Config;->getPersistentStore()Lcom/google/mobile/common/io/PersistentStore;

    move-result-object v0

    const-string v1, "SessionID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/mobile/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static maybeGetSecureAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method static saveCookie(J)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v1, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    invoke-static {}, Lcom/google/mobile/common/Config;->getInstance()Lcom/google/mobile/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/mobile/common/Config;->getPersistentStore()Lcom/google/mobile/common/io/PersistentStore;

    move-result-object v1

    const-string v2, "SessionID"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/mobile/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    invoke-interface {v1}, Lcom/google/mobile/common/io/PersistentStore;->savePreferences()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addDataRequest(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->mockLostDataConnection:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-interface {p1}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->canHandle(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->addDataRequest(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->addDataRequest(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    goto :goto_1
.end method

.method public declared-synchronized addDataRequestListener(Lcom/google/mobile/googlenav/datarequest/DataRequestListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canDispatchNow()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->active:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Lcom/google/mobile/common/io/HttpConnectionFactory;

    invoke-interface {v0}, Lcom/google/mobile/common/io/HttpConnectionFactory;->getNetworkWorkedThisSession()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public generateRequest(Ljava/util/Vector;Ljava/io/OutputStream;Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x17

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1, p3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->addClientPropertiesRequest(Ljava/util/Vector;Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V

    iget-byte v1, p3, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->headerFlag:B

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {}, Lcom/google/mobile/common/Config;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->platformID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->distributionChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mobile/googlenav/datarequest/DataRequest;

    invoke-interface {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-interface {p0, v0}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->writeRequestData(Ljava/io/DataOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-byte v1, p3, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->headerFlag:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public getLastActiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J

    return-wide v0
.end method

.method public getLastSuccessTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J

    return-wide v0
.end method

.method public declared-synchronized isRequestActive()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSuspended()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->suspendCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadOrRequestCookie()J
    .locals 4

    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->loadCookie()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;-><init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$1;)V

    invoke-virtual {p0, v2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    :cond_0
    return-wide v0
.end method

.method protected final maybeNotifyNetworkError(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    if-nez v1, :cond_0

    const-string v0, "DRD: in Error Mode"

    invoke-static {v0}, Lcom/google/mobile/common/Log;->logToScreen(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    move v0, v2

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Lcom/google/mobile/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Lcom/google/mobile/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected notifyComplete(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->snapshotListeners()[Lcom/google/mobile/googlenav/datarequest/DataRequestListener;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lcom/google/mobile/googlenav/datarequest/DataRequestListener;->onComplete(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyNetworkError(IZLjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->snapshotListeners()[Lcom/google/mobile/googlenav/datarequest/DataRequestListener;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {v2, p1, p2, p3}, Lcom/google/mobile/googlenav/datarequest/DataRequestListener;->onNetworkError(IZLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyPermanentFailure(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->snapshotListeners()[Lcom/google/mobile/googlenav/datarequest/DataRequestListener;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lcom/google/mobile/googlenav/datarequest/DataRequestListener;->onPermanentFailure(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected processDataRequest(Ljava/io/DataInput;Lcom/google/mobile/googlenav/datarequest/DataRequest;Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-interface {p2}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " != "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {p2, p1}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->readResponseData(Ljava/io/DataInput;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_1

    invoke-interface {p2}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->notifyComplete(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p3, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method protected serviceRequests(Ljava/util/Vector;Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->onStartServiceRequests(Ljava/lang/Object;)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->urlArguments(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->generateRequest(Ljava/util/Vector;Ljava/io/OutputStream;Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V

    new-instance v12, Ljava/lang/StringBuffer;

    const-string v4, "DRD"

    invoke-direct {v12, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "("

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget v7, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    add-int/lit8 v13, v7, 0x1

    sput v13, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    move v7, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v7, v4, :cond_1

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mobile/googlenav/datarequest/DataRequest;

    invoke-interface {v4}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v13, 0x1

    sub-int/2addr v4, v13

    if-eq v7, v4, :cond_0

    const-string v4, "|"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clock:Lcom/google/mobile/common/Clock;

    move-object v6, v0

    invoke-interface {v6}, Lcom/google/mobile/common/Clock;->relativeTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Lcom/google/mobile/common/io/HttpConnectionFactory;

    move-object v13, v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverAddress:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    invoke-interface {v13, v11, v14}, Lcom/google/mobile/common/io/HttpConnectionFactory;->createConnection(Ljava/lang/String;Z)Lcom/google/mobile/common/io/GoogleHttpConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    :try_start_1
    const-string v5, "Content-Type"

    const-string v13, "application/binary"

    invoke-interface {v11, v5, v13}, Lcom/google/mobile/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Length"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v5, v13}, Lcom/google/mobile/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11}, Lcom/google/mobile/common/io/GoogleHttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v13

    :try_start_2
    invoke-virtual {v13, v4}, Ljava/io/DataOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    move v5, v0

    array-length v4, v4

    add-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    invoke-interface {v11}, Lcom/google/mobile/common/io/GoogleHttpConnection;->openDataInputStream()Ljava/io/DataInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v14

    :try_start_3
    invoke-interface {v11}, Lcom/google/mobile/common/io/GoogleHttpConnection;->getResponseCode()I

    move-result v4

    invoke-interface {v11}, Lcom/google/mobile/common/io/GoogleHttpConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clock:Lcom/google/mobile/common/Clock;

    move-object v8, v0

    invoke-interface {v8}, Lcom/google/mobile/common/Clock;->relativeTimeMillis()J

    move-result-wide v8

    sub-long v15, v8, v6

    const-string v8, ", "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-wide/16 v8, 0x3e8

    cmp-long v8, v15, v8

    if-gez v8, :cond_6

    const-string v8, "<1s"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/16 v8, 0x1f5

    if-ne v4, v8, :cond_b

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/mobile/common/Log;->logToScreen(Ljava/lang/String;)V

    if-eqz v14, :cond_2

    :try_start_4
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    :goto_2
    if-eqz v13, :cond_3

    if-nez v10, :cond_3

    :try_start_5
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_3
    :goto_3
    if-eqz v11, :cond_4

    :try_start_6
    invoke-interface {v11}, Lcom/google/mobile/common/io/GoogleHttpConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_4
    :goto_4
    const/4 v4, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_22

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mobile/googlenav/datarequest/DataRequest;

    invoke-interface/range {p2 .. p2}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual/range {p1 .. p2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->notifyPermanentFailure(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    const-wide/16 v8, 0x3e8

    :try_start_7
    div-long v8, v15, v8

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v5, v14

    move-object v6, v13

    move-object v7, v11

    :goto_6
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/mobile/common/Log;->logToScreen(Ljava/lang/String;)V

    if-eqz v5, :cond_7

    :try_start_8
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_7
    :goto_7
    if-eqz v6, :cond_8

    if-nez v10, :cond_8

    :try_start_9
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_8
    :goto_8
    if-eqz v7, :cond_9

    :try_start_a
    invoke-interface {v7}, Lcom/google/mobile/common/io/GoogleHttpConnection;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_9
    :goto_9
    const/4 v5, 0x0

    :goto_a
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_21

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mobile/googlenav/datarequest/DataRequest;

    invoke-interface/range {p2 .. p2}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual/range {p1 .. p2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->notifyPermanentFailure(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_b
    const/16 v8, 0xc8

    if-eq v4, v8, :cond_f

    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad Response Code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/mobile/common/Log;->logToScreen(Ljava/lang/String;)V

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_e

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Server 500 for request types: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mobile/googlenav/datarequest/DataRequest;

    invoke-interface/range {p2 .. p2}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->onServerFailure()V

    invoke-interface/range {p2 .. p2}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v6, v7, :cond_c

    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    move v6, v0

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Lcom/google/mobile/common/io/HttpConnectionFactory;

    move-object v6, v0

    invoke-interface {v6}, Lcom/google/mobile/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v6

    const/4 v7, 0x6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move v1, v7

    move v2, v6

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    :cond_e
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad HTTP response code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    const-string v4, "application/binary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad HTTP content type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/mobile/common/Log;->logToScreen(Ljava/lang/String;)V

    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad HTTP content type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_10
    invoke-interface {v11}, Lcom/google/mobile/common/io/GoogleHttpConnection;->getLength()J

    move-result-wide v4

    move-wide v0, v4

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    move v4, v0

    add-int v4, v4, v17

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    const/16 v5, 0x17

    if-eq v4, v5, :cond_15

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/mobile/common/Log;->logToScreen(Ljava/lang/String;)V

    if-eqz v14, :cond_11

    :try_start_c
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_11
    :goto_c
    if-eqz v13, :cond_12

    if-nez v10, :cond_12

    :try_start_d
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_12
    :goto_d
    if-eqz v11, :cond_13

    :try_start_e
    invoke-interface {v11}, Lcom/google/mobile/common/io/GoogleHttpConnection;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :cond_13
    :goto_e
    const/4 v4, 0x0

    :goto_f
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_22

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mobile/googlenav/datarequest/DataRequest;

    invoke-interface/range {p2 .. p2}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual/range {p1 .. p2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->notifyPermanentFailure(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_15
    const/4 v4, 0x0

    move v5, v4

    :goto_10
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v5, v4, :cond_1a

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mobile/googlenav/datarequest/DataRequest;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v4

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->processDataRequest(Ljava/io/DataInput;Lcom/google/mobile/googlenav/datarequest/DataRequest;Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_10

    :catch_0
    move-exception v6

    :try_start_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/mobile/common/Log;->logToScreen(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    move v7, v0

    if-eqz v7, :cond_16

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException processing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_16
    instance-of v7, v6, Ljava/io/EOFException;

    if-eqz v7, :cond_17

    invoke-interface {v4}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->onServerFailure()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    move v7, v0

    if-eqz v7, :cond_17

    invoke-interface {v4}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No server support for data request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Lcom/google/mobile/common/io/HttpConnectionFactory;

    move-object v7, v0

    invoke-interface {v7}, Lcom/google/mobile/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v7

    const/4 v8, 0x6

    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    :cond_17
    const/4 v4, 0x0

    :goto_11
    if-ge v4, v5, :cond_18

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_18
    throw v6

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RuntimeException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/mobile/common/Log;->logToScreen(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    move v6, v0

    if-eqz v6, :cond_19

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RuntimeException processing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_19
    throw v5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->clock:Lcom/google/mobile/common/Clock;

    move-object v4, v0

    invoke-interface {v4}, Lcom/google/mobile/common/Clock;->relativeTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    long-to-int v9, v4

    const/16 v4, 0x16

    const-string v5, "fb"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lcom/google/mobile/common/Log;->addEvent(ILjava/lang/String;Ljava/lang/String;)Z

    const/16 v4, 0x16

    const-string v5, "lb"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lcom/google/mobile/common/Log;->addEvent(ILjava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;

    move-object v4, v0

    long-to-int v8, v15

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->onFinishServiceRequests(Ljava/lang/Object;JII)V

    const/16 v4, 0x2000

    move/from16 v0, v17

    move v1, v4

    if-lt v0, v1, :cond_1b

    int-to-long v4, v9

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1b

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move v4, v0

    div-int/2addr v4, v9

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->networkSpeedBytesPerSecond:I

    :cond_1b
    const-string v4, ", "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x3e8

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_20

    const-string v4, "<1kb"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_12
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->removeAllElements()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/mobile/common/Log;->logToScreen(Ljava/lang/String;)V

    if-eqz v14, :cond_1c

    :try_start_12
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    :cond_1c
    :goto_13
    if-eqz v13, :cond_1d

    if-nez v10, :cond_1d

    :try_start_13
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    :cond_1d
    :goto_14
    if-eqz v11, :cond_1e

    :try_start_14
    invoke-interface {v11}, Lcom/google/mobile/common/io/GoogleHttpConnection;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    :cond_1e
    :goto_15
    const/4 v4, 0x0

    :goto_16
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_22

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mobile/googlenav/datarequest/DataRequest;

    invoke-interface/range {p2 .. p2}, Lcom/google/mobile/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual/range {p1 .. p2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->notifyPermanentFailure(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_20
    :try_start_15
    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x3e8

    move v4, v0

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "kb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_12

    :cond_21
    throw v4

    :cond_22
    return-void

    :catch_2
    move-exception v5

    goto/16 :goto_7

    :catch_3
    move-exception v5

    goto/16 :goto_8

    :catch_4
    move-exception v5

    goto/16 :goto_9

    :catch_5
    move-exception v4

    goto/16 :goto_2

    :catch_6
    move-exception v4

    goto/16 :goto_3

    :catch_7
    move-exception v4

    goto/16 :goto_4

    :catch_8
    move-exception v4

    goto/16 :goto_c

    :catch_9
    move-exception v4

    goto/16 :goto_d

    :catch_a
    move-exception v4

    goto/16 :goto_e

    :catch_b
    move-exception v4

    goto :goto_13

    :catch_c
    move-exception v4

    goto :goto_14

    :catch_d
    move-exception v4

    goto :goto_15

    :catchall_1
    move-exception v4

    move-object v6, v8

    move-object v7, v5

    move-object v5, v9

    goto/16 :goto_6

    :catchall_2
    move-exception v4

    move-object v5, v9

    move-object v6, v8

    move-object v7, v11

    goto/16 :goto_6

    :catchall_3
    move-exception v4

    move-object v5, v9

    move-object v6, v13

    move-object v7, v11

    goto/16 :goto_6
.end method

.method public setAndroidLoggingId2(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->properties:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public setAndroidSignature(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->properties:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->properties:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public setGzipEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->properties:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setBool(IZ)V

    return-void
.end method

.method public declared-synchronized setMaxNetworkErrorRetryTimeout(J)V
    .locals 2

    const-wide/16 v0, 0x7d0

    monitor-enter p0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x7d0

    :try_start_0
    iput-wide v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-wide p1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setScreenPixelDensity(I)V
    .locals 3

    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->properties:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v0}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setInt(II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected declared-synchronized snapshotListeners()[Lcom/google/mobile/googlenav/datarequest/DataRequestListener;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/mobile/googlenav/datarequest/DataRequestListener;

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->active:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->start()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->active:Z

    return-void
.end method

.method public declared-synchronized suspend()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->suspendCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->suspendCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unsuspend()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->suspendCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->suspendCount:I

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activateIfNeeded()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->activateIfNeeded()V

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->onUnsuspend()V

    goto :goto_0
.end method

.method protected urlArguments(Ljava/util/Vector;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "?"

    iget-object v2, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->globalSpecialUrlArguments:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/mobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->globalSpecialUrlArguments:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&"

    :cond_0
    const/4 v2, 0x0

    move v5, v2

    move-object v2, v1

    move v1, v5

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mobile/googlenav/datarequest/DataRequest;

    instance-of v3, p0, Lcom/google/mobile/googlenav/datarequest/NeedsSpecialUrl;

    if-eqz v3, :cond_1

    check-cast p0, Lcom/google/mobile/googlenav/datarequest/NeedsSpecialUrl;

    invoke-interface {p0}, Lcom/google/mobile/googlenav/datarequest/NeedsSpecialUrl;->getParams()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/mobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_3
    return-object v0
.end method
