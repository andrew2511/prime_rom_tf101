.class Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;
.super Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.source "AtomicLongFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockedUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final cclass:Ljava/lang/Class;

.field private final offset:J

.field private final tclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 332
    sget-object v0, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, tclass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;-><init>()V

    .line 338
    const/4 v2, 0x0

    .line 339
    .local v2, field:Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    .line 340
    .local v0, caller:Ljava/lang/Class;
    const/4 v4, 0x0

    .line 342
    .local v4, modifiers:I
    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 343
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    .line 344
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 346
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    .line 347
    .local v5, smgr:Ljava/lang/SecurityManager;
    if-eqz v5, :cond_2e

    .line 348
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_3e

    const/4 v7, 0x0

    move v6, v7

    .line 350
    .local v6, type:I
    :goto_20
    invoke-virtual {v5, p1, v6}, Ljava/lang/SecurityManager;->checkMemberAccess(Ljava/lang/Class;I)V

    .line 351
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_41

    .line 363
    .end local v6           #type:I
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 364
    .local v3, fieldt:Ljava/lang/Class;
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v3, v7, :cond_49

    .line 365
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Must be long type"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 348
    .end local v3           #fieldt:Ljava/lang/Class;
    :cond_3e
    const/4 v7, 0x1

    move v6, v7

    goto :goto_20

    .line 359
    .end local v5           #smgr:Ljava/lang/SecurityManager;
    :catch_41
    move-exception v7

    move-object v1, v7

    .line 360
    .local v1, ex:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 367
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v3       #fieldt:Ljava/lang/Class;
    .restart local v5       #smgr:Ljava/lang/SecurityManager;
    :cond_49
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v7

    if-nez v7, :cond_57

    .line 368
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Must be volatile type"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 370
    :cond_57
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v7

    if-eqz v7, :cond_6d

    if-eq v0, p1, :cond_6d

    move-object v7, v0

    :goto_60
    iput-object v7, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    .line 372
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    .line 373
    sget-object v7, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v7, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    iput-wide v7, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    .line 374
    return-void

    .line 370
    :cond_6d
    const/4 v7, 0x0

    goto :goto_60
.end method

.method private ensureProtectedAccess(Ljava/lang/Object;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 418
    return-void

    .line 420
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can not access a protected member of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private fullCheck(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 378
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 379
    :cond_e
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    if-eqz v0, :cond_15

    .line 380
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->ensureProtectedAccess(Ljava/lang/Object;)V

    .line 381
    :cond_15
    return-void
.end method


# virtual methods
.method public compareAndSet(Ljava/lang/Object;JJ)Z
    .registers 14
    .parameter
    .parameter "expect"
    .parameter "update"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    if-eqz v0, :cond_11

    :cond_e
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->fullCheck(Ljava/lang/Object;)V

    .line 385
    :cond_11
    monitor-enter p0

    .line 386
    :try_start_12
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 387
    .local v6, v:J
    cmp-long v0, v6, p2

    if-eqz v0, :cond_21

    .line 388
    const/4 v0, 0x0

    monitor-exit p0

    .line 390
    :goto_20
    return v0

    .line 389
    :cond_21
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 390
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_20

    .line 391
    .end local v6           #v:J
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public get(Ljava/lang/Object;)J
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    if-eqz v0, :cond_11

    :cond_e
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->fullCheck(Ljava/lang/Object;)V

    .line 411
    :cond_11
    monitor-enter p0

    .line 412
    :try_start_12
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 413
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public lazySet(Ljava/lang/Object;J)V
    .registers 4
    .parameter
    .parameter "newValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->set(Ljava/lang/Object;J)V

    .line 407
    return-void
.end method

.method public set(Ljava/lang/Object;J)V
    .registers 10
    .parameter
    .parameter "newValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    if-eqz v0, :cond_11

    :cond_e
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->fullCheck(Ljava/lang/Object;)V

    .line 400
    :cond_11
    monitor-enter p0

    .line 401
    :try_start_12
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 402
    monitor-exit p0

    .line 403
    return-void

    .line 402
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public weakCompareAndSet(Ljava/lang/Object;JJ)Z
    .registers 7
    .parameter
    .parameter "expect"
    .parameter "update"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    invoke-virtual/range {p0 .. p5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    return v0
.end method
