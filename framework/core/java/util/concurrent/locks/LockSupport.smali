.class public Ljava/util/concurrent/locks/LockSupport;
.super Ljava/lang/Object;
.source "LockSupport.java"


# static fields
.field private static final parkBlockerOffset:J

.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 95
    sget-object v1, Ljava/util/concurrent/locks/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    .line 100
    :try_start_4
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/Thread;

    const-string v3, "parkBlocker"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/locks/LockSupport;->parkBlockerOffset:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15

    .line 103
    return-void

    .line 102
    :catch_15
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlocker(Ljava/lang/Thread;)Ljava/lang/Object;
    .registers 4
    .parameter "t"

    .prologue
    .line 253
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/locks/LockSupport;->parkBlockerOffset:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static park()V
    .registers 4

    .prologue
    .line 282
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 283
    return-void
.end method

.method public static park(Ljava/lang/Object;)V
    .registers 6
    .parameter "blocker"

    .prologue
    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 156
    .local v0, t:Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 157
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 158
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public static parkNanos(J)V
    .registers 4
    .parameter "nanos"

    .prologue
    .line 315
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_c

    .line 316
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 317
    :cond_c
    return-void
.end method

.method public static parkNanos(Ljava/lang/Object;J)V
    .registers 6
    .parameter "blocker"
    .parameter "nanos"

    .prologue
    .line 194
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_17

    .line 195
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 196
    .local v0, t:Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 197
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 198
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 200
    .end local v0           #t:Ljava/lang/Thread;
    :cond_17
    return-void
.end method

.method public static parkUntil(J)V
    .registers 4
    .parameter "deadline"

    .prologue
    .line 350
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 351
    return-void
.end method

.method public static parkUntil(Ljava/lang/Object;J)V
    .registers 6
    .parameter "blocker"
    .parameter "deadline"

    .prologue
    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 237
    .local v0, t:Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 238
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 239
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method private static setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V
    .registers 5
    .parameter "t"
    .parameter "arg"

    .prologue
    .line 107
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/locks/LockSupport;->parkBlockerOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 108
    return-void
.end method

.method public static unpark(Ljava/lang/Thread;)V
    .registers 2
    .parameter "thread"

    .prologue
    .line 122
    if-eqz p0, :cond_7

    .line 123
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 124
    :cond_7
    return-void
.end method
