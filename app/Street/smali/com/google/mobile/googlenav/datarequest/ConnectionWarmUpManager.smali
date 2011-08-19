.class public Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;
.super Ljava/lang/Object;


# instance fields
.field private clock:Lcom/google/mobile/common/Clock;

.field private drd:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

.field private pendingKey:Ljava/lang/Object;

.field private pendingSource:Ljava/lang/String;

.field private pendingWarmUpTime:J

.field private requestSource:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;Lcom/google/mobile/common/Clock;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    iput-object v1, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->requestSource:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->pendingSource:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->drd:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    iput-object p2, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->clock:Lcom/google/mobile/common/Clock;

    return-void
.end method

.method private canTriggerWarmUp()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->drd:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->isRequestActive()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->clock:Lcom/google/mobile/common/Clock;

    invoke-interface {v0}, Lcom/google/mobile/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->drd:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v2}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->getLastSuccessTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->drd:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v4}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->getLastActiveTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private logFailed(Ljava/lang/String;)V
    .locals 2

    const-string v0, "f"

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->logWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logNotSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ns"

    invoke-direct {p0, v1, p1, v0}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->logWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logOverridden(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "o"

    invoke-direct {p0, v1, p1, v0}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->logWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logSent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "s"

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->logWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logUsed(Ljava/lang/String;III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|fb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    invoke-direct {p0, v1, p1, v0}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->logWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "|"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v1, p1, v0}, Lcom/google/mobile/common/Log;->addEvent(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private warmUpIfNeeded()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->requestSource:Ljava/lang/String;

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->canTriggerWarmUp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->requestSource:Ljava/lang/String;

    const-string v1, "a"

    invoke-direct {p0, v0, v1}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->logNotSent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->requestSource:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->clock:Lcom/google/mobile/common/Clock;

    invoke-interface {v0}, Lcom/google/mobile/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->requestSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->pendingSource:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->requestSource:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->pendingSource:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->logSent(Ljava/lang/String;)V

    invoke-static {v6, v5}, Lcom/google/mobile/common/Log;->uploadEventLog(ZLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->requestSource:Ljava/lang/String;

    const-string v1, "d"

    invoke-direct {p0, v0, v1}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->logNotSent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->requestSource:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->pendingSource:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->pendingWarmUpTime:J

    sub-long/2addr v0, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->logOverridden(Ljava/lang/String;J)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->pendingSource:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->logFailed(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onFinishServiceRequests(Ljava/lang/Object;JII)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->pendingKey:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->pendingSource:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->pendingWarmUpTime:J

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->pendingKey:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v1, p2, v1

    long-to-int v1, v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->logUsed(Ljava/lang/String;III)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStartServiceRequests(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->clock:Lcom/google/mobile/common/Clock;

    invoke-interface {v0}, Lcom/google/mobile/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->pendingWarmUpTime:J

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    iget v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    iput-object p1, p0, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->pendingKey:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUnsuspend()V
    .locals 0

    invoke-direct {p0}, Lcom/google/mobile/googlenav/datarequest/ConnectionWarmUpManager;->warmUpIfNeeded()V

    return-void
.end method
