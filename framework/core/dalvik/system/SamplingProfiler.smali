.class public final Ldalvik/system/SamplingProfiler;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/SamplingProfiler$1;,
        Ldalvik/system/SamplingProfiler$Sampler;,
        Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;,
        Ldalvik/system/SamplingProfiler$ArrayThreadSet;,
        Ldalvik/system/SamplingProfiler$ThreadSet;,
        Ldalvik/system/SamplingProfiler$HprofBinaryToAscii;,
        Ldalvik/system/SamplingProfiler$MalformedHprofException;,
        Ldalvik/system/SamplingProfiler$BinaryHprofReader;,
        Ldalvik/system/SamplingProfiler$BinaryHprofWriter;,
        Ldalvik/system/SamplingProfiler$BinaryHprof;,
        Ldalvik/system/SamplingProfiler$AsciiHprofWriter;,
        Ldalvik/system/SamplingProfiler$HprofWriter;,
        Ldalvik/system/SamplingProfiler$HprofData;
    }
.end annotation


# instance fields
.field private currentThreads:[Ljava/lang/Thread;

.field private final depth:I

.field private final hprofData:Ldalvik/system/SamplingProfiler$HprofData;

.field private final mutableStackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

.field private nextObjectId:I

.field private nextStackTraceId:I

.field private nextThreadId:I

.field private sampler:Ljava/util/TimerTask;

.field private final stackTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldalvik/system/SamplingProfiler$HprofData$StackTrace;",
            "[I>;"
        }
    .end annotation
.end field

.field private final threadIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final threadSet:Ldalvik/system/SamplingProfiler$ThreadSet;

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(ILdalvik/system/SamplingProfiler$ThreadSet;)V
    .registers 6
    .parameter "depth"
    .parameter "threadSet"

    .prologue
    const/4 v2, 0x1

    .line 1424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler;->stackTraces:Ljava/util/Map;

    .line 1353
    new-instance v0, Ldalvik/system/SamplingProfiler$HprofData;

    iget-object v1, p0, Ldalvik/system/SamplingProfiler;->stackTraces:Ljava/util/Map;

    invoke-direct {v0, v1}, Ldalvik/system/SamplingProfiler$HprofData;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    .line 1359
    new-instance v0, Ljava/util/Timer;

    const-string v1, "SamplingProfiler"

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler;->timer:Ljava/util/Timer;

    .line 1385
    const v0, 0x30d41

    iput v0, p0, Ldalvik/system/SamplingProfiler;->nextThreadId:I

    .line 1386
    const v0, 0x493e1

    iput v0, p0, Ldalvik/system/SamplingProfiler;->nextStackTraceId:I

    .line 1387
    iput v2, p0, Ldalvik/system/SamplingProfiler;->nextObjectId:I

    .line 1393
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Ldalvik/system/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;

    .line 1400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler;->threadIds:Ljava/util/Map;

    .line 1407
    new-instance v0, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;-><init>(Ldalvik/system/SamplingProfiler$1;)V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler;->mutableStackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    .line 1425
    iput p1, p0, Ldalvik/system/SamplingProfiler;->depth:I

    .line 1426
    iput-object p2, p0, Ldalvik/system/SamplingProfiler;->threadSet:Ldalvik/system/SamplingProfiler$ThreadSet;

    .line 1427
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;->CPU_SAMPLING:Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;

    iget v1, v1, Ldalvik/system/SamplingProfiler$BinaryHprof$ControlSettings;->bitmask:I

    invoke-virtual {v0, v1}, Ldalvik/system/SamplingProfiler$HprofData;->setFlags(I)V

    .line 1428
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    invoke-virtual {v0, p1}, Ldalvik/system/SamplingProfiler$HprofData;->setDepth(I)V

    .line 1429
    return-void
.end method

.method static synthetic access$1000(Ldalvik/system/SamplingProfiler;)Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->mutableStackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    return-object v0
.end method

.method static synthetic access$1100(Ldalvik/system/SamplingProfiler;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->stackTraces:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1208(Ldalvik/system/SamplingProfiler;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Ldalvik/system/SamplingProfiler;->nextStackTraceId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldalvik/system/SamplingProfiler;->nextStackTraceId:I

    return v0
.end method

.method static synthetic access$1300(Ldalvik/system/SamplingProfiler;)Ldalvik/system/SamplingProfiler$HprofData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    return-object v0
.end method

.method static synthetic access$1408(Ldalvik/system/SamplingProfiler;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Ldalvik/system/SamplingProfiler;->nextThreadId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldalvik/system/SamplingProfiler;->nextThreadId:I

    return v0
.end method

.method static synthetic access$1508(Ldalvik/system/SamplingProfiler;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Ldalvik/system/SamplingProfiler;->nextObjectId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldalvik/system/SamplingProfiler;->nextObjectId:I

    return v0
.end method

.method static synthetic access$600(Ldalvik/system/SamplingProfiler;)Ldalvik/system/SamplingProfiler$ThreadSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->threadSet:Ldalvik/system/SamplingProfiler$ThreadSet;

    return-object v0
.end method

.method static synthetic access$700(Ldalvik/system/SamplingProfiler;)[Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$702(Ldalvik/system/SamplingProfiler;[Ljava/lang/Thread;)[Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Ldalvik/system/SamplingProfiler;->currentThreads:[Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$800(Ldalvik/system/SamplingProfiler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Ldalvik/system/SamplingProfiler;->depth:I

    return v0
.end method

.method static synthetic access$900(Ldalvik/system/SamplingProfiler;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->threadIds:Ljava/util/Map;

    return-object v0
.end method

.method public static varargs newArrayThreadSet([Ljava/lang/Thread;)Ldalvik/system/SamplingProfiler$ThreadSet;
    .registers 2
    .parameter "threads"

    .prologue
    .line 1451
    new-instance v0, Ldalvik/system/SamplingProfiler$ArrayThreadSet;

    invoke-direct {v0, p0}, Ldalvik/system/SamplingProfiler$ArrayThreadSet;-><init>([Ljava/lang/Thread;)V

    return-object v0
.end method

.method public static newThreadGroupTheadSet(Ljava/lang/ThreadGroup;)Ldalvik/system/SamplingProfiler$ThreadSet;
    .registers 2
    .parameter "threadGroup"

    .prologue
    .line 1477
    new-instance v0, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;

    invoke-direct {v0, p0}, Ldalvik/system/SamplingProfiler$ThreadGroupThreadSet;-><init>(Ljava/lang/ThreadGroup;)V

    return-object v0
.end method


# virtual methods
.method public getHprofData()Ldalvik/system/SamplingProfiler$HprofData;
    .registers 3

    .prologue
    .line 1573
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->sampler:Ljava/util/TimerTask;

    if-eqz v0, :cond_c

    .line 1574
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot access hprof data while sampling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1576
    :cond_c
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    return-object v0
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 1562
    invoke-virtual {p0}, Ldalvik/system/SamplingProfiler;->stop()V

    .line 1563
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1564
    return-void
.end method

.method public start(I)V
    .registers 8
    .parameter "interval"

    .prologue
    .line 1532
    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    .line 1533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interval < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1535
    :cond_b
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->sampler:Ljava/util/TimerTask;

    if-eqz v0, :cond_17

    .line 1536
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "profiling already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1538
    :cond_17
    new-instance v0, Ldalvik/system/SamplingProfiler$Sampler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldalvik/system/SamplingProfiler$Sampler;-><init>(Ldalvik/system/SamplingProfiler;Ldalvik/system/SamplingProfiler$1;)V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler;->sampler:Ljava/util/TimerTask;

    .line 1539
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldalvik/system/SamplingProfiler$HprofData;->setStartMillis(J)V

    .line 1540
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->timer:Ljava/util/Timer;

    iget-object v1, p0, Ldalvik/system/SamplingProfiler;->sampler:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1541
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1548
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->sampler:Ljava/util/TimerTask;

    if-nez v0, :cond_5

    .line 1553
    :goto_4
    return-void

    .line 1551
    :cond_5
    iget-object v0, p0, Ldalvik/system/SamplingProfiler;->sampler:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1552
    const/4 v0, 0x0

    iput-object v0, p0, Ldalvik/system/SamplingProfiler;->sampler:Ljava/util/TimerTask;

    goto :goto_4
.end method
