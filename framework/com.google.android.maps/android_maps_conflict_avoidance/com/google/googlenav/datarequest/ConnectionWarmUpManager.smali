.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;
.super Ljava/lang/Object;
.source "ConnectionWarmUpManager.java"


# instance fields
.field private clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field private drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

.field private pendingKey:Ljava/lang/Object;

.field private pendingSource:Ljava/lang/String;

.field private pendingWarmUpTime:J

.field private requestSource:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/common/Clock;)V
    .registers 5
    .parameter "drd"
    .parameter "clock"

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    .line 142
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->requestSource:Ljava/lang/String;

    .line 149
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingSource:Ljava/lang/String;

    .line 183
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->drd:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    .line 184
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    .line 185
    return-void
.end method

.method private logUsed(Ljava/lang/String;III)V
    .registers 8
    .parameter "source"
    .parameter "interval"
    .parameter "firstByteLatency"
    .parameter "lastByteLatency"

    .prologue
    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|fb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|lb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, data:Ljava/lang/String;
    const-string v1, "u"

    invoke-direct {p0, v1, p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->logWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method private logWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "status"
    .parameter "source"
    .parameter "data"

    .prologue
    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "|"

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, fullData:Ljava/lang/String;
    const/16 v1, 0x40

    invoke-static {v1, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    .line 376
    return-void

    .line 372
    .end local v0           #fullData:Ljava/lang/String;
    :cond_29
    const-string v2, ""

    goto :goto_17
.end method


# virtual methods
.method public onFinishServiceRequests(Ljava/lang/Object;JII)V
    .registers 12
    .parameter "key"
    .parameter "startTime"
    .parameter "firstByteLatency"
    .parameter "lastByteLatency"

    .prologue
    .line 332
    monitor-enter p0

    .line 333
    :try_start_1
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingKey:Ljava/lang/Object;

    if-eq v4, p1, :cond_c

    .line 334
    :cond_a
    monitor-exit p0

    .line 344
    :goto_b
    return-void

    .line 336
    :cond_c
    const/4 v4, 0x0

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    .line 337
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingSource:Ljava/lang/String;

    .line 338
    .local v1, source:Ljava/lang/String;
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingWarmUpTime:J

    .line 339
    .local v2, time:J
    const/4 v4, 0x0

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingKey:Ljava/lang/Object;

    .line 340
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1e

    .line 342
    sub-long v4, p2, v2

    long-to-int v0, v4

    .line 343
    .local v0, interval:I
    invoke-direct {p0, v1, v0, p4, p5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->logUsed(Ljava/lang/String;III)V

    goto :goto_b

    .line 340
    .end local v0           #interval:I
    .end local v1           #source:Ljava/lang/String;
    .end local v2           #time:J
    :catchall_1e
    move-exception v4

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v4
.end method

.method public onStartServiceRequests(Ljava/lang/Object;)V
    .registers 5
    .parameter "key"

    .prologue
    const/4 v2, 0x2

    .line 304
    monitor-enter p0

    .line 305
    :try_start_2
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 307
    const/4 v0, 0x2

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    .line 308
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingWarmUpTime:J

    .line 314
    :cond_12
    :goto_12
    monitor-exit p0

    .line 315
    return-void

    .line 309
    :cond_14
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    if-ne v0, v2, :cond_12

    .line 311
    const/4 v0, 0x3

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->state:I

    .line 312
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->pendingKey:Ljava/lang/Object;

    goto :goto_12

    .line 314
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_1e

    throw v0
.end method
