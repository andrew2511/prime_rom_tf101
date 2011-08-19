.class public Ljava/util/concurrent/ArrayBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ArrayBlockingQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xb59ce4be1ef907aL


# instance fields
.field count:I

.field final items:[Ljava/lang/Object;

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field putIndex:I

.field takeIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 181
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 182
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .parameter "capacity"
    .parameter "fair"

    .prologue
    .line 194
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 195
    if-gtz p1, :cond_b

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 197
    :cond_b
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 199
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 200
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 201
    return-void
.end method

.method public constructor <init>(IZLjava/util/Collection;)V
    .registers 11
    .parameter "capacity"
    .parameter "fair"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p3, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 223
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 224
    .local v5, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 226
    const/4 v2, 0x0

    .line 228
    .local v2, i:I
    :try_start_9
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_c} :catch_23

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_e
    :try_start_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 229
    .local v0, e:Ljava/lang/Object;,"TE;"
    invoke-static {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_3d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_1d} :catch_40

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    :try_start_1f
    aput-object v0, v6, v3
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_2b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1f .. :try_end_21} :catch_23

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_e

    .line 232
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .restart local v2       #i:I
    :catch_23
    move-exception v6

    move-object v1, v6

    .line 233
    .local v1, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_25
    :try_start_25
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2b

    .line 238
    .end local v1           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_2b
    move-exception v6

    :goto_2c
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    .line 235
    .end local v2           #i:I
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_30
    :try_start_30
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 236
    if-ne v3, p1, :cond_3b

    const/4 v6, 0x0

    :goto_35
    iput v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3d

    .line 238
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 240
    return-void

    :cond_3b
    move v6, v3

    .line 236
    goto :goto_35

    .line 238
    :catchall_3d
    move-exception v6

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_2c

    .line 232
    .end local v2           #i:I
    .restart local v3       #i:I
    :catch_40
    move-exception v6

    move-object v1, v6

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_25
.end method

.method static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 99
    return-object p0
.end method

.method private static checkNotNull(Ljava/lang/Object;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 115
    if-nez p0, :cond_8

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 117
    :cond_8
    return-void
.end method

.method private extract()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 136
    .local v0, items:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 137
    .local v1, x:Ljava/lang/Object;,"TE;"
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 138
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v2

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 139
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 140
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 141
    return-object v1
.end method

.method private insert(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, x:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    aput-object p1, v0, v1

    .line 125
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 126
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 127
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 128
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-super {p0, p1}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 6

    .prologue
    .line 588
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 589
    .local v1, items:[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 590
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 592
    :try_start_7
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .local v0, i:I
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .local v2, k:I
    :goto_b
    if-lez v2, :cond_17

    .line 593
    const/4 v4, 0x0

    aput-object v4, v1, v0

    .line 592
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 594
    :cond_17
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 595
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 596
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 597
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_29

    .line 599
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 601
    return-void

    .line 599
    .end local v0           #i:I
    .end local v2           #k:I
    :catchall_29
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v5, 0x0

    .line 462
    if-nez p1, :cond_5

    move v4, v5

    .line 472
    :goto_4
    return v4

    .line 463
    :cond_5
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 464
    .local v1, items:[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 465
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 467
    :try_start_c
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .local v0, i:I
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .local v2, k:I
    :goto_10
    if-lez v2, :cond_26

    .line 468
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_2b

    move-result v4

    if-eqz v4, :cond_1f

    .line 469
    const/4 v4, 0x1

    .line 472
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    .line 467
    :cond_1f
    :try_start_1f
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2b

    move-result v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 472
    :cond_26
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v4, v5

    goto :goto_4

    .end local v0           #i:I
    .end local v2           #k:I
    :catchall_2b
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method final dec(I)I
    .registers 4
    .parameter "i"

    .prologue
    .line 94
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    if-nez p1, :cond_8

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    :goto_5
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0

    :cond_8
    move v0, p1

    goto :goto_5
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 610
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->checkNotNull(Ljava/lang/Object;)V

    .line 611
    if-ne p1, p0, :cond_b

    .line 612
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 613
    :cond_b
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 614
    .local v1, items:[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 615
    .local v2, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 617
    :try_start_12
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 618
    .local v0, i:I
    const/4 v4, 0x0

    .line 619
    .local v4, n:I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 620
    .local v3, max:I
    :goto_17
    if-ge v4, v3, :cond_2c

    .line 621
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 622
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 623
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    .line 624
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 626
    :cond_2c
    if-lez v4, :cond_3c

    .line 627
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 628
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 629
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 630
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3c
    .catchall {:try_start_12 .. :try_end_3c} :catchall_40

    .line 634
    :cond_3c
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    .end local v0           #i:I
    .end local v3           #max:I
    .end local v4           #n:I
    :catchall_40
    move-exception v5

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 9
    .parameter
    .parameter "maxElements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->checkNotNull(Ljava/lang/Object;)V

    .line 646
    if-ne p1, p0, :cond_b

    .line 647
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 648
    :cond_b
    if-gtz p2, :cond_f

    .line 649
    const/4 v5, 0x0

    .line 670
    :goto_e
    return v5

    .line 650
    :cond_f
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 651
    .local v1, items:[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 652
    .local v2, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 654
    :try_start_16
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 655
    .local v0, i:I
    const/4 v4, 0x0

    .line 656
    .local v4, n:I
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-ge p2, v5, :cond_33

    move v3, p2

    .line 657
    .local v3, max:I
    :goto_1e
    if-ge v4, v3, :cond_37

    .line 658
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 659
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 660
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v0

    .line 661
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 656
    .end local v3           #max:I
    :cond_33
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    move v3, v5

    goto :goto_1e

    .line 663
    .restart local v3       #max:I
    :cond_37
    if-lez v4, :cond_45

    .line 664
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    sub-int/2addr v5, v4

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 665
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 666
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_4a

    .line 670
    :cond_45
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v5, v4

    goto :goto_e

    .end local v0           #i:I
    .end local v3           #max:I
    .end local v4           #n:I
    :catchall_4a
    move-exception v5

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method final inc(I)I
    .registers 3
    .parameter "i"

    .prologue
    .line 87
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    if-ne p1, v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    move v0, p1

    goto :goto_8
.end method

.method final itemAt(I)Ljava/lang/Object;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->checkNotNull(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 269
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 271
    :try_start_8
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v2
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1c

    if-ne v1, v2, :cond_14

    .line 272
    const/4 v1, 0x0

    .line 278
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_13
    return v1

    .line 274
    :cond_14
    :try_start_14
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->insert(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1c

    .line 275
    const/4 v1, 0x1

    .line 278
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_13

    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 10
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 313
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->checkNotNull(Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 315
    .local v1, nanos:J
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 316
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 318
    :goto_c
    :try_start_c
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v4, v4
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_2d

    if-ne v3, v4, :cond_25

    .line 319
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1e

    .line 320
    const/4 v3, 0x0

    .line 326
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1d
    return v3

    .line 321
    :cond_1e
    :try_start_1e
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v1

    goto :goto_c

    .line 323
    :cond_25
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->insert(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2d

    .line 324
    const/4 v3, 0x1

    .line 326
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1d

    :catchall_2d
    move-exception v3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 370
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 372
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_15

    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 374
    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 372
    :cond_e
    :try_start_e
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_15

    move-result-object v1

    goto :goto_a

    .line 374
    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 332
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 334
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_13

    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 336
    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 334
    :cond_e
    :try_start_e
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->extract()Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    move-result-object v1

    goto :goto_a

    .line 336
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 9
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 353
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 354
    .local v1, nanos:J
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 355
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 357
    :goto_9
    :try_start_9
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_27

    if-nez v3, :cond_1f

    .line 358
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_18

    .line 359
    const/4 v3, 0x0

    .line 364
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_17
    return-object v3

    .line 360
    :cond_18
    :try_start_18
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v1

    goto :goto_9

    .line 362
    :cond_1f
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->extract()Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    move-result-object v3

    .line 364
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_17

    :catchall_27
    move-exception v3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public put(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 290
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->checkNotNull(Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 292
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 294
    :goto_8
    :try_start_8
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_1a

    .line 295
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_8

    .line 298
    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 296
    :cond_1a
    :try_start_1a
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->insert(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_15

    .line 298
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 300
    return-void
.end method

.method public remainingCapacity()I
    .registers 4

    .prologue
    .line 409
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 410
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 412
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    sub-int/2addr v1, v2

    .line 414
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v5, 0x0

    .line 436
    if-nez p1, :cond_5

    move v4, v5

    .line 449
    :goto_4
    return v4

    .line 437
    :cond_5
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 438
    .local v1, items:[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 439
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 441
    :try_start_c
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .local v0, i:I
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .local v2, k:I
    :goto_10
    if-lez v2, :cond_29

    .line 442
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 443
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_2e

    .line 444
    const/4 v4, 0x1

    .line 449
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    .line 441
    :cond_22
    :try_start_22
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2e

    move-result v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 449
    :cond_29
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v4, v5

    goto :goto_4

    .end local v0           #i:I
    .end local v2           #k:I
    :catchall_2e
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method removeAt(I)V
    .registers 6
    .parameter "i"

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v3, 0x0

    .line 150
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 152
    .local v0, items:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    if-ne p1, v2, :cond_1f

    .line 153
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aput-object v3, v0, v2

    .line 154
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v2

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 169
    :goto_13
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 170
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 171
    return-void

    .line 158
    :cond_1f
    :goto_1f
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v1

    .line 159
    .local v1, nexti:I
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-eq v1, v2, :cond_2d

    .line 160
    aget-object v2, v0, v1

    aput-object v2, v0, p1

    .line 161
    move p1, v1

    goto :goto_1f

    .line 163
    :cond_2d
    aput-object v3, v0, p1

    .line 164
    iput p1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    goto :goto_13
.end method

.method public size()I
    .registers 3

    .prologue
    .line 386
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 387
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 389
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 391
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public take()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 341
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 342
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 344
    :goto_5
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v1, :cond_14

    .line 345
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    goto :goto_5

    .line 348
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 346
    :cond_14
    :try_start_14
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->extract()Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_f

    move-result-object v1

    .line 348
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 8

    .prologue
    .line 490
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 491
    .local v3, items:[Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 492
    .local v5, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 494
    :try_start_7
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 495
    .local v1, count:I
    new-array v0, v1, [Ljava/lang/Object;

    .line 496
    .local v0, a:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .local v2, i:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_e
    if-ge v4, v1, :cond_1b

    .line 497
    aget-object v6, v3, v2

    aput-object v6, v0, v4

    .line 496
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1f

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 500
    :cond_1b
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0           #a:[Ljava/lang/Object;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #k:I
    :catchall_1f
    move-exception v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 542
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 543
    .local v3, items:[Ljava/lang/Object;
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 544
    .local v6, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 546
    :try_start_7
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 547
    .local v1, count:I
    array-length v5, p1

    .line 548
    .local v5, len:I
    if-ge v5, v1, :cond_1e

    .line 549
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 551
    :cond_1e
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .local v2, i:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_21
    if-ge v4, v1, :cond_2e

    .line 552
    aget-object v7, v3, v2

    aput-object v7, p1, v4

    .line 551
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 553
    :cond_2e
    if-le v5, v1, :cond_33

    .line 554
    const/4 v7, 0x0

    aput-object v7, p1, v1
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_37

    .line 557
    :cond_33
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #k:I
    .end local v5           #len:I
    :catchall_37
    move-exception v7

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 562
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 563
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 565
    :try_start_5
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 566
    .local v2, k:I
    if-nez v2, :cond_f

    .line 567
    const-string v5, "[]"
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_4a

    .line 579
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_e
    return-object v5

    .line 569
    :cond_f
    :try_start_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v4, sb:Ljava/lang/StringBuilder;
    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 572
    .local v1, i:I
    :goto_1b
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    aget-object v0, v5, v1

    .line 573
    .local v0, e:Ljava/lang/Object;
    if-ne v0, p0, :cond_38

    const-string v5, "(this Collection)"

    :goto_23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 574
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_3a

    .line 575
    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_4a

    move-result-object v5

    .line 579
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_e

    :cond_38
    move-object v5, v0

    .line 573
    goto :goto_23

    .line 576
    :cond_3a
    const/16 v5, 0x2c

    :try_start_3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_4a

    move-result v1

    goto :goto_1b

    .line 579
    .end local v0           #e:Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #k:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :catchall_4a
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method
