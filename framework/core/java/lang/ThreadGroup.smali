.class public Ljava/lang/ThreadGroup;
.super Ljava/lang/Object;
.source "ThreadGroup.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final mMain:Ljava/lang/ThreadGroup;

.field static final mSystem:Ljava/lang/ThreadGroup;


# instance fields
.field private final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation
.end field

.field private isDaemon:Z

.field private isDestroyed:Z

.field private maxPriority:I

.field private name:Ljava/lang/String;

.field final parent:Ljava/lang/ThreadGroup;

.field private final threadRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Thread;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threads:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/ThreadGroup;

    invoke-direct {v0}, Ljava/lang/ThreadGroup;-><init>()V

    sput-object v0, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    .line 70
    new-instance v0, Ljava/lang/ThreadGroup;

    sget-object v1, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    const-string v2, "main"

    invoke-direct {v0, v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    sput-object v0, Ljava/lang/ThreadGroup;->mMain:Ljava/lang/ThreadGroup;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    .line 55
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    .line 121
    const-string v0, "system"

    iput-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 6
    .parameter "parent"
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    .line 55
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    invoke-static {v0, v2}, Llibcore/util/CollectionUtils;->dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 102
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 105
    :cond_29
    iput-object p2, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    .line 106
    iput-object p1, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    .line 107
    if-eqz p1, :cond_42

    .line 108
    invoke-direct {p1, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/ThreadGroup;)V

    .line 109
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    .line 110
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 111
    invoke-virtual {p0, v2}, Ljava/lang/ThreadGroup;->setDaemon(Z)V

    .line 114
    :cond_42
    return-void
.end method

.method private add(Ljava/lang/ThreadGroup;)V
    .registers 4
    .parameter "g"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v0

    .line 191
    :try_start_3
    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-eqz v1, :cond_10

    .line 192
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v1}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v1

    .line 195
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1

    .line 194
    :cond_10
    :try_start_10
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    .line 196
    return-void
.end method

.method private destroyIfEmptyDaemon()V
    .registers 4

    .prologue
    .line 282
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v0

    .line 283
    :try_start_3
    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-nez v1, :cond_26

    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_26

    .line 284
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2b

    .line 285
    :try_start_1a
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 286
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V

    .line 288
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_28

    .line 290
    :cond_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2b

    .line 291
    return-void

    .line 288
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v2

    .line 290
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private enumerateGeneric([Ljava/lang/Object;ZIZ)I
    .registers 13
    .parameter "enumeration"
    .parameter "recurse"
    .parameter "enumerationIndex"
    .parameter "enumeratingThreads"

    .prologue
    const/4 v7, 0x1

    .line 376
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 378
    if-eqz p4, :cond_5a

    .line 379
    iget-object v6, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v6

    .line 381
    :try_start_9
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_57

    move-result v5

    sub-int v2, v5, v7

    .local v2, i:I
    move v0, p3

    .end local p3
    .local v0, enumerationIndex:I
    :goto_12
    if-ltz v2, :cond_38

    .line 382
    :try_start_14
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 383
    .local v4, thread:Ljava/lang/Thread;
    if-eqz v4, :cond_93

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_93

    .line 384
    array-length v5, p1

    if-lt v0, v5, :cond_30

    .line 385
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_90

    move p3, v0

    .line 413
    .end local v0           #enumerationIndex:I
    .end local v4           #thread:Ljava/lang/Thread;
    :goto_2f
    return v0

    .line 387
    .restart local v0       #enumerationIndex:I
    .restart local v4       #thread:Ljava/lang/Thread;
    :cond_30
    add-int/lit8 p3, v0, 0x1

    .end local v0           #enumerationIndex:I
    .restart local p3
    :try_start_32
    aput-object v4, p1, v0
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_57

    .line 381
    :goto_34
    add-int/lit8 v2, v2, -0x1

    move v0, p3

    .end local p3
    .restart local v0       #enumerationIndex:I
    goto :goto_12

    .line 390
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_38
    :try_start_38
    monitor-exit v6
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_90

    move p3, v0

    .line 402
    .end local v0           #enumerationIndex:I
    .restart local p3
    :goto_3a
    if-eqz p2, :cond_88

    .line 403
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v5

    .line 404
    :try_start_3f
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 405
    .local v1, group:Ljava/lang/ThreadGroup;
    array-length v6, p1

    if-lt p3, v6, :cond_82

    .line 406
    monitor-exit v5
    :try_end_55
    .catchall {:try_start_3f .. :try_end_55} :catchall_8a

    move v0, p3

    .end local p3
    .restart local v0       #enumerationIndex:I
    goto :goto_2f

    .line 390
    .end local v0           #enumerationIndex:I
    .end local v1           #group:Ljava/lang/ThreadGroup;
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .restart local p3
    :catchall_57
    move-exception v5

    :goto_58
    :try_start_58
    monitor-exit v6
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v5

    .line 392
    :cond_5a
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v5

    .line 393
    :try_start_5d
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_7f

    move-result v6

    sub-int v2, v6, v7

    .restart local v2       #i:I
    move v0, p3

    .end local p3
    .restart local v0       #enumerationIndex:I
    :goto_66
    if-ltz v2, :cond_7c

    .line 394
    :try_start_68
    array-length v6, p1

    if-lt v0, v6, :cond_6e

    .line 395
    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_8d

    move p3, v0

    .end local v0           #enumerationIndex:I
    .restart local p3
    goto :goto_2f

    .line 397
    .end local p3
    .restart local v0       #enumerationIndex:I
    :cond_6e
    add-int/lit8 p3, v0, 0x1

    .end local v0           #enumerationIndex:I
    .restart local p3
    :try_start_70
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, p1, v0
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_7f

    .line 393
    add-int/lit8 v2, v2, -0x1

    move v0, p3

    .end local p3
    .restart local v0       #enumerationIndex:I
    goto :goto_66

    .line 399
    :cond_7c
    :try_start_7c
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_8d

    move p3, v0

    .end local v0           #enumerationIndex:I
    .restart local p3
    goto :goto_3a

    .end local v2           #i:I
    :catchall_7f
    move-exception v6

    :goto_80
    :try_start_80
    monitor-exit v5
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v6

    .line 408
    .restart local v1       #group:Ljava/lang/ThreadGroup;
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_82
    :try_start_82
    invoke-direct {v1, p1, p2, p3, p4}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result p3

    goto :goto_45

    .line 411
    .end local v1           #group:Ljava/lang/ThreadGroup;
    :cond_87
    monitor-exit v5

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_88
    move v0, p3

    .line 413
    .end local p3
    .restart local v0       #enumerationIndex:I
    goto :goto_2f

    .line 411
    .end local v0           #enumerationIndex:I
    .restart local p3
    :catchall_8a
    move-exception v6

    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_8a

    throw v6

    .line 399
    .end local p3
    .restart local v0       #enumerationIndex:I
    :catchall_8d
    move-exception v6

    move p3, v0

    .end local v0           #enumerationIndex:I
    .restart local p3
    goto :goto_80

    .line 390
    .end local p3
    .restart local v0       #enumerationIndex:I
    :catchall_90
    move-exception v5

    move p3, v0

    .end local v0           #enumerationIndex:I
    .restart local p3
    goto :goto_58

    .end local p3
    .restart local v0       #enumerationIndex:I
    .restart local v4       #thread:Ljava/lang/Thread;
    :cond_93
    move p3, v0

    .end local v0           #enumerationIndex:I
    .restart local p3
    goto :goto_34
.end method

.method private indent(I)V
    .registers 5
    .parameter "levels"

    .prologue
    .line 533
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_d

    .line 534
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 536
    :cond_d
    return-void
.end method

.method private list(I)V
    .registers 7
    .parameter "levels"

    .prologue
    .line 515
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->indent(I)V

    .line 516
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 518
    add-int/lit8 p1, p1, 0x1

    .line 519
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v3

    .line 520
    :try_start_11
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 521
    .local v2, thread:Ljava/lang/Thread;
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->indent(I)V

    .line 522
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_17

    .line 524
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #thread:Ljava/lang/Thread;
    :catchall_2c
    move-exception v4

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2c

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2f
    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    .line 525
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v3

    .line 526
    :try_start_33
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    .line 527
    .local v0, group:Ljava/lang/ThreadGroup;
    invoke-direct {v0, p1}, Ljava/lang/ThreadGroup;->list(I)V

    goto :goto_39

    .line 529
    .end local v0           #group:Ljava/lang/ThreadGroup;
    :catchall_49
    move-exception v4

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_49

    throw v4

    :cond_4c
    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 530
    return-void
.end method

.method private remove(Ljava/lang/ThreadGroup;)V
    .registers 6
    .parameter "g"

    .prologue
    .line 584
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v2

    .line 585
    :try_start_3
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ThreadGroup;>;"
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 586
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 587
    .local v1, threadGroup:Ljava/lang/ThreadGroup;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 588
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 592
    .end local v1           #threadGroup:Ljava/lang/ThreadGroup;
    :cond_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    .line 593
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->destroyIfEmptyDaemon()V

    .line 594
    return-void

    .line 592
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ThreadGroup;>;"
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v3
.end method

.method private stopHelper()Z
    .registers 8

    .prologue
    .line 697
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 699
    const/4 v3, 0x0

    .line 700
    .local v3, stopCurrent:Z
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v5

    .line 701
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 702
    .local v0, current:Ljava/lang/Thread;
    iget-object v6, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 703
    .local v4, thread:Ljava/lang/Thread;
    if-ne v4, v0, :cond_21

    .line 704
    const/4 v3, 0x1

    goto :goto_11

    .line 706
    :cond_21
    invoke-virtual {v4}, Ljava/lang/Thread;->stop()V

    goto :goto_11

    .line 709
    .end local v0           #current:Ljava/lang/Thread;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #thread:Ljava/lang/Thread;
    :catchall_25
    move-exception v6

    monitor-exit v5
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v6

    .restart local v0       #current:Ljava/lang/Thread;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_28
    :try_start_28
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    .line 710
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v5

    .line 711
    :try_start_2c
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 712
    .local v1, group:Ljava/lang/ThreadGroup;
    invoke-direct {v1}, Ljava/lang/ThreadGroup;->stopHelper()Z

    move-result v6

    or-int/2addr v3, v6

    goto :goto_32

    .line 714
    .end local v1           #group:Ljava/lang/ThreadGroup;
    :cond_44
    monitor-exit v5

    .line 715
    return v3

    .line 714
    :catchall_46
    move-exception v6

    monitor-exit v5
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_46

    throw v6
.end method

.method private suspendHelper()Z
    .registers 8

    .prologue
    .line 740
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 742
    const/4 v3, 0x0

    .line 743
    .local v3, suspendCurrent:Z
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v5

    .line 744
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 745
    .local v0, current:Ljava/lang/Thread;
    iget-object v6, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 746
    .local v4, thread:Ljava/lang/Thread;
    if-ne v4, v0, :cond_21

    .line 747
    const/4 v3, 0x1

    goto :goto_11

    .line 749
    :cond_21
    invoke-virtual {v4}, Ljava/lang/Thread;->suspend()V

    goto :goto_11

    .line 752
    .end local v0           #current:Ljava/lang/Thread;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #thread:Ljava/lang/Thread;
    :catchall_25
    move-exception v6

    monitor-exit v5
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v6

    .restart local v0       #current:Ljava/lang/Thread;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_28
    :try_start_28
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    .line 753
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v5

    .line 754
    :try_start_2c
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 755
    .local v1, group:Ljava/lang/ThreadGroup;
    invoke-direct {v1}, Ljava/lang/ThreadGroup;->suspendHelper()Z

    move-result v6

    or-int/2addr v3, v6

    goto :goto_32

    .line 757
    .end local v1           #group:Ljava/lang/ThreadGroup;
    :cond_44
    monitor-exit v5

    .line 758
    return v3

    .line 757
    :catchall_46
    move-exception v6

    monitor-exit v5
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_46

    throw v6
.end method


# virtual methods
.method public activeCount()I
    .registers 7

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, count:I
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v4

    .line 134
    :try_start_4
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    .line 135
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 139
    .end local v3           #thread:Ljava/lang/Thread;
    :cond_1f
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_3b

    .line 140
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    .line 141
    :try_start_23
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 142
    .local v1, group:Ljava/lang/ThreadGroup;
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeCount()I
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_40

    move-result v5

    add-int/2addr v0, v5

    goto :goto_29

    .line 139
    .end local v1           #group:Ljava/lang/ThreadGroup;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_3b
    move-exception v5

    :try_start_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v5

    .line 144
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3e
    :try_start_3e
    monitor-exit v4

    .line 145
    return v0

    .line 144
    :catchall_40
    move-exception v5

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_40

    throw v5
.end method

.method public activeGroupCount()I
    .registers 6

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, count:I
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v3

    .line 157
    :try_start_4
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 159
    .local v1, group:Ljava/lang/ThreadGroup;
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    goto :goto_a

    .line 161
    .end local v1           #group:Ljava/lang/ThreadGroup;
    :cond_1e
    monitor-exit v3

    .line 162
    return v0

    .line 161
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_20
    move-exception v4

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v4
.end method

.method final add(Ljava/lang/Thread;)V
    .registers 5
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v0

    .line 176
    :try_start_3
    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-eqz v1, :cond_10

    .line 177
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v1}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v1

    .line 180
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1

    .line 179
    :cond_10
    :try_start_10
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_d

    .line 181
    return-void
.end method

.method addThread(Ljava/lang/Thread;)V
    .registers 2
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-virtual {p0, p1}, Ljava/lang/ThreadGroup;->add(Ljava/lang/Thread;)V

    .line 802
    return-void
.end method

.method public allowThreadSuspension(Z)Z
    .registers 3
    .parameter "b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public final checkAccess()V
    .registers 2

    .prologue
    .line 221
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 222
    .local v0, currentManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/ThreadGroup;)V

    .line 225
    :cond_9
    return-void
.end method

.method public final destroy()V
    .registers 6

    .prologue
    .line 240
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 242
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v1

    .line 243
    :try_start_6
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_2f

    .line 244
    :try_start_9
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-eqz v0, :cond_35

    .line 245
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread group was already destroyed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    if-eqz v4, :cond_32

    iget-object v4, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    :goto_20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0

    .line 269
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2f

    throw v0

    .line 245
    :cond_32
    :try_start_32
    const-string v4, "n/a"

    goto :goto_20

    .line 249
    :cond_35
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 250
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread group still contains threads: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    if-eqz v4, :cond_60

    iget-object v4, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    :goto_54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    const-string v4, "n/a"

    goto :goto_54

    .line 255
    :cond_63
    :goto_63
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    .line 259
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->destroy()V

    goto :goto_63

    .line 262
    :cond_78
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_81

    .line 263
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-direct {v0, p0}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/ThreadGroup;)V

    .line 267
    :cond_81
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    .line 268
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_32 .. :try_end_85} :catchall_2c

    .line 269
    :try_start_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_2f

    .line 270
    return-void
.end method

.method public enumerate([Ljava/lang/Thread;)I
    .registers 3
    .parameter "threads"

    .prologue
    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/Thread;Z)I
    .registers 5
    .parameter "threads"
    .parameter "recurse"

    .prologue
    .line 322
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;)I
    .registers 3
    .parameter "groups"

    .prologue
    .line 337
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;Z)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;Z)I
    .registers 4
    .parameter "groups"
    .parameter "recurse"

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-direct {p0, p1, p2, v0, v0}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result v0

    return v0
.end method

.method public final getMaxPriority()I
    .registers 2

    .prologue
    .line 424
    iget v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Ljava/lang/ThreadGroup;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_9

    .line 444
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 446
    :cond_9
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public final interrupt()V
    .registers 6

    .prologue
    .line 459
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 460
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v3

    .line 461
    :try_start_6
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 462
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_c

    .line 464
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #thread:Ljava/lang/Thread;
    :catchall_1c
    move-exception v4

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1f
    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1c

    .line 465
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v3

    .line 466
    :try_start_23
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    .line 467
    .local v0, group:Ljava/lang/ThreadGroup;
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->interrupt()V

    goto :goto_29

    .line 469
    .end local v0           #group:Ljava/lang/ThreadGroup;
    :catchall_39
    move-exception v4

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_39

    throw v4

    :cond_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 470
    return-void
.end method

.method public final isDaemon()Z
    .registers 2

    .prologue
    .line 481
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    return v0
.end method

.method public declared-synchronized isDestroyed()Z
    .registers 2

    .prologue
    .line 491
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public list()V
    .registers 2

    .prologue
    .line 502
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->list(I)V

    .line 504
    return-void
.end method

.method public final parentOf(Ljava/lang/ThreadGroup;)Z
    .registers 3
    .parameter "g"

    .prologue
    .line 546
    :goto_0
    if-eqz p1, :cond_9

    .line 547
    if-ne p0, p1, :cond_6

    .line 548
    const/4 v0, 0x1

    .line 552
    :goto_5
    return v0

    .line 550
    :cond_6
    iget-object p1, p1, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    goto :goto_0

    .line 552
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final remove(Ljava/lang/Thread;)V
    .registers 5
    .parameter "thread"

    .prologue
    .line 564
    iget-object v2, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v2

    .line 565
    :try_start_3
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Thread;>;"
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 566
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 567
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 571
    :cond_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    .line 572
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->destroyIfEmptyDaemon()V

    .line 573
    return-void

    .line 571
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Thread;>;"
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method removeThread(Ljava/lang/Thread;)V
    .registers 2
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-virtual {p0, p1}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/Thread;)V

    .line 817
    return-void
.end method

.method public final resume()V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 612
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v3

    .line 613
    :try_start_6
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 614
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->resume()V

    goto :goto_c

    .line 616
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #thread:Ljava/lang/Thread;
    :catchall_1c
    move-exception v4

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1f
    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1c

    .line 617
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v3

    .line 618
    :try_start_23
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    .line 619
    .local v0, group:Ljava/lang/ThreadGroup;
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->resume()V

    goto :goto_29

    .line 621
    .end local v0           #group:Ljava/lang/ThreadGroup;
    :catchall_39
    move-exception v4

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_39

    throw v4

    :cond_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 622
    return-void
.end method

.method public final setDaemon(Z)V
    .registers 2
    .parameter "isDaemon"

    .prologue
    .line 636
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 637
    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    .line 638
    return-void
.end method

.method public final setMaxPriority(I)V
    .registers 7
    .parameter "newMax"

    .prologue
    .line 658
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 660
    iget v3, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    if-gt p1, v3, :cond_3c

    .line 661
    const/4 v3, 0x1

    if-ge p1, v3, :cond_b

    .line 662
    const/4 p1, 0x1

    .line 665
    :cond_b
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-nez v3, :cond_31

    move v2, p1

    .line 666
    .local v2, parentPriority:I
    :goto_10
    if-gt v2, p1, :cond_39

    move v3, v2

    :goto_13
    iput v3, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 667
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v3

    .line 668
    :try_start_18
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    .line 669
    .local v0, group:Ljava/lang/ThreadGroup;
    invoke-virtual {v0, p1}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    goto :goto_1e

    .line 671
    .end local v0           #group:Ljava/lang/ThreadGroup;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_2e
    move-exception v4

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_2e

    throw v4

    .line 665
    .end local v2           #parentPriority:I
    :cond_31
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v3

    move v2, v3

    goto :goto_10

    .restart local v2       #parentPriority:I
    :cond_39
    move v3, p1

    .line 666
    goto :goto_13

    .line 671
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2e

    .line 673
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #parentPriority:I
    :cond_3c
    return-void
.end method

.method public final stop()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->stopHelper()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 691
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 693
    :cond_d
    return-void
.end method

.method public final suspend()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->suspendHelper()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 734
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->suspend()V

    .line 736
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "t"
    .parameter "e"

    .prologue
    .line 778
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_a

    .line 779
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p1, p2}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 787
    :cond_9
    :goto_9
    return-void

    .line 780
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 782
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 783
    :cond_18
    instance-of v0, p2, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_9

    .line 785
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_9
.end method
