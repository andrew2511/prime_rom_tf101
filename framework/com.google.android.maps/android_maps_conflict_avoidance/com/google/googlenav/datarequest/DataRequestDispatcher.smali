.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
.super Ljava/lang/Object;
.source "DataRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;
    }
.end annotation


# static fields
.field public static final MAX_WORKER_THREAD_COUNT:I

.field private static volatile instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

.field private static requestId:I


# instance fields
.field protected volatile active:Z

.field protected bytesReceived:I

.field protected bytesSent:I

.field private final clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field protected connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

.field protected cookie:J

.field protected final debug:Z

.field protected final defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

.field protected final distributionChannel:Ljava/lang/String;

.field private errorRetryTime:J

.field private firstConnectionErrorTime:J

.field protected globalSpecialUrlArguments:Ljava/lang/String;

.field private volatile lastActiveTime:J

.field private lastException:Ljava/lang/Throwable;

.field private lastExceptionTime:J

.field private volatile lastSuccessTime:J

.field private final listeners:Ljava/util/Vector;

.field private maxNetworkErrorRetryTimeout:J

.field protected volatile mockLostDataConnection:Z

.field private volatile networkErrorMode:Z

.field private volatile networkSpeedBytesPerSecond:I

.field protected final platformID:Ljava/lang/String;

.field protected final properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

.field protected volatile serverAddress:Ljava/lang/String;

.field protected final softwareVersion:Ljava/lang/String;

.field private volatile suspendCount:I

.field protected thirdPartyServers:Ljava/util/Vector;

.field private final threadDispatchLock:Ljava/lang/Object;

.field protected warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

.field private volatile workerForegroundThreadCount:I

.field private volatile workerSubmissionThreadCount:I

.field private volatile workerThreadCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 287
    const/4 v0, 0x0

    sput v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    .line 316
    const/4 v0, 0x4

    sput v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->MAX_WORKER_THREAD_COUNT:I

    .line 320
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "serverAddress"
    .parameter "platformID"
    .parameter "softwareVersion"
    .parameter "distributionChannel"
    .parameter "debug"

    .prologue
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    .line 139
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    .line 187
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    .line 197
    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    .line 211
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J

    .line 217
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J

    .line 232
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    .line 239
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    .line 242
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    .line 248
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    .line 255
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    .line 258
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;

    .line 272
    const/4 v0, -0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkSpeedBytesPerSecond:I

    .line 375
    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_43

    .line 376
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 378
    :cond_43
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->serverAddress:Ljava/lang/String;

    .line 379
    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->softwareVersion:Ljava/lang/String;

    .line 380
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->platformID:Ljava/lang/String;

    .line 381
    iput-object p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->distributionChannel:Ljava/lang/String;

    .line 382
    iput-boolean p5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    .line 383
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    .line 384
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    .line 385
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-direct {v0, p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/common/Clock;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    .line 386
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    .line 387
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    .line 388
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->serverAddress:Ljava/lang/String;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Ljava/util/Vector;B)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    .line 390
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->loadOrRequestCookie()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    .line 392
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->CLIENT_PROPERTIES_REQUEST_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    .line 395
    return-void
.end method

.method static synthetic access$1002(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$308(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    return v0
.end method

.method static synthetic access$310(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    return v0
.end method

.method static synthetic access$408(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    return v0
.end method

.method static synthetic access$410(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    return v0
.end method

.method static synthetic access$508(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    return v0
.end method

.method static synthetic access$510(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    return v0
.end method

.method static synthetic access$602(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    return-object v0
.end method

.method static synthetic access$800(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    return-wide v0
.end method

.method static synthetic access$900(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clearNetworkError()V

    return-void
.end method

.method private addClientPropertiesRequest(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .registers 7
    .parameter "requests"
    .parameter "dispatcherServer"

    .prologue
    const/4 v3, 0x0

    .line 1175
    const/16 v2, 0x3e

    invoke-virtual {p2, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->canHandle(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1176
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    .line 1178
    .local v0, clientProperties:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_28

    .line 1179
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1180
    .local v1, request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    instance-of v2, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;

    if-eqz v2, :cond_24

    .line 1182
    invoke-virtual {p1, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1190
    .end local v0           #clientProperties:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;
    .end local v1           #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_23
    :goto_23
    return-void

    .line 1184
    .restart local v0       #clientProperties:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;
    .restart local v1       #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_24
    invoke-virtual {p1, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_23

    .line 1187
    .end local v1           #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_28
    invoke-virtual {p1, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_23
.end method

.method private declared-synchronized clearNetworkError()V
    .registers 3

    .prologue
    .line 787
    monitor-enter p0

    const-wide/high16 v0, -0x8000

    :try_start_3
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    .line 789
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 790
    monitor-exit p0

    return-void

    .line 787
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static containsForegroundRequest(Ljava/util/Vector;)Z
    .registers 4
    .parameter "requests"

    .prologue
    .line 1211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 1212
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1213
    .local v1, request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1214
    const/4 v2, 0x1

    .line 1218
    .end local v1           #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :goto_14
    return v2

    .line 1211
    .restart local v1       #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1218
    .end local v1           #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_18
    const/4 v2, 0x0

    goto :goto_14
.end method

.method protected static containsSubmissionRequest(Ljava/util/Vector;)Z
    .registers 4
    .parameter "requests"

    .prologue
    .line 1223
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 1224
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1225
    .local v1, request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isSubmission()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1226
    const/4 v2, 0x1

    .line 1229
    .end local v1           #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :goto_14
    return v2

    .line 1223
    .restart local v1       #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1229
    .end local v1           #request:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_18
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .registers 12
    .parameter "serverAddress"
    .parameter "platformID"
    .parameter "softwareVersion"
    .parameter "distributionChannel"
    .parameter "debug"

    .prologue
    .line 337
    const-class v6, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    monitor-enter v6

    :try_start_3
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_12

    .line 338
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to create multiple DataRequestDispatchers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 337
    :catchall_f
    move-exception v0

    monitor-exit v6

    throw v0

    .line 341
    :cond_12
    :try_start_12
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    .line 343
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;)V

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->setLogSaver(Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;)V

    .line 344
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_f

    monitor-exit v6

    return-object v0
.end method

.method public static getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .registers 1

    .prologue
    .line 348
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    return-object v0
.end method

.method private handleError(ILjava/lang/Throwable;)V
    .registers 8
    .parameter "code"
    .parameter "t"

    .prologue
    const-wide/16 v3, 0x7d0

    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, call:Z
    monitor-enter p0

    .line 803
    :try_start_4
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastException:Ljava/lang/Throwable;

    .line 804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastExceptionTime:J

    .line 807
    if-eqz p2, :cond_17

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 808
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 811
    :cond_17
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->notifyFailure()V

    .line 813
    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    if-nez v1, :cond_60

    .line 814
    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    .line 816
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    const-wide/high16 v3, -0x8000

    cmp-long v1, v1, v3

    if-nez v1, :cond_4f

    .line 817
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    .line 837
    :cond_34
    :goto_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_77

    .line 839
    if-eqz v0, :cond_4e

    .line 842
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4b

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->usingMDS()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 845
    const/4 p1, 0x4

    .line 847
    :cond_4b
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V

    .line 849
    :cond_4e
    return-void

    .line 818
    :cond_4f
    :try_start_4f
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_34

    .line 822
    const/4 v0, 0x1

    goto :goto_34

    .line 825
    :cond_60
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_7a

    .line 826
    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    .line 833
    :goto_6a
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    iget-wide v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_34

    .line 834
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    goto :goto_34

    .line 837
    :catchall_77
    move-exception v1

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_4f .. :try_end_79} :catchall_77

    throw v1

    .line 829
    :cond_7a
    :try_start_7a
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    const-wide/16 v3, 0x5

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    iput-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_77

    goto :goto_6a
.end method

.method static saveCookie(J)V
    .registers 8
    .parameter "cookie"

    .prologue
    .line 1238
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1239
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1240
    .local v1, dos:Ljava/io/DataOutput;
    invoke-interface {v1, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1241
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v3

    .line 1242
    .local v3, store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    const-string v4, "SessionID"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    .line 1246
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->savePreferences()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    .line 1251
    return-void

    .line 1247
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutput;
    .end local v3           #store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    :catch_22
    move-exception v4

    move-object v2, v4

    .line 1249
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V
    .registers 7
    .parameter "dataRequest"

    .prologue
    .line 612
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->mockLostDataConnection:Z

    if-eqz v2, :cond_a

    .line 613
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    .line 617
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 618
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    .line 619
    .local v1, tps:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
    invoke-interface {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->canHandle(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 620
    invoke-virtual {v1, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .line 627
    .end local v1           #tps:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
    :goto_28
    return-void

    .line 617
    .restart local v1       #tps:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 626
    .end local v1           #tps:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
    :cond_2c
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    goto :goto_28
.end method

.method public declared-synchronized addDataRequestListener(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;)V
    .registers 3
    .parameter "listenerData"

    .prologue
    .line 513
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 514
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 516
    :cond_e
    monitor-exit p0

    return-void

    .line 513
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final addSimpleRequest(I[BZZ)V
    .registers 6
    .parameter "requestType"
    .parameter "data"
    .parameter "immediate"
    .parameter "foreground"

    .prologue
    .line 1204
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;-><init>(I[BZZ)V

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .line 1206
    return-void
.end method

.method public declared-synchronized canDispatchNow()Z
    .registers 3

    .prologue
    .line 670
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    sget v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->MAX_WORKER_THREAD_COUNT:I

    if-ge v0, v1, :cond_1a

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorkedThisSession()Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1c

    if-nez v0, :cond_1a

    :cond_17
    const/4 v0, 0x1

    :goto_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public generateRequest(Ljava/util/Vector;Ljava/io/OutputStream;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x17

    .line 1139
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1141
    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addClientPropertiesRequest(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V

    .line 1143
    iget-byte v1, p3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->headerFlag:B

    if-nez v1, :cond_46

    .line 1144
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1145
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1146
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1147
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->platformID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1148
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1149
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->distributionChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1158
    :cond_2c
    :goto_2c
    const/4 v1, 0x0

    :goto_2d
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_68

    .line 1159
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1161
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1162
    invoke-interface {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->writeRequestData(Ljava/io/DataOutput;)V

    .line 1158
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1150
    :cond_46
    iget-byte v1, p3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->headerFlag:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 1151
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1152
    iget-wide v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1153
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1154
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1155
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1156
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2c

    .line 1164
    :cond_68
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 1165
    return-void
.end method

.method public declared-synchronized isSuspended()Z
    .registers 2

    .prologue
    .line 448
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->suspendCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadOrRequestCookie()J
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 493
    const-string v2, "SessionID"

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    .line 494
    .local v0, dis:Ljava/io/DataInput;
    if-eqz v0, :cond_1c

    .line 497
    :try_start_9
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-wide v2

    .line 506
    :goto_d
    return-wide v2

    .line 498
    :catch_e
    move-exception v1

    .line 501
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "SessionID"

    invoke-interface {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    .line 505
    .end local v1           #e:Ljava/io/IOException;
    :cond_1c
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;

    invoke-direct {v2, p0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;)V

    invoke-virtual {p0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .line 506
    const-wide/16 v2, 0x0

    goto :goto_d
.end method

.method protected final maybeNotifyNetworkError(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 581
    const/4 v0, 0x0

    .line 582
    monitor-enter p0

    .line 583
    :try_start_3
    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    if-nez v1, :cond_14

    .line 584
    const-string v0, "DRD: in Error Mode"

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    .line 586
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    move v0, v2

    .line 589
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_22

    .line 591
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v1

    .line 593
    if-eqz v0, :cond_21

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    .line 596
    :cond_21
    return-void

    .line 589
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method protected notifyComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V
    .registers 5
    .parameter "dataRequest"

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->snapshotListeners()[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    move-result-object v1

    .line 545
    .local v1, listenersArray:[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 546
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;->onComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 548
    :cond_10
    return-void
.end method

.method protected notifyNetworkError(IZLjava/lang/String;)V
    .registers 7
    .parameter "errorCode"
    .parameter "networkEverWorked"
    .parameter "debugMessage"

    .prologue
    .line 555
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->snapshotListeners()[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    move-result-object v1

    .line 558
    .local v1, listenersArray:[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 559
    aget-object v2, v1, v0

    invoke-interface {v2, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;->onNetworkError(IZLjava/lang/String;)V

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 561
    :cond_10
    return-void
.end method

.method protected processDataRequest(Ljava/io/DataInput;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1108
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 1109
    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v1

    if-eq v0, v1, :cond_31

    .line 1113
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

    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1117
    :cond_31
    invoke-interface {p2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->readResponseData(Ljava/io/DataInput;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1122
    if-eq p2, p0, :cond_42

    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_42

    .line 1123
    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .line 1129
    :cond_42
    :goto_42
    return-void

    .line 1127
    :cond_43
    iget-object v0, p3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_42
.end method

.method public declared-synchronized removeDataRequestListener(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;)V
    .registers 3
    .parameter "listenerData"

    .prologue
    .line 523
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 524
    monitor-exit p0

    return-void

    .line 523
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetConnectionFactory()V
    .registers 2

    .prologue
    .line 1434
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    .line 1435
    return-void
.end method

.method protected serviceRequests(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .registers 22
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 870
    const/4 v5, 0x0

    .line 871
    const/4 v8, 0x0

    .line 872
    const/4 v10, 0x0

    .line 873
    const/4 v9, 0x0

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->onStartServiceRequests(Ljava/lang/Object;)V

    .line 884
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 885
    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->urlArguments(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v11

    .line 886
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->generateRequest(Ljava/util/Vector;Ljava/io/OutputStream;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V

    .line 889
    new-instance v12, Ljava/lang/StringBuffer;

    const-string v4, "DRD"

    invoke-direct {v12, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 890
    const-string v4, "("

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget v7, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    add-int/lit8 v13, v7, 0x1

    sput v13, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    const/4 v4, 0x0

    move v7, v4

    :goto_40
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v7, v4, :cond_67

    .line 892
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 893
    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 894
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v13, 0x1

    sub-int/2addr v4, v13

    if-eq v7, v4, :cond_63

    .line 895
    const-string v4, "|"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    :cond_63
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_40

    .line 899
    :cond_67
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 908
    :try_start_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-object v6, v0

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v6

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    move-object v13, v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverAddress:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    invoke-interface {v13, v11, v14}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->createConnection(Ljava/lang/String;Z)Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;
    :try_end_93
    .catchall {:try_start_6b .. :try_end_93} :catchall_47e

    move-result-object v11

    .line 913
    :try_start_94
    const-string v5, "Content-Type"

    const-string v13, "application/binary"

    invoke-interface {v11, v5, v13}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
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

    invoke-interface {v11, v5, v13}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;
    :try_end_b7
    .catchall {:try_start_94 .. :try_end_b7} :catchall_484

    move-result-object v13

    .line 919
    :try_start_b8
    invoke-virtual {v13, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 920
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    move v5, v0

    array-length v4, v4

    add-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    .line 922
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->openDataInputStream()Ljava/io/DataInputStream;
    :try_end_ca
    .catchall {:try_start_b8 .. :try_end_ca} :catchall_48a

    move-result-object v14

    .line 923
    :try_start_cb
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->getResponseCode()I

    move-result v4

    .line 924
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-object v8, v0

    invoke-interface {v8}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v8

    sub-long v15, v8, v6

    .line 927
    const-string v8, ", "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 928
    const-wide/16 v8, 0x3e8

    cmp-long v8, v15, v8

    if-gez v8, :cond_131

    .line 929
    const-string v8, "<1s"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 934
    :goto_ee
    const/16 v8, 0x1f5

    if-ne v4, v8, :cond_17b

    .line 938
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V
    :try_end_f9
    .catchall {:try_start_cb .. :try_end_f9} :catchall_13f

    .line 1062
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 1064
    if-eqz v14, :cond_105

    .line 1065
    :try_start_102
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_466

    .line 1071
    :cond_105
    :goto_105
    if-eqz v13, :cond_10c

    if-nez v10, :cond_10c

    .line 1072
    :try_start_109
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_10c} :catch_469

    .line 1078
    :cond_10c
    :goto_10c
    if-eqz v11, :cond_111

    .line 1079
    :try_start_10e
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_46c

    .line 1087
    :cond_111
    :goto_111
    const/4 v4, 0x0

    :goto_112
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_45c

    .line 1088
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1090
    invoke-interface/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v5

    if-nez v5, :cond_12e

    .line 1091
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1087
    :cond_12e
    add-int/lit8 v4, v4, 0x1

    goto :goto_112

    .line 931
    :cond_131
    const-wide/16 v8, 0x3e8

    :try_start_133
    div-long v8, v15, v8

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_13e
    .catchall {:try_start_133 .. :try_end_13e} :catchall_13f

    goto :goto_ee

    .line 1062
    :catchall_13f
    move-exception v4

    move-object v5, v14

    move-object v6, v13

    move-object v7, v11

    :goto_143
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 1064
    if-eqz v5, :cond_14f

    .line 1065
    :try_start_14c
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_45d

    .line 1071
    :cond_14f
    :goto_14f
    if-eqz v6, :cond_156

    if-nez v10, :cond_156

    .line 1072
    :try_start_153
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_460

    .line 1078
    :cond_156
    :goto_156
    if-eqz v7, :cond_15b

    .line 1079
    :try_start_158
    invoke-interface {v7}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_15b} :catch_463

    .line 1087
    :cond_15b
    :goto_15b
    const/4 v5, 0x0

    :goto_15c
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_45b

    .line 1088
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1090
    invoke-interface/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v6

    if-nez v6, :cond_178

    .line 1091
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1087
    :cond_178
    add-int/lit8 v5, v5, 0x1

    goto :goto_15c

    .line 942
    :cond_17b
    const/16 v8, 0xc8

    if-eq v4, v8, :cond_20e

    .line 943
    :try_start_17f
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

    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 946
    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_1f5

    .line 951
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Server 500 for request types: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 952
    const/4 v6, 0x0

    :goto_1af
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_1d8

    .line 953
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 954
    invoke-interface/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->onServerFailure()V

    .line 955
    invoke-interface/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 956
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v6, v7, :cond_1d5

    .line 957
    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 952
    :cond_1d5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1af

    .line 961
    :cond_1d8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    move v6, v0

    if-eqz v6, :cond_1f5

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    move-object v6, v0

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v6

    .line 963
    const/4 v7, 0x7

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move v1, v7

    move v2, v6

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    .line 969
    :cond_1f5
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

    .line 971
    :cond_20e
    const-string v4, "application/binary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_253

    .line 972
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

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 977
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

    .line 979
    :cond_253
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->getLength()J

    move-result-wide v4

    move-wide v0, v4

    long-to-int v0, v0

    move/from16 v17, v0

    .line 980
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    move v4, v0

    add-int v4, v4, v17

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    .line 982
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 983
    const/16 v5, 0x17

    if-eq v4, v5, :cond_2ae

    .line 985
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V
    :try_end_276
    .catchall {:try_start_17f .. :try_end_276} :catchall_13f

    .line 1062
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 1064
    if-eqz v14, :cond_282

    .line 1065
    :try_start_27f
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_282
    .catch Ljava/io/IOException; {:try_start_27f .. :try_end_282} :catch_46f

    .line 1071
    :cond_282
    :goto_282
    if-eqz v13, :cond_289

    if-nez v10, :cond_289

    .line 1072
    :try_start_286
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_289
    .catch Ljava/io/IOException; {:try_start_286 .. :try_end_289} :catch_472

    .line 1078
    :cond_289
    :goto_289
    if-eqz v11, :cond_28e

    .line 1079
    :try_start_28b
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_28e
    .catch Ljava/io/IOException; {:try_start_28b .. :try_end_28e} :catch_475

    .line 1087
    :cond_28e
    :goto_28e
    const/4 v4, 0x0

    :goto_28f
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_45c

    .line 1088
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1090
    invoke-interface/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v5

    if-nez v5, :cond_2ab

    .line 1091
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1087
    :cond_2ab
    add-int/lit8 v4, v4, 0x1

    goto :goto_28f

    .line 991
    :cond_2ae
    const/4 v4, 0x0

    move v5, v4

    :goto_2b0
    :try_start_2b0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v5, v4, :cond_394

    .line 992
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :try_end_2bf
    .catchall {:try_start_2b0 .. :try_end_2bf} :catchall_13f

    .line 994
    :try_start_2bf
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v4

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->processDataRequest(Ljava/io/DataInput;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    :try_end_2c8
    .catchall {:try_start_2bf .. :try_end_2c8} :catchall_13f
    .catch Ljava/io/IOException; {:try_start_2bf .. :try_end_2c8} :catch_2cc
    .catch Ljava/lang/RuntimeException; {:try_start_2bf .. :try_end_2c8} :catch_352

    .line 991
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2b0

    .line 995
    :catch_2cc
    move-exception v6

    .line 996
    :try_start_2cd
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 997
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    move v7, v0

    if-eqz v7, :cond_30d

    .line 998
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException processing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1002
    :cond_30d
    instance-of v7, v6, Ljava/io/EOFException;

    if-eqz v7, :cond_344

    .line 1006
    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->onServerFailure()V

    .line 1008
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    move v7, v0

    if-eqz v7, :cond_344

    .line 1009
    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v4

    .line 1010
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No server support for data request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    move-object v7, v0

    invoke-interface {v7}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    move-result v7

    .line 1012
    const/4 v8, 0x7

    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    .line 1018
    :cond_344
    const/4 v4, 0x0

    :goto_345
    if-ge v4, v5, :cond_351

    .line 1019
    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1018
    add-int/lit8 v4, v4, 0x1

    goto :goto_345

    .line 1021
    :cond_351
    throw v6

    .line 1022
    :catch_352
    move-exception v5

    .line 1023
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RuntimeException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 1024
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    move v6, v0

    if-eqz v6, :cond_393

    .line 1025
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RuntimeException processing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1028
    :cond_393
    throw v5

    .line 1031
    :cond_394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-object v4, v0

    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v4

    .line 1032
    sub-long/2addr v4, v6

    long-to-int v9, v4

    .line 1034
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

    invoke-static {v4, v5, v8}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    .line 1036
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

    invoke-static {v4, v5, v8}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    move-object v4, v0

    long-to-int v8, v15

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->onFinishServiceRequests(Ljava/lang/Object;JII)V

    .line 1043
    const/16 v4, 0x2000

    move/from16 v0, v17

    move v1, v4

    if-lt v0, v1, :cond_400

    int-to-long v4, v9

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_400

    .line 1045
    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move v4, v0

    div-int/2addr v4, v9

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkSpeedBytesPerSecond:I

    .line 1051
    :cond_400
    const-string v4, ", "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1052
    const/16 v4, 0x3e8

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_44c

    .line 1053
    const-string v4, "<1kb"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1058
    :goto_411
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->removeAllElements()V
    :try_end_414
    .catchall {:try_start_2cd .. :try_end_414} :catchall_13f

    .line 1062
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    .line 1064
    if-eqz v14, :cond_420

    .line 1065
    :try_start_41d
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_420
    .catch Ljava/io/IOException; {:try_start_41d .. :try_end_420} :catch_478

    .line 1071
    :cond_420
    :goto_420
    if-eqz v13, :cond_427

    if-nez v10, :cond_427

    .line 1072
    :try_start_424
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_427
    .catch Ljava/io/IOException; {:try_start_424 .. :try_end_427} :catch_47a

    .line 1078
    :cond_427
    :goto_427
    if-eqz v11, :cond_42c

    .line 1079
    :try_start_429
    invoke-interface {v11}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_42c
    .catch Ljava/io/IOException; {:try_start_429 .. :try_end_42c} :catch_47c

    .line 1087
    :cond_42c
    :goto_42c
    const/4 v4, 0x0

    :goto_42d
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_45c

    .line 1088
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1090
    invoke-interface/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    move-result v5

    if-nez v5, :cond_449

    .line 1091
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1087
    :cond_449
    add-int/lit8 v4, v4, 0x1

    goto :goto_42d

    .line 1055
    :cond_44c
    :try_start_44c
    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x3e8

    move v4, v0

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "kb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_45a
    .catchall {:try_start_44c .. :try_end_45a} :catchall_13f

    goto :goto_411

    .line 1062
    :cond_45b
    throw v4

    .line 1096
    :cond_45c
    return-void

    .line 1067
    :catch_45d
    move-exception v5

    goto/16 :goto_14f

    .line 1074
    :catch_460
    move-exception v5

    goto/16 :goto_156

    .line 1082
    :catch_463
    move-exception v5

    goto/16 :goto_15b

    .line 1067
    :catch_466
    move-exception v4

    goto/16 :goto_105

    .line 1074
    :catch_469
    move-exception v4

    goto/16 :goto_10c

    .line 1082
    :catch_46c
    move-exception v4

    goto/16 :goto_111

    .line 1067
    :catch_46f
    move-exception v4

    goto/16 :goto_282

    .line 1074
    :catch_472
    move-exception v4

    goto/16 :goto_289

    .line 1082
    :catch_475
    move-exception v4

    goto/16 :goto_28e

    .line 1067
    :catch_478
    move-exception v4

    goto :goto_420

    .line 1074
    :catch_47a
    move-exception v4

    goto :goto_427

    .line 1082
    :catch_47c
    move-exception v4

    goto :goto_42c

    .line 1062
    :catchall_47e
    move-exception v4

    move-object v6, v8

    move-object v7, v5

    move-object v5, v9

    goto/16 :goto_143

    :catchall_484
    move-exception v4

    move-object v5, v9

    move-object v6, v8

    move-object v7, v11

    goto/16 :goto_143

    :catchall_48a
    move-exception v4

    move-object v5, v9

    move-object v6, v13

    move-object v7, v11

    goto/16 :goto_143
.end method

.method public setAndroidLoggingId2(Ljava/lang/String;)V
    .registers 4
    .parameter "androidLoggingId2"

    .prologue
    .line 1337
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1339
    return-void
.end method

.method public setAndroidMapKey(Ljava/lang/String;)V
    .registers 4
    .parameter "mapKey"

    .prologue
    .line 1328
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1329
    return-void
.end method

.method public setAndroidSignature(Ljava/lang/String;)V
    .registers 4
    .parameter "signature"

    .prologue
    .line 1332
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1334
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .registers 4
    .parameter "applicationName"

    .prologue
    .line 1342
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1344
    return-void
.end method

.method protected declared-synchronized snapshotListeners()[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    .registers 3

    .prologue
    .line 531
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    .line 532
    .local v0, listenersArray:[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 533
    monitor-exit p0

    return-object v0

    .line 531
    .end local v0           #listenersArray:[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public start()V
    .registers 3

    .prologue
    .line 759
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    .line 760
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 761
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->start()V

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 763
    :cond_1a
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->start()V

    .line 764
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    .line 756
    return-void
.end method

.method protected urlArguments(Ljava/util/Vector;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 1265
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1266
    const-string v1, "?"

    .line 1267
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->globalSpecialUrlArguments:Ljava/lang/String;

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1269
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->globalSpecialUrlArguments:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1270
    const-string v1, "&"

    .line 1272
    :cond_19
    const/4 v2, 0x0

    move v5, v2

    move-object v2, v1

    move v1, v5

    :goto_1d
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_44

    .line 1273
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    .line 1274
    instance-of v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/NeedsSpecialUrl;

    if-eqz v3, :cond_41

    .line 1275
    check-cast p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/NeedsSpecialUrl;

    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/NeedsSpecialUrl;->getParams()Ljava/lang/String;

    move-result-object v3

    .line 1276
    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 1277
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1278
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1279
    const-string v2, "&"

    .line 1272
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1283
    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1284
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1287
    :cond_4e
    return-object v0
.end method
