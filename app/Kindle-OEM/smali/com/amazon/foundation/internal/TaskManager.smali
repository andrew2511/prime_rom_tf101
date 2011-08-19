.class public final Lcom/amazon/foundation/internal/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/foundation/internal/TaskManager$1;,
        Lcom/amazon/foundation/internal/TaskManager$TaskControl;
    }
.end annotation


# static fields
.field public static final TASK_FLAG_CPU_INTENSIVE:I = 0x1

.field public static final TASK_FLAG_DISK_INTENSIVE:I = 0x2

.field public static final TASK_FLAG_MASK:I = 0x4

.field public static final TASK_FLAG_NET_INTENSIVE:I = 0x4

.field private static final TASK_NUM_TYPES:I = 0x3

.field private static final TASK_TYPE_CPU_INTENSIVE:I = 0x0

.field private static final TASK_TYPE_DISK_INTENSIVE:I = 0x1

.field private static final TASK_TYPE_NET_INTENSIVE:I = 0x2

.field private static volatile instance:Lcom/amazon/foundation/internal/TaskManager;

.field private static final taskTypeNames:[Ljava/lang/String;


# instance fields
.field private final maxNumTasks:[I

.field private final newPermitsAvailable:Ljava/util/concurrent/locks/Condition;

.field private final numTasks:[I

.field private final syncUtilities:Lcom/amazon/system/Utilities;

.field private final taskCountLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CPU"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DISK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NETWORK"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/foundation/internal/TaskManager;->taskTypeNames:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->maxNumTasks:[I

    .line 251
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->numTasks:[I

    .line 258
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    .line 259
    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->newPermitsAvailable:Ljava/util/concurrent/locks/Condition;

    .line 260
    invoke-static {}, Lcom/amazon/system/SynchronizationUtilities;->getUtilities()Lcom/amazon/system/Utilities;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->syncUtilities:Lcom/amazon/system/Utilities;

    .line 262
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 264
    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->maxNumTasks:[I

    const v2, 0x7fffffff

    aput v2, v1, v0

    .line 265
    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->numTasks:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/foundation/internal/TaskManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/TaskManager;->acquirePermit(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/foundation/internal/TaskManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/TaskManager;->releasePermit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/foundation/internal/TaskManager;)Lcom/amazon/system/Utilities;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager;->syncUtilities:Lcom/amazon/system/Utilities;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/foundation/internal/TaskManager;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/TaskManager;->releaseIfOverAllocated(I)Z

    move-result v0

    return v0
.end method

.method private acquirePermit(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 400
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager;->syncUtilities:Lcom/amazon/system/Utilities;

    invoke-interface {v0}, Lcom/amazon/system/Utilities;->isEventThread()Z

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    move v1, v4

    .line 407
    :goto_0
    if-nez v1, :cond_4

    .line 409
    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/TaskManager;->permitsAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v1, v4

    .line 417
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 419
    shl-int v2, v5, v1

    .line 421
    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/amazon/foundation/internal/TaskManager;->numTasks:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v5

    .line 432
    goto :goto_0

    .line 440
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/amazon/foundation/internal/TaskManager;->newPermitsAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v2

    goto :goto_0

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 454
    return-void

    .line 452
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private dumpStats()V
    .locals 0

    .prologue
    .line 549
    return-void
.end method

.method private flagToIndex(I)I
    .locals 2
    .parameter "flag"

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 294
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    .line 296
    return v0

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static getInstance()Lcom/amazon/foundation/internal/TaskManager;
    .locals 2

    .prologue
    .line 275
    const-class v0, Lcom/amazon/foundation/internal/TaskManager;

    monitor-enter v0

    .line 277
    :try_start_0
    sget-object v1, Lcom/amazon/foundation/internal/TaskManager;->instance:Lcom/amazon/foundation/internal/TaskManager;

    if-nez v1, :cond_0

    .line 279
    new-instance v1, Lcom/amazon/foundation/internal/TaskManager;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/TaskManager;-><init>()V

    sput-object v1, Lcom/amazon/foundation/internal/TaskManager;->instance:Lcom/amazon/foundation/internal/TaskManager;

    .line 281
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    sget-object v0, Lcom/amazon/foundation/internal/TaskManager;->instance:Lcom/amazon/foundation/internal/TaskManager;

    return-object v0

    .line 281
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private permitsAvailable(I)Z
    .locals 5
    .parameter "taskFlags"

    .prologue
    const/4 v4, 0x1

    .line 366
    iget-object v2, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 369
    const/4 v0, 0x0

    .local v0, taskType:I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 371
    shl-int v1, v4, v0

    .line 373
    .local v1, typeFlag:I
    and-int v2, p1, v1

    if-eqz v2, :cond_0

    .line 375
    :try_start_0
    iget-object v2, p0, Lcom/amazon/foundation/internal/TaskManager;->numTasks:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/amazon/foundation/internal/TaskManager;->maxNumTasks:[I

    aget v3, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    .line 377
    const/4 v2, 0x0

    .line 385
    iget-object v3, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .end local v1           #typeFlag:I
    :goto_1
    return v2

    .line 369
    .restart local v1       #typeFlag:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    .end local v1           #typeFlag:I
    :cond_1
    iget-object v2, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v4

    goto :goto_1

    .restart local v1       #typeFlag:I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method private releaseIfOverAllocated(I)Z
    .locals 5
    .parameter "taskFlags"

    .prologue
    const/4 v4, 0x1

    .line 504
    iget-object v2, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 507
    const/4 v0, 0x0

    .local v0, taskType:I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 509
    shl-int v1, v4, v0

    .line 511
    .local v1, typeFlag:I
    and-int v2, p1, v1

    if-eqz v2, :cond_0

    .line 513
    :try_start_0
    iget-object v2, p0, Lcom/amazon/foundation/internal/TaskManager;->numTasks:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/amazon/foundation/internal/TaskManager;->maxNumTasks:[I

    aget v3, v3, v0

    if-le v2, v3, :cond_0

    .line 515
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/TaskManager;->releasePermit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    iget-object v2, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v4

    .end local v1           #typeFlag:I
    :goto_1
    return v2

    .line 507
    .restart local v1       #typeFlag:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    .end local v1           #typeFlag:I
    :cond_1
    const/4 v2, 0x0

    .line 525
    iget-object v3, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .restart local v1       #typeFlag:I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method private releasePermit(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 462
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 465
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 467
    shl-int v1, v3, v0

    .line 469
    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->numTasks:[I

    aget v2, v1, v0

    sub-int/2addr v2, v3

    aput v2, v1, v0

    .line 473
    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->numTasks:[I

    aget v1, v1, v0

    if-gez v1, :cond_0

    .line 475
    new-instance v0, Lcom/amazon/foundation/AssertionError;

    invoke-direct {v0}, Lcom/amazon/foundation/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 465
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager;->newPermitsAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 489
    return-void
.end method

.method public static taskFlagsToString(I)Ljava/lang/String;
    .locals 5
    .parameter "taskFlags"

    .prologue
    .line 216
    const-string v0, ""

    .line 217
    .local v0, retval:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, taskType:I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 219
    const/4 v3, 0x1

    shl-int v2, v3, v1

    .line 220
    .local v2, typeFlag:I
    and-int v3, p0, v2

    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/amazon/foundation/internal/TaskManager;->taskTypeNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v2           #typeFlag:I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public createTaskControl(Ljava/lang/String;I)Lcom/amazon/foundation/internal/TaskManager$TaskControl;
    .locals 2
    .parameter "friendlyName"
    .parameter "initialFlags"

    .prologue
    .line 356
    new-instance v0, Lcom/amazon/foundation/internal/TaskManager$TaskControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;-><init>(Lcom/amazon/foundation/internal/TaskManager;Ljava/lang/String;ILcom/amazon/foundation/internal/TaskManager$1;)V

    return-object v0
.end method

.method public getMaxConcurrentTasks(I)I
    .locals 2
    .parameter "flag"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/TaskManager;->maxNumTasks:[I

    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/TaskManager;->flagToIndex(I)I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setMaxConcurrentTasks(II)V
    .locals 3
    .parameter "flag"
    .parameter "maxTasks"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->maxNumTasks:[I

    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/TaskManager;->flagToIndex(I)I

    move-result v2

    aget v1, v1, v2

    if-ge v1, p2, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 315
    .local v0, increasing:Z
    :goto_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->maxNumTasks:[I

    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/TaskManager;->flagToIndex(I)I

    move-result v2

    aput p2, v1, v2

    .line 317
    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->newPermitsAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 327
    return-void

    .line 313
    .end local v0           #increasing:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/amazon/foundation/internal/TaskManager;->taskCountLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
