.class public Ljava/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Timer$1;,
        Ljava/util/Timer$FinalizerHelper;,
        Ljava/util/Timer$TimerImpl;
    }
.end annotation


# static fields
.field private static timerId:J


# instance fields
.field private final finalizer:Ljava/util/Timer$FinalizerHelper;

.field private final impl:Ljava/util/Timer$TimerImpl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Timer;-><init>(Z)V

    .line 397
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 381
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .parameter "name"
    .parameter "isDaemon"

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    if-nez p1, :cond_d

    .line 367
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_d
    new-instance v0, Ljava/util/Timer$TimerImpl;

    invoke-direct {v0, p1, p2}, Ljava/util/Timer$TimerImpl;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    .line 370
    new-instance v0, Ljava/util/Timer$FinalizerHelper;

    iget-object v1, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    invoke-direct {v0, v1}, Ljava/util/Timer$FinalizerHelper;-><init>(Ljava/util/Timer$TimerImpl;)V

    iput-object v0, p0, Ljava/util/Timer;->finalizer:Ljava/util/Timer$FinalizerHelper;

    .line 371
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5
    .parameter "isDaemon"

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Timer;->nextId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 390
    return-void
.end method

.method private static declared-synchronized nextId()J
    .registers 5

    .prologue
    .line 346
    const-class v0, Ljava/util/Timer;

    monitor-enter v0

    :try_start_3
    sget-wide v1, Ljava/util/Timer;->timerId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Ljava/util/Timer;->timerId:J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-wide v1

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private scheduleImpl(Ljava/util/TimerTask;JJZ)V
    .registers 13
    .parameter "task"
    .parameter "delay"
    .parameter "period"
    .parameter "fixed"

    .prologue
    .line 561
    iget-object v2, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    monitor-enter v2

    .line 562
    :try_start_3
    iget-object v3, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    #getter for: Ljava/util/Timer$TimerImpl;->cancelled:Z
    invoke-static {v3}, Ljava/util/Timer$TimerImpl;->access$400(Ljava/util/Timer$TimerImpl;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 563
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Timer was canceled"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 588
    :catchall_13
    move-exception v3

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v3

    .line 566
    :cond_16
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v0, p2, v3

    .line 568
    .local v0, when:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_3b

    .line 569
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal delay to start the TimerTask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 572
    :cond_3b
    iget-object v3, p1, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3e
    .catchall {:try_start_16 .. :try_end_3e} :catchall_13

    .line 573
    :try_start_3e
    invoke-virtual {p1}, Ljava/util/TimerTask;->isScheduled()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 574
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "TimerTask is scheduled already"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 584
    :catchall_4c
    move-exception v4

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_13

    .line 577
    :cond_4f
    :try_start_4f
    iget-boolean v4, p1, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v4, :cond_5b

    .line 578
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "TimerTask is canceled"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 581
    :cond_5b
    iput-wide v0, p1, Ljava/util/TimerTask;->when:J

    .line 582
    iput-wide p4, p1, Ljava/util/TimerTask;->period:J

    .line 583
    iput-boolean p6, p1, Ljava/util/TimerTask;->fixedRate:Z

    .line 584
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_4c

    .line 587
    :try_start_62
    iget-object v3, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    #calls: Ljava/util/Timer$TimerImpl;->insertTask(Ljava/util/TimerTask;)V
    invoke-static {v3, p1}, Ljava/util/Timer$TimerImpl;->access$500(Ljava/util/Timer$TimerImpl;Ljava/util/TimerTask;)V

    .line 588
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_13

    .line 589
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl;->cancel()V

    .line 406
    return-void
.end method

.method public purge()I
    .registers 3

    .prologue
    .line 417
    iget-object v0, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    monitor-enter v0

    .line 418
    :try_start_3
    iget-object v1, p0, Ljava/util/Timer;->impl:Ljava/util/Timer$TimerImpl;

    invoke-virtual {v1}, Ljava/util/Timer$TimerImpl;->purge()I

    move-result v1

    monitor-exit v0

    return v1

    .line 419
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public schedule(Ljava/util/TimerTask;J)V
    .registers 11
    .parameter "task"
    .parameter "delay"

    .prologue
    .line 458
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_c

    .line 459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 461
    :cond_c
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 462
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;JJ)V
    .registers 13
    .parameter "task"
    .parameter "delay"
    .parameter "period"

    .prologue
    const-wide/16 v1, 0x0

    .line 480
    cmp-long v0, p2, v1

    if-ltz v0, :cond_a

    cmp-long v0, p4, v1

    if-gtz v0, :cond_10

    .line 481
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 483
    :cond_10
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 484
    return-void
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    .registers 12
    .parameter "task"
    .parameter "when"

    .prologue
    const-wide/16 v4, 0x0

    .line 437
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_10

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 440
    :cond_10
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 441
    .local v7, delay:J
    cmp-long v0, v7, v4

    if-gez v0, :cond_28

    move-wide v2, v4

    :goto_1f
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 442
    return-void

    :cond_28
    move-wide v2, v7

    .line 441
    goto :goto_1f
.end method

.method public schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .registers 14
    .parameter "task"
    .parameter "when"
    .parameter "period"

    .prologue
    const-wide/16 v4, 0x0

    .line 503
    cmp-long v0, p3, v4

    if-lez v0, :cond_e

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_14

    .line 504
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 506
    :cond_14
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 507
    .local v7, delay:J
    cmp-long v0, v7, v4

    if-gez v0, :cond_2b

    move-wide v2, v4

    :goto_23
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 508
    return-void

    :cond_2b
    move-wide v2, v7

    .line 507
    goto :goto_23
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    .registers 13
    .parameter "task"
    .parameter "delay"
    .parameter "period"

    .prologue
    const-wide/16 v1, 0x0

    .line 527
    cmp-long v0, p2, v1

    if-ltz v0, :cond_a

    cmp-long v0, p4, v1

    if-gtz v0, :cond_10

    .line 528
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 530
    :cond_10
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 531
    return-void
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .registers 12
    .parameter "task"
    .parameter "when"
    .parameter "period"

    .prologue
    const-wide/16 v4, 0x0

    .line 550
    cmp-long v0, p3, v4

    if-lez v0, :cond_e

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_14

    .line 551
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 553
    :cond_14
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 554
    .local v2, delay:J
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/Timer;->scheduleImpl(Ljava/util/TimerTask;JJZ)V

    .line 555
    return-void
.end method
