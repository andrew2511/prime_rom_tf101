.class public Ljava/lang/Thread;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Thread$UncaughtExceptionHandler;,
        Ljava/lang/Thread$State;,
        Ljava/lang/Thread$ParkState;
    }
.end annotation


# static fields
.field private static final EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement; = null

.field public static final MAX_PRIORITY:I = 0xa

.field public static final MIN_PRIORITY:I = 0x1

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field public static final NORM_PRIORITY:I = 0x5

.field private static count:I

.field private static defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private contextClassLoader:Ljava/lang/ClassLoader;

.field volatile daemon:Z

.field volatile group:Ljava/lang/ThreadGroup;

.field hasBeenStarted:Z

.field private id:J

.field inheritableValues:Ljava/lang/ThreadLocal$Values;

.field private interruptAction:Ljava/lang/Runnable;

.field localValues:Ljava/lang/ThreadLocal$Values;

.field volatile name:Ljava/lang/String;

.field private parkBlocker:Ljava/lang/Object;

.field private parkState:I

.field volatile priority:I

.field volatile stackSize:J

.field target:Ljava/lang/Runnable;

.field private uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field volatile vmThread:Ljava/lang/VMThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 72
    new-array v0, v1, [Ljava/lang/StackTraceElement;

    sput-object v0, Ljava/lang/Thread;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 142
    sput v1, Ljava/lang/Thread;->count:I

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 206
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 8
    .parameter "runnable"

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 222
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 9
    .parameter "runnable"
    .parameter "threadName"

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 240
    if-nez p2, :cond_11

    .line 241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 244
    :cond_11
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 245
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .parameter "threadName"

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 260
    if-nez p1, :cond_12

    .line 261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 264
    :cond_12
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 265
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .registers 9
    .parameter "group"
    .parameter "runnable"

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 289
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 290
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 10
    .parameter "group"
    .parameter "runnable"
    .parameter "threadName"

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 314
    if-nez p3, :cond_11

    .line 315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 318
    :cond_11
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 319
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 7
    .parameter "group"
    .parameter "runnable"
    .parameter "threadName"
    .parameter "stackSize"

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 374
    if-nez p3, :cond_11

    .line 375
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 377
    :cond_11
    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 378
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 9
    .parameter "group"
    .parameter "threadName"

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 340
    if-nez p2, :cond_11

    .line 341
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 344
    :cond_11
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 345
    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;IZ)V
    .registers 8
    .parameter "group"
    .parameter "name"
    .parameter "priority"
    .parameter "daemon"

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 388
    const-class v0, Ljava/lang/Thread;

    monitor-enter v0

    .line 389
    :try_start_c
    sget v1, Ljava/lang/Thread;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ljava/lang/Thread;->count:I

    int-to-long v1, v1

    iput-wide v1, p0, Ljava/lang/Thread;->id:J

    .line 390
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_39

    .line 392
    if-nez p2, :cond_3c

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/lang/Thread;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 397
    :goto_2f
    if-nez p1, :cond_3f

    .line 398
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "group not specified"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1

    .line 395
    :cond_3c
    iput-object p2, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    goto :goto_2f

    .line 401
    :cond_3f
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 404
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    .line 405
    iput p3, p0, Ljava/lang/Thread;->priority:I

    .line 406
    iput-boolean p4, p0, Ljava/lang/Thread;->daemon:Z

    .line 409
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->addThread(Ljava/lang/Thread;)V

    .line 410
    return-void
.end method

.method public static activeCount()I
    .registers 1

    .prologue
    .line 513
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    return v0
.end method

.method private create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 12
    .parameter "group"
    .parameter "runnable"
    .parameter "threadName"
    .parameter "stackSize"

    .prologue
    .line 433
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 434
    .local v2, smgr:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_42

    .line 435
    if-nez p1, :cond_c

    .line 436
    invoke-virtual {v2}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    .line 445
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Thread;

    if-eq v3, v4, :cond_42

    .line 446
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/ClassLoader;

    aput-object v4, v1, v3

    .line 449
    .local v1, signature:[Ljava/lang/Class;
    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getContextClassLoader"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 450
    new-instance v3, Ljava/lang/RuntimePermission;

    const-string v4, "enableContextClassLoaderOverride"

    invoke-direct {v3, v4}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_2f} :catch_b5

    .line 456
    :goto_2f
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setContextClassLoader"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 457
    new-instance v3, Ljava/lang/RuntimePermission;

    const-string v4, "enableContextClassLoaderOverride"

    invoke-direct {v3, v4}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2f .. :try_end_42} :catch_b3

    .line 464
    .end local v1           #signature:[Ljava/lang/Class;
    :cond_42
    :goto_42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 465
    .local v0, currentThread:Ljava/lang/Thread;
    if-nez p1, :cond_4c

    .line 466
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    .line 469
    :cond_4c
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 470
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 471
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    const-string v4, "Group already destroyed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 474
    :cond_5d
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 476
    const-class v3, Ljava/lang/Thread;

    monitor-enter v3

    .line 477
    :try_start_62
    sget v4, Ljava/lang/Thread;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Ljava/lang/Thread;->count:I

    int-to-long v4, v4

    iput-wide v4, p0, Ljava/lang/Thread;->id:J

    .line 478
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_ad

    .line 480
    if-nez p3, :cond_b0

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Ljava/lang/Thread;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 486
    :goto_85
    iput-object p2, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 487
    iput-wide p4, p0, Ljava/lang/Thread;->stackSize:J

    .line 489
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v3

    iput v3, p0, Ljava/lang/Thread;->priority:I

    .line 491
    iget-object v3, v0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    iput-object v3, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 494
    iget-object v3, v0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    if-eqz v3, :cond_a0

    .line 495
    new-instance v3, Ljava/lang/ThreadLocal$Values;

    iget-object v4, v0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    invoke-direct {v3, v4}, Ljava/lang/ThreadLocal$Values;-><init>(Ljava/lang/ThreadLocal$Values;)V

    iput-object v3, p0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    .line 500
    :cond_a0
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/apache/harmony/security/fortress/SecurityUtils;->putContext(Ljava/lang/Thread;Ljava/security/AccessControlContext;)V

    .line 503
    iget-object v3, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v3, p0}, Ljava/lang/ThreadGroup;->addThread(Ljava/lang/Thread;)V

    .line 504
    return-void

    .line 478
    :catchall_ad
    move-exception v4

    :try_start_ae
    monitor-exit v3
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v4

    .line 483
    :cond_b0
    iput-object p3, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    goto :goto_85

    .line 458
    .end local v0           #currentThread:Ljava/lang/Thread;
    .restart local v1       #signature:[Ljava/lang/Class;
    :catch_b3
    move-exception v3

    goto :goto_42

    .line 451
    :catch_b5
    move-exception v3

    goto/16 :goto_2f
.end method

.method public static currentThread()Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 558
    invoke-static {}, Ljava/lang/VMThread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static dumpStack()V
    .registers 2

    .prologue
    .line 578
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "stack dump"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 579
    return-void
.end method

.method public static enumerate([Ljava/lang/Thread;)I
    .registers 3
    .parameter "threads"

    .prologue
    .line 597
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 598
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->checkAccess()V

    .line 599
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v1

    return v1
.end method

.method public static getAllStackTraces()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 616
    .local v3, securityManager:Ljava/lang/SecurityManager;
    if-eqz v3, :cond_1a

    .line 617
    new-instance v5, Ljava/lang/RuntimePermission;

    const-string v6, "getStackTrace"

    invoke-direct {v5, v6}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 618
    new-instance v5, Ljava/lang/RuntimePermission;

    const-string v6, "modifyThreadGroup"

    invoke-direct {v5, v6}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 621
    :cond_1a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 625
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    sget-object v5, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    invoke-virtual {v5}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 626
    .local v0, count:I
    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v0

    new-array v4, v5, [Ljava/lang/Thread;

    .line 629
    .local v4, threads:[Ljava/lang/Thread;
    sget-object v5, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    invoke-virtual {v5, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    .line 630
    const/4 v1, 0x0

    .local v1, i:I
    :goto_31
    if-ge v1, v0, :cond_41

    .line 631
    aget-object v5, v4, v1

    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 634
    :cond_41
    return-object v2
.end method

.method public static getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .prologue
    .line 684
    sget-object v0, Ljava/lang/Thread;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static holdsLock(Ljava/lang/Object;)Z
    .registers 2
    .parameter "object"

    .prologue
    .line 1335
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    invoke-virtual {v0, p0}, Ljava/lang/VMThread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static interrupted()Z
    .registers 1

    .prologue
    .line 850
    invoke-static {}, Ljava/lang/VMThread;->interrupted()Z

    move-result v0

    return v0
.end method

.method public static setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 4
    .parameter "handler"

    .prologue
    .line 1085
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1086
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1087
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "setDefaultUncaughtExceptionHandler"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1090
    :cond_10
    sput-object p0, Ljava/lang/Thread;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1091
    return-void
.end method

.method private setInterruptAction(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "action"

    .prologue
    .line 1106
    iput-object p1, p0, Ljava/lang/Thread;->interruptAction:Ljava/lang/Runnable;

    .line 1107
    return-void
.end method

.method public static sleep(J)V
    .registers 3
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1196
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    .line 1197
    return-void
.end method

.method public static sleep(JI)V
    .registers 3
    .parameter "millis"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1214
    invoke-static {p0, p1, p2}, Ljava/lang/VMThread;->sleep(JI)V

    .line 1215
    return-void
.end method

.method public static yield()V
    .registers 0

    .prologue
    .line 1323
    invoke-static {}, Ljava/lang/VMThread;->yield()V

    .line 1324
    return-void
.end method


# virtual methods
.method public final checkAccess()V
    .registers 2

    .prologue
    .line 533
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 534
    .local v0, currentManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 535
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V

    .line 537
    :cond_9
    return-void
.end method

.method public countStackFrames()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public destroy()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 568
    new-instance v0, Ljava/lang/NoSuchMethodError;

    const-string v1, "Thread.destroy()"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 5

    .prologue
    .line 664
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 665
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1e

    .line 666
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 668
    .local v0, calling:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1e

    iget-object v2, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->isAncestorOf(Ljava/lang/ClassLoader;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 669
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "getClassLoader"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 673
    .end local v0           #calling:Ljava/lang/ClassLoader;
    :cond_1e
    iget-object v2, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v2
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 696
    iget-wide v0, p0, Ljava/lang/Thread;->id:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .registers 2

    .prologue
    .line 715
    iget v0, p0, Ljava/lang/Thread;->priority:I

    return v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 5

    .prologue
    .line 733
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 734
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 735
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "getStackTrace"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 738
    :cond_10
    invoke-static {p0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 739
    .local v1, ste:[Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_18

    move-object v2, v1

    :goto_17
    return-object v2

    :cond_18
    sget-object v2, Ljava/lang/Thread;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    goto :goto_17
.end method

.method public getState()Ljava/lang/Thread$State;
    .registers 5

    .prologue
    .line 750
    iget-object v2, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 754
    .local v2, vmt:Ljava/lang/VMThread;
    iget-object v1, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 755
    .local v1, thread:Ljava/lang/VMThread;
    if-eqz v1, :cond_12

    .line 758
    invoke-virtual {v1}, Ljava/lang/VMThread;->getStatus()I

    move-result v0

    .line 759
    .local v0, state:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_12

    .line 760
    sget-object v3, Ljava/lang/VMThread;->STATE_MAP:[Ljava/lang/Thread$State;

    aget-object v3, v3, v0

    .line 763
    .end local v0           #state:I
    :goto_11
    return-object v3

    :cond_12
    iget-boolean v3, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v3, :cond_19

    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    goto :goto_11

    :cond_19
    sget-object v3, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    goto :goto_11
.end method

.method public final getThreadGroup()Ljava/lang/ThreadGroup;
    .registers 3

    .prologue
    .line 773
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_a

    .line 774
    const/4 v0, 0x0

    .line 776
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    goto :goto_9
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_7

    .line 789
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 791
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    goto :goto_6
.end method

.method public interrupt()V
    .registers 3

    .prologue
    .line 826
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 828
    iget-object v1, p0, Ljava/lang/Thread;->interruptAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_c

    .line 829
    iget-object v1, p0, Ljava/lang/Thread;->interruptAction:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 832
    :cond_c
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 833
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_13

    .line 834
    invoke-virtual {v0}, Ljava/lang/VMThread;->interrupt()V

    .line 836
    :cond_13
    return-void
.end method

.method public final isAlive()Z
    .registers 2

    .prologue
    .line 863
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final isDaemon()Z
    .registers 2

    .prologue
    .line 877
    iget-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    return v0
.end method

.method public isInterrupted()Z
    .registers 3

    .prologue
    .line 890
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 891
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_9

    .line 892
    invoke-virtual {v0}, Ljava/lang/VMThread;->isInterrupted()Z

    move-result v1

    .line 895
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public final join()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 908
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 909
    .local v0, t:Ljava/lang/VMThread;
    if-nez v0, :cond_5

    .line 918
    :goto_4
    return-void

    .line 913
    :cond_5
    monitor-enter v0

    .line 914
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 915
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_6

    .line 917
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v1

    :cond_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_10

    goto :goto_4
.end method

.method public final join(J)V
    .registers 4
    .parameter "millis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 932
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Thread;->join(JI)V

    .line 933
    return-void
.end method

.method public final join(JI)V
    .registers 23
    .parameter "millis"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 948
    const-wide/16 v15, 0x0

    cmp-long v15, p1, v15

    if-ltz v15, :cond_10

    if-ltz p3, :cond_10

    const v15, 0xf4240

    move/from16 v0, p3

    move v1, v15

    if-lt v0, v1, :cond_16

    .line 949
    :cond_10
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v15

    .line 953
    :cond_16
    const-wide v15, 0x7fffffffffffffffL

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    const-wide/32 v17, 0xf4240

    div-long v15, v15, v17

    cmp-long v15, p1, v15

    if-ltz v15, :cond_43

    const/4 v15, 0x1

    move v11, v15

    .line 954
    .local v11, overflow:Z
    :goto_2d
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide v15, v0

    or-long v15, v15, p1

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_46

    const/4 v15, 0x1

    move v4, v15

    .line 955
    .local v4, forever:Z
    :goto_3b
    or-int v15, v4, v11

    if-eqz v15, :cond_49

    .line 956
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->join()V

    .line 989
    :cond_42
    :goto_42
    return-void

    .line 953
    .end local v4           #forever:Z
    .end local v11           #overflow:Z
    :cond_43
    const/4 v15, 0x0

    move v11, v15

    goto :goto_2d

    .line 954
    .restart local v11       #overflow:Z
    :cond_46
    const/4 v15, 0x0

    move v4, v15

    goto :goto_3b

    .line 960
    .restart local v4       #forever:Z
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    move-object v14, v0

    .line 961
    .local v14, t:Ljava/lang/VMThread;
    if-eqz v14, :cond_42

    .line 965
    monitor-enter v14

    .line 966
    :try_start_51
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v15

    if-nez v15, :cond_5c

    .line 967
    monitor-exit v14

    goto :goto_42

    .line 988
    :catchall_59
    move-exception v15

    monitor-exit v14
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_59

    throw v15

    .line 971
    :cond_5c
    const-wide/32 v15, 0xf4240

    mul-long v15, v15, p1

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v9, v15, v17

    .line 974
    .local v9, nanosToWait:J
    :try_start_68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 976
    .local v12, start:J
    :goto_6c
    move-object v0, v14

    move-wide/from16 v1, p1

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/Object;->wait(JI)V

    .line 977
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v15

    if-nez v15, :cond_7c

    .line 988
    :cond_7a
    monitor-exit v14

    goto :goto_42

    .line 980
    :cond_7c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long v5, v15, v12

    .line 981
    .local v5, nanosElapsed:J
    sub-long v7, v9, v5

    .line 982
    .local v7, nanosRemaining:J
    const-wide/16 v15, 0x0

    cmp-long v15, v7, v15

    if-lez v15, :cond_7a

    .line 985
    const-wide/32 v15, 0xf4240

    div-long p1, v7, v15
    :try_end_8f
    .catchall {:try_start_68 .. :try_end_8f} :catchall_59

    .line 986
    const-wide/32 v15, 0xf4240

    mul-long v15, v15, p1

    sub-long v15, v7, v15

    move-wide v0, v15

    long-to-int v0, v0

    move/from16 p3, v0

    .line 987
    goto :goto_6c
.end method

.method parkFor(J)V
    .registers 10
    .parameter "nanos"

    .prologue
    const/4 v6, 0x3

    .line 1406
    iget-object v3, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1408
    .local v3, vmt:Ljava/lang/VMThread;
    if-nez v3, :cond_b

    .line 1410
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1413
    :cond_b
    monitor-enter v3

    .line 1414
    :try_start_c
    iget v4, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v4, :pswitch_data_4e

    .line 1441
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "shouldn\'t happen: attempt to repark"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1445
    :catchall_19
    move-exception v4

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_19

    throw v4

    .line 1416
    :pswitch_1c
    const/4 v4, 0x1

    :try_start_1d
    iput v4, p0, Ljava/lang/Thread;->parkState:I

    .line 1445
    :cond_1f
    :goto_1f
    monitor-exit v3

    .line 1446
    return-void

    .line 1420
    :pswitch_21
    const-wide/32 v4, 0xf4240

    div-long v1, p1, v4

    .line 1421
    .local v1, millis:J
    const-wide/32 v4, 0xf4240

    rem-long/2addr p1, v4

    .line 1423
    const/4 v4, 0x3

    iput v4, p0, Ljava/lang/Thread;->parkState:I
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_19

    .line 1425
    long-to-int v4, p1

    :try_start_2e
    invoke-virtual {v3, v1, v2, v4}, Ljava/lang/Object;->wait(JI)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_45
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_39

    .line 1434
    :try_start_31
    iget v4, p0, Ljava/lang/Thread;->parkState:I

    if-ne v4, v6, :cond_1f

    .line 1435
    const/4 v4, 0x1

    iput v4, p0, Ljava/lang/Thread;->parkState:I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_19

    goto :goto_1f

    .line 1426
    :catch_39
    move-exception v0

    .line 1427
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_3a
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_45

    .line 1434
    :try_start_3d
    iget v4, p0, Ljava/lang/Thread;->parkState:I

    if-ne v4, v6, :cond_1f

    .line 1435
    const/4 v4, 0x1

    iput v4, p0, Ljava/lang/Thread;->parkState:I

    goto :goto_1f

    .line 1434
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_45
    move-exception v4

    iget v5, p0, Ljava/lang/Thread;->parkState:I

    if-ne v5, v6, :cond_4d

    .line 1435
    const/4 v5, 0x1

    iput v5, p0, Ljava/lang/Thread;->parkState:I

    :cond_4d
    throw v4
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_19

    .line 1414
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method

.method parkUntil(J)V
    .registers 8
    .parameter "time"

    .prologue
    .line 1456
    iget-object v2, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1458
    .local v2, vmt:Ljava/lang/VMThread;
    if-nez v2, :cond_a

    .line 1460
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1463
    :cond_a
    monitor-enter v2

    .line 1478
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, p1, v3

    .line 1480
    .local v0, delayMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1c

    .line 1481
    const/4 v3, 0x1

    iput v3, p0, Ljava/lang/Thread;->parkState:I

    .line 1485
    :goto_1a
    monitor-exit v2

    .line 1486
    return-void

    .line 1483
    :cond_1c
    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/Thread;->parkFor(J)V

    goto :goto_1a

    .line 1485
    .end local v0           #delayMillis:J
    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_24

    throw v3
.end method

.method public final resume()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1004
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1006
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1007
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_a

    .line 1008
    invoke-virtual {v0}, Ljava/lang/VMThread;->resume()V

    .line 1010
    :cond_a
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 1019
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 1020
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1022
    :cond_9
    return-void
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .registers 5
    .parameter "cl"

    .prologue
    .line 1038
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1039
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1040
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "setContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1043
    :cond_10
    iput-object p1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 1044
    return-void
.end method

.method public final setDaemon(Z)V
    .registers 4
    .parameter "isDaemon"

    .prologue
    .line 1057
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1059
    iget-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v0, :cond_f

    .line 1060
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Thread already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1063
    :cond_f
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    if-nez v0, :cond_15

    .line 1064
    iput-boolean p1, p0, Ljava/lang/Thread;->daemon:Z

    .line 1066
    :cond_15
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 4
    .parameter "threadName"

    .prologue
    .line 1118
    if-nez p1, :cond_8

    .line 1119
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1122
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1124
    iput-object p1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 1125
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1126
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_14

    .line 1128
    invoke-virtual {v0, p1}, Ljava/lang/VMThread;->nameChanged(Ljava/lang/String;)V

    .line 1130
    :cond_14
    return-void
.end method

.method public final setPriority(I)V
    .registers 5
    .parameter "priority"

    .prologue
    .line 1148
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1150
    const/4 v1, 0x1

    if-lt p1, v1, :cond_a

    const/16 v1, 0xa

    if-le p1, v1, :cond_12

    .line 1151
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Priority out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1154
    :cond_12
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v1

    if-le p1, v1, :cond_20

    .line 1155
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result p1

    .line 1158
    :cond_20
    iput p1, p0, Ljava/lang/Thread;->priority:I

    .line 1160
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1161
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_29

    .line 1162
    invoke-virtual {v0, p1}, Ljava/lang/VMThread;->setPriority(I)V

    .line 1164
    :cond_29
    return-void
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 1178
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1180
    iput-object p1, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1181
    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 1227
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v0, :cond_10

    .line 1228
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Thread already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 1227
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1231
    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 1233
    iget-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    invoke-static {p0, v0, v1}, Ljava/lang/VMThread;->create(Ljava/lang/Thread;J)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_d

    .line 1234
    monitor-exit p0

    return-void
.end method

.method public final stop()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1248
    new-instance v0, Ljava/lang/ThreadDeath;

    invoke-direct {v0}, Ljava/lang/ThreadDeath;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->stop(Ljava/lang/Throwable;)V

    .line 1249
    return-void
.end method

.method public final declared-synchronized stop(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "throwable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1267
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1268
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1a

    .line 1269
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V

    .line 1270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v2, p0, :cond_1a

    .line 1271
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "stopThread"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1275
    :cond_1a
    if-nez p1, :cond_25

    .line 1276
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_22

    .line 1267
    .end local v0           #securityManager:Ljava/lang/SecurityManager;
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1279
    .restart local v0       #securityManager:Ljava/lang/SecurityManager;
    :cond_25
    :try_start_25
    iget-object v1, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1280
    .local v1, vmt:Ljava/lang/VMThread;
    if-eqz v1, :cond_2c

    .line 1281
    invoke-virtual {v1, p1}, Ljava/lang/VMThread;->stop(Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_22

    .line 1283
    :cond_2c
    monitor-exit p0

    return-void
.end method

.method public final suspend()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1299
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1301
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1302
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_a

    .line 1303
    invoke-virtual {v0}, Ljava/lang/VMThread;->suspend()V

    .line 1305
    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/Thread;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unpark()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 1360
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1362
    .local v0, vmt:Ljava/lang/VMThread;
    if-nez v0, :cond_8

    .line 1370
    iput v1, p0, Ljava/lang/Thread;->parkState:I

    .line 1396
    :goto_7
    return-void

    .line 1374
    :cond_8
    monitor-enter v0

    .line 1375
    :try_start_9
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v1, :pswitch_data_1e

    .line 1390
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/Thread;->parkState:I

    .line 1391
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1395
    :goto_14
    :pswitch_14
    monitor-exit v0

    goto :goto_7

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1

    .line 1386
    :pswitch_19
    const/4 v1, 0x2

    :try_start_1a
    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_16

    goto :goto_14

    .line 1375
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method
