.class public Ljava/util/concurrent/Exchanger;
.super Ljava/lang/Object;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Exchanger$1;,
        Ljava/util/concurrent/Exchanger$Slot;,
        Ljava/util/concurrent/Exchanger$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CANCEL:Ljava/lang/Object; = null

.field private static final CAPACITY:I = 0x20

.field private static final FULL:I

.field private static final NCPU:I

.field private static final NULL_ITEM:Ljava/lang/Object;

.field private static final SPINS:I

.field private static final TIMED_SPINS:I


# instance fields
.field private volatile arena:[Ljava/util/concurrent/Exchanger$Slot;

.field private final max:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 184
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Ljava/util/concurrent/Exchanger;->NCPU:I

    .line 204
    const/16 v0, 0x20

    sget v1, Ljava/util/concurrent/Exchanger;->NCPU:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Ljava/util/concurrent/Exchanger;->FULL:I

    .line 220
    sget v0, Ljava/util/concurrent/Exchanger;->NCPU:I

    if-ne v0, v3, :cond_39

    move v0, v2

    :goto_22
    sput v0, Ljava/util/concurrent/Exchanger;->SPINS:I

    .line 229
    sget v0, Ljava/util/concurrent/Exchanger;->SPINS:I

    div-int/lit8 v0, v0, 0x14

    sput v0, Ljava/util/concurrent/Exchanger;->TIMED_SPINS:I

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    return-void

    .line 220
    :cond_39
    const/16 v0, 0x7d0

    goto :goto_22
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 554
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/util/concurrent/Exchanger$Slot;

    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    .line 295
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 555
    return-void
.end method

.method private static await(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Ljava/lang/Object;
    .registers 6
    .parameter "node"
    .parameter "slot"

    .prologue
    .line 463
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 464
    .local v2, w:Ljava/lang/Thread;
    sget v0, Ljava/util/concurrent/Exchanger;->SPINS:I

    .line 466
    .local v0, spins:I
    :goto_6
    invoke-virtual {p0}, Ljava/util/concurrent/Exchanger$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .line 467
    .local v1, v:Ljava/lang/Object;
    if-eqz v1, :cond_d

    .line 468
    return-object v1

    .line 469
    :cond_d
    if-lez v0, :cond_12

    .line 470
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 471
    :cond_12
    iget-object v3, p0, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    if-nez v3, :cond_19

    .line 472
    iput-object v2, p0, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    goto :goto_6

    .line 473
    :cond_19
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 474
    invoke-static {p0, p1}, Ljava/util/concurrent/Exchanger;->tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z

    goto :goto_6

    .line 476
    :cond_23
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method private awaitNanos(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;J)Ljava/lang/Object;
    .registers 14
    .parameter "node"
    .parameter "slot"
    .parameter "nanos"

    .prologue
    .line 490
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    sget v4, Ljava/util/concurrent/Exchanger;->TIMED_SPINS:I

    .line 491
    .local v4, spins:I
    const-wide/16 v0, 0x0

    .line 492
    .local v0, lastTime:J
    const/4 v6, 0x0

    .line 494
    .local v6, w:Ljava/lang/Thread;
    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/util/concurrent/Exchanger$Node;->get()Ljava/lang/Object;

    move-result-object v5

    .line 495
    .local v5, v:Ljava/lang/Object;
    if-eqz v5, :cond_d

    move-object v7, v5

    .line 514
    :goto_c
    return-object v7

    .line 497
    :cond_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 498
    .local v2, now:J
    if-nez v6, :cond_23

    .line 499
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 502
    :goto_17
    move-wide v0, v2

    .line 503
    const-wide/16 v7, 0x0

    cmp-long v7, p3, v7

    if-lez v7, :cond_3c

    .line 504
    if-lez v4, :cond_27

    .line 505
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 501
    :cond_23
    sub-long v7, v2, v0

    sub-long/2addr p3, v7

    goto :goto_17

    .line 506
    :cond_27
    iget-object v7, p1, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    if-nez v7, :cond_2e

    .line 507
    iput-object v6, p1, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    goto :goto_5

    .line 508
    :cond_2e
    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 509
    invoke-static {p1, p2}, Ljava/util/concurrent/Exchanger;->tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z

    goto :goto_5

    .line 511
    :cond_38
    invoke-static {p1, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_5

    .line 513
    :cond_3c
    invoke-static {p1, p2}, Ljava/util/concurrent/Exchanger;->tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_5

    .line 514
    invoke-direct {p0, p1}, Ljava/util/concurrent/Exchanger;->scanOnTimeout(Ljava/util/concurrent/Exchanger$Node;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_c
.end method

.method private createSlot(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 396
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    new-instance v1, Ljava/util/concurrent/Exchanger$Slot;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Exchanger$Slot;-><init>(Ljava/util/concurrent/Exchanger$1;)V

    .line 397
    .local v1, newSlot:Ljava/util/concurrent/Exchanger$Slot;
    iget-object v0, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    .line 398
    .local v0, a:[Ljava/util/concurrent/Exchanger$Slot;
    monitor-enter v0

    .line 399
    :try_start_9
    aget-object v2, v0, p1

    if-nez v2, :cond_f

    .line 400
    aput-object v1, v0, p1

    .line 401
    :cond_f
    monitor-exit v0

    .line 402
    return-void

    .line 401
    :catchall_11
    move-exception v2

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v2
.end method

.method private doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 16
    .parameter "item"
    .parameter "timed"
    .parameter "nanos"

    .prologue
    .line 309
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    new-instance v4, Ljava/util/concurrent/Exchanger$Node;

    invoke-direct {v4, p1}, Ljava/util/concurrent/Exchanger$Node;-><init>(Ljava/lang/Object;)V

    .line 310
    .local v4, me:Ljava/util/concurrent/Exchanger$Node;
    invoke-direct {p0}, Ljava/util/concurrent/Exchanger;->hashIndex()I

    move-result v2

    .line 311
    .local v2, index:I
    const/4 v1, 0x0

    .line 315
    .local v1, fails:I
    :cond_a
    :goto_a
    iget-object v9, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    aget-object v5, v9, v2

    .line 316
    .local v5, slot:Ljava/util/concurrent/Exchanger$Slot;
    if-nez v5, :cond_14

    .line 317
    invoke-direct {p0, v2}, Ljava/util/concurrent/Exchanger;->createSlot(I)V

    goto :goto_a

    .line 318
    :cond_14
    invoke-virtual {v5}, Ljava/util/concurrent/Exchanger$Slot;->get()Ljava/lang/Object;

    move-result-object v7

    .local v7, y:Ljava/lang/Object;
    if-eqz v7, :cond_34

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Ljava/util/concurrent/Exchanger$Slot;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 320
    move-object v0, v7

    check-cast v0, Ljava/util/concurrent/Exchanger$Node;

    move-object v8, v0

    .line 321
    .local v8, you:Ljava/util/concurrent/Exchanger$Node;
    const/4 v9, 0x0

    invoke-virtual {v8, v9, p1}, Ljava/util/concurrent/Exchanger$Node;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 322
    iget-object v9, v8, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v9}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 323
    iget-object v9, v8, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 334
    .end local v8           #you:Ljava/util/concurrent/Exchanger$Node;
    :goto_33
    return-object v9

    .line 326
    :cond_34
    if-nez v7, :cond_6d

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v4}, Ljava/util/concurrent/Exchanger$Slot;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 328
    if-nez v2, :cond_4b

    .line 329
    if-eqz p2, :cond_46

    invoke-direct {p0, v4, v5, p3, p4}, Ljava/util/concurrent/Exchanger;->awaitNanos(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;J)Ljava/lang/Object;

    move-result-object v9

    goto :goto_33

    :cond_46
    invoke-static {v4, v5}, Ljava/util/concurrent/Exchanger;->await(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_33

    .line 332
    :cond_4b
    invoke-static {v4, v5}, Ljava/util/concurrent/Exchanger;->spinWait(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Ljava/lang/Object;

    move-result-object v6

    .line 333
    .local v6, v:Ljava/lang/Object;
    sget-object v9, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    if-eq v6, v9, :cond_55

    move-object v9, v6

    .line 334
    goto :goto_33

    .line 335
    :cond_55
    new-instance v4, Ljava/util/concurrent/Exchanger$Node;

    .end local v4           #me:Ljava/util/concurrent/Exchanger$Node;
    invoke-direct {v4, p1}, Ljava/util/concurrent/Exchanger$Node;-><init>(Ljava/lang/Object;)V

    .line 336
    .restart local v4       #me:Ljava/util/concurrent/Exchanger$Node;
    iget-object v9, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 337
    .local v3, m:I
    ushr-int/lit8 v2, v2, 0x1

    if-le v3, v2, :cond_a

    .line 338
    iget-object v9, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, 0x1

    sub-int v10, v3, v10

    invoke-virtual {v9, v3, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    goto :goto_a

    .line 340
    .end local v3           #m:I
    .end local v6           #v:Ljava/lang/Object;
    :cond_6d
    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x1

    if-le v1, v9, :cond_a

    .line 341
    iget-object v9, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 342
    .restart local v3       #m:I
    const/4 v9, 0x3

    if-le v1, v9, :cond_8d

    sget v9, Ljava/util/concurrent/Exchanger;->FULL:I

    if-ge v3, v9, :cond_8d

    iget-object v9, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v3, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 343
    add-int/lit8 v2, v3, 0x1

    goto/16 :goto_a

    .line 344
    :cond_8d
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_a

    .line 345
    move v2, v3

    goto/16 :goto_a
.end method

.method private final hashIndex()I
    .registers 10

    .prologue
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    const/4 v8, 0x1

    .line 373
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 374
    .local v1, id:J
    const/16 v6, 0x20

    ushr-long v6, v1, v6

    xor-long/2addr v6, v1

    long-to-int v6, v6

    const v7, -0x7ee3623b

    xor-int/2addr v6, v7

    const v7, 0x1000193

    mul-int v0, v6, v7

    .line 376
    .local v0, hash:I
    iget-object v6, p0, Ljava/util/concurrent/Exchanger;->max:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 377
    .local v4, m:I
    const/16 v6, -0x400

    shr-int/2addr v6, v4

    and-int/lit8 v6, v6, 0x4

    const/16 v7, 0x1f8

    ushr-int/2addr v7, v4

    and-int/lit8 v7, v7, 0x2

    or-int/2addr v6, v7

    const v7, -0xff0e

    ushr-int/2addr v7, v4

    and-int/lit8 v7, v7, 0x1

    or-int v5, v6, v7

    .line 381
    .local v5, nbits:I
    :goto_31
    shl-int v6, v8, v5

    sub-int/2addr v6, v8

    and-int v3, v0, v6

    .local v3, index:I
    if-le v3, v4, :cond_42

    .line 382
    ushr-int v6, v0, v5

    const/16 v7, 0x21

    sub-int/2addr v7, v5

    shl-int v7, v0, v7

    or-int v0, v6, v7

    goto :goto_31

    .line 383
    :cond_42
    return v3
.end method

.method private scanOnTimeout(Ljava/util/concurrent/Exchanger$Node;)Ljava/lang/Object;
    .registers 10
    .parameter "node"

    .prologue
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    const/4 v7, 0x0

    .line 534
    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    array-length v5, v5

    const/4 v6, 0x1

    sub-int v1, v5, v6

    .local v1, j:I
    :goto_7
    if-ltz v1, :cond_32

    .line 535
    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Slot;

    aget-object v2, v5, v1

    .line 536
    .local v2, slot:Ljava/util/concurrent/Exchanger$Slot;
    if-eqz v2, :cond_2f

    .line 537
    :cond_f
    invoke-virtual {v2}, Ljava/util/concurrent/Exchanger$Slot;->get()Ljava/lang/Object;

    move-result-object v3

    .local v3, y:Ljava/lang/Object;
    if-eqz v3, :cond_2f

    .line 538
    invoke-virtual {v2, v3, v7}, Ljava/util/concurrent/Exchanger$Slot;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 539
    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/Exchanger$Node;

    move-object v4, v0

    .line 540
    .local v4, you:Ljava/util/concurrent/Exchanger$Node;
    iget-object v5, p1, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    invoke-virtual {v4, v7, v5}, Ljava/util/concurrent/Exchanger$Node;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 541
    iget-object v5, v4, Ljava/util/concurrent/Exchanger$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v5}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 542
    iget-object v5, v4, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 548
    .end local v2           #slot:Ljava/util/concurrent/Exchanger$Slot;
    .end local v3           #y:Ljava/lang/Object;
    .end local v4           #you:Ljava/util/concurrent/Exchanger$Node;
    :goto_2e
    return-object v5

    .line 534
    .restart local v2       #slot:Ljava/util/concurrent/Exchanger$Slot;
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 548
    .end local v2           #slot:Ljava/util/concurrent/Exchanger$Slot;
    :cond_32
    sget-object v5, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    goto :goto_2e
.end method

.method private static spinWait(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Ljava/lang/Object;
    .registers 4
    .parameter "node"
    .parameter "slot"

    .prologue
    .line 433
    sget v0, Ljava/util/concurrent/Exchanger;->SPINS:I

    .line 435
    .local v0, spins:I
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/Exchanger$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .line 436
    .local v1, v:Ljava/lang/Object;
    if-eqz v1, :cond_9

    .line 437
    return-object v1

    .line 438
    :cond_9
    if-lez v0, :cond_e

    .line 439
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 441
    :cond_e
    invoke-static {p0, p1}, Ljava/util/concurrent/Exchanger;->tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z

    goto :goto_2
.end method

.method private static tryCancel(Ljava/util/concurrent/Exchanger$Node;Ljava/util/concurrent/Exchanger$Slot;)Z
    .registers 4
    .parameter "node"
    .parameter "slot"

    .prologue
    const/4 v1, 0x0

    .line 414
    sget-object v0, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/Exchanger$Node;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 415
    const/4 v0, 0x0

    .line 418
    :goto_a
    return v0

    .line 416
    :cond_b
    invoke-virtual {p1}, Ljava/util/concurrent/Exchanger$Slot;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_14

    .line 417
    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/Exchanger$Slot;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 418
    :cond_14
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public exchange(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 591
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, x:Ljava/lang/Object;,"TV;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_22

    .line 592
    if-nez p1, :cond_17

    sget-object v1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    :goto_a
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Ljava/util/concurrent/Exchanger;->doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    .line 593
    .local v0, v:Ljava/lang/Object;
    sget-object v1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v0, v1, :cond_19

    .line 594
    const/4 v1, 0x0

    .line 596
    :goto_16
    return-object v1

    .end local v0           #v:Ljava/lang/Object;
    :cond_17
    move-object v1, p1

    .line 592
    goto :goto_a

    .line 595
    .restart local v0       #v:Ljava/lang/Object;
    :cond_19
    sget-object v1, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    if-eq v0, v1, :cond_1f

    move-object v1, v0

    .line 596
    goto :goto_16

    .line 597
    :cond_1f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 599
    .end local v0           #v:Ljava/lang/Object;
    :cond_22
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public exchange(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 646
    .local p0, this:Ljava/util/concurrent/Exchanger;,"Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, x:Ljava/lang/Object;,"TV;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 647
    if-nez p1, :cond_19

    sget-object v1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    :goto_a
    const/4 v2, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Ljava/util/concurrent/Exchanger;->doExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    .line 649
    .local v0, v:Ljava/lang/Object;
    sget-object v1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v0, v1, :cond_1b

    .line 650
    const/4 v1, 0x0

    .line 652
    :goto_18
    return-object v1

    .end local v0           #v:Ljava/lang/Object;
    :cond_19
    move-object v1, p1

    .line 647
    goto :goto_a

    .line 651
    .restart local v0       #v:Ljava/lang/Object;
    :cond_1b
    sget-object v1, Ljava/util/concurrent/Exchanger;->CANCEL:Ljava/lang/Object;

    if-eq v0, v1, :cond_21

    move-object v1, v0

    .line 652
    goto :goto_18

    .line 653
    :cond_21
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 654
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 656
    .end local v0           #v:Ljava/lang/Object;
    :cond_2d
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method
