.class public Ljava/util/concurrent/PriorityBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/PriorityBlockingQueue$Itr;
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
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0xb

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final UNSAFE:Lsun/misc/Unsafe; = null

#the value of this static final field might be set in the static constructor
.field private static final allocationSpinLockOffset:J = 0x0L

.field private static final serialVersionUID:J = 0x4da73f88e6712814L


# instance fields
.field private volatile transient allocationSpinLock:I

.field private transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private q:Ljava/util/PriorityQueue;

.field private transient queue:[Ljava/lang/Object;

.field private transient size:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 936
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/PriorityBlockingQueue;->UNSAFE:Lsun/misc/Unsafe;

    .line 937
    sget-object v0, Ljava/util/concurrent/PriorityBlockingQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "allocationSpinLock"

    const-class v2, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLockOffset:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 150
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 151
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "initialCapacity"

    .prologue
    .line 163
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 164
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .registers 4
    .parameter "initialCapacity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 180
    const/4 v0, 0x1

    if-ge p1, v0, :cond_c

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 182
    :cond_c
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 183
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 184
    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 185
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 205
    new-instance v8, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v8}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v8, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 206
    iget-object v8, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v8

    iput-object v8, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 207
    const/4 v2, 0x1

    .line 208
    .local v2, heapify:Z
    const/4 v6, 0x1

    .line 209
    .local v6, screen:Z
    instance-of v8, p1, Ljava/util/SortedSet;

    if-eqz v8, :cond_4c

    .line 210
    move-object v0, p1

    check-cast v0, Ljava/util/SortedSet;

    move-object v7, v0

    .line 211
    .local v7, ss:Ljava/util/SortedSet;,"Ljava/util/SortedSet<+TE;>;"
    invoke-interface {v7}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v8

    iput-object v8, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 212
    const/4 v2, 0x0

    .line 222
    .end local v7           #ss:Ljava/util/SortedSet;,"Ljava/util/SortedSet<+TE;>;"
    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 223
    .local v1, a:[Ljava/lang/Object;
    array-length v4, v1

    .line 225
    .local v4, n:I
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, [Ljava/lang/Object;

    if-eq v8, v9, :cond_36

    .line 226
    const-class v8, [Ljava/lang/Object;

    invoke-static {v1, v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 227
    :cond_36
    if-eqz v6, :cond_68

    const/4 v8, 0x1

    if-eq v4, v8, :cond_3f

    iget-object v8, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    if-eqz v8, :cond_68

    .line 228
    :cond_3f
    const/4 v3, 0x0

    .local v3, i:I
    :goto_40
    if-ge v3, v4, :cond_68

    .line 229
    aget-object v8, v1, v3

    if-nez v8, :cond_65

    .line 230
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 214
    .end local v1           #a:[Ljava/lang/Object;
    .end local v3           #i:I
    .end local v4           #n:I
    :cond_4c
    instance-of v8, p1, Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v8, :cond_23

    .line 215
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/PriorityBlockingQueue;

    move-object v5, v0

    .line 217
    .local v5, pq:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<+TE;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/PriorityBlockingQueue;->comparator()Ljava/util/Comparator;

    move-result-object v8

    iput-object v8, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 218
    const/4 v6, 0x0

    .line 219
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/util/concurrent/PriorityBlockingQueue;

    if-ne v8, v9, :cond_23

    .line 220
    const/4 v2, 0x0

    goto :goto_23

    .line 228
    .end local v5           #pq:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<+TE;>;"
    .restart local v1       #a:[Ljava/lang/Object;
    .restart local v3       #i:I
    .restart local v4       #n:I
    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 232
    .end local v3           #i:I
    :cond_68
    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 233
    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 234
    if-eqz v2, :cond_71

    .line 235
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->heapify()V

    .line 236
    :cond_71
    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->removeEQ(Ljava/lang/Object;)V

    return-void
.end method

.method private extract()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v7, 0x0

    .line 283
    iget v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .line 284
    .local v2, n:I
    if-gez v2, :cond_a

    .line 285
    const/4 v3, 0x0

    .line 298
    :goto_9
    return-object v3

    .line 287
    :cond_a
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 288
    .local v0, array:[Ljava/lang/Object;
    aget-object v3, v0, v7

    .line 289
    .local v3, result:Ljava/lang/Object;,"TE;"
    aget-object v4, v0, v2

    .line 290
    .local v4, x:Ljava/lang/Object;,"TE;"
    const/4 v5, 0x0

    aput-object v5, v0, v2

    .line 291
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 292
    .local v1, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_1d

    .line 293
    invoke-static {v7, v4, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    .line 296
    :goto_1a
    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    goto :goto_9

    .line 295
    :cond_1d
    invoke-static {v7, v4, v0, v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    goto :goto_1a
.end method

.method private heapify()V
    .registers 8

    .prologue
    .line 394
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 395
    .local v0, array:[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 396
    .local v4, n:I
    ushr-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .line 397
    .local v2, half:I
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 398
    .local v1, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_18

    .line 399
    move v3, v2

    .local v3, i:I
    :goto_e
    if-ltz v3, :cond_23

    .line 400
    aget-object v5, v0, v3

    invoke-static {v3, v5, v0, v4}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    .line 399
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 403
    .end local v3           #i:I
    :cond_18
    move v3, v2

    .restart local v3       #i:I
    :goto_19
    if-ltz v3, :cond_23

    .line 404
    aget-object v5, v0, v3

    invoke-static {v3, v5, v0, v4, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 403
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 406
    :cond_23
    return-void
.end method

.method private indexOf(Ljava/lang/Object;)I
    .registers 6
    .parameter "o"

    .prologue
    .line 573
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    if-eqz p1, :cond_16

    .line 574
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 575
    .local v0, array:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 576
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_16

    .line 577
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v1

    .line 580
    .end local v0           #array:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #n:I
    :goto_12
    return v3

    .line 576
    .restart local v0       #array:[Ljava/lang/Object;
    .restart local v1       #i:I
    .restart local v2       #n:I
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 580
    .end local v0           #array:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_16
    const/4 v3, -0x1

    goto :goto_12
.end method

.method static objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J
    .registers 7
    .parameter "UNSAFE"
    .parameter "field"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/misc/Unsafe;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 944
    .local p2, klazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v2

    return-wide v2

    .line 945
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 947
    .local v0, e:Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/NoSuchFieldError;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    .line 948
    .local v1, error:Ljava/lang/NoSuchFieldError;
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchFieldError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 949
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v1, 0x0

    .line 926
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 927
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 928
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 929
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    .line 931
    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 933
    return-void

    .line 931
    :catchall_1e
    move-exception v0

    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    throw v0
.end method

.method private removeAt(I)V
    .registers 9
    .parameter "i"

    .prologue
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v6, 0x0

    .line 587
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 588
    .local v0, array:[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .line 589
    .local v3, n:I
    if-ne v3, p1, :cond_f

    .line 590
    aput-object v6, v0, p1

    .line 606
    :cond_c
    :goto_c
    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 607
    return-void

    .line 592
    :cond_f
    aget-object v2, v0, v3

    .line 593
    .local v2, moved:Ljava/lang/Object;,"TE;"
    aput-object v6, v0, v3

    .line 594
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 595
    .local v1, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_24

    .line 596
    invoke-static {p1, v2, v0, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    .line 599
    :goto_1a
    aget-object v4, v0, p1

    if-ne v4, v2, :cond_c

    .line 600
    if-nez v1, :cond_28

    .line 601
    invoke-static {p1, v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_c

    .line 598
    :cond_24
    invoke-static {p1, v2, v0, v3, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    goto :goto_1a

    .line 603
    :cond_28
    invoke-static {p1, v2, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_c
.end method

.method private removeEQ(Ljava/lang/Object;)V
    .registers 7
    .parameter "o"

    .prologue
    .line 641
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 642
    .local v2, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 644
    :try_start_5
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 645
    .local v0, array:[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 646
    .local v3, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v3, :cond_13

    .line 647
    aget-object v4, v0, v1

    if-ne p1, v4, :cond_17

    .line 648
    invoke-direct {p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAt(I)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1a

    .line 653
    :cond_13
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 655
    return-void

    .line 646
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 653
    .end local v0           #array:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v3           #n:I
    :catchall_1a
    move-exception v4

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method private static siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V
    .registers 12
    .parameter "k"
    .parameter
    .parameter "array"
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, x:Ljava/lang/Object;,"TT;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v4, v0

    .line 355
    .local v4, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TT;>;"
    ushr-int/lit8 v3, p3, 0x1

    .line 356
    .local v3, half:I
    :goto_6
    if-ge p0, v3, :cond_27

    .line 357
    shl-int/lit8 v6, p0, 0x1

    add-int/lit8 v2, v6, 0x1

    .line 358
    .local v2, child:I
    aget-object v1, p2, v2

    .line 359
    .local v1, c:Ljava/lang/Object;
    add-int/lit8 v5, v2, 0x1

    .line 360
    .local v5, right:I
    if-ge v5, p3, :cond_21

    move-object v0, v1

    check-cast v0, Ljava/lang/Comparable;

    move-object v6, v0

    aget-object v7, p2, v5

    invoke-interface {v6, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_21

    .line 362
    move v2, v5

    aget-object v1, p2, v5

    .line 363
    :cond_21
    invoke-interface {v4, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gtz v6, :cond_2a

    .line 368
    .end local v1           #c:Ljava/lang/Object;
    .end local v2           #child:I
    .end local v5           #right:I
    :cond_27
    aput-object v4, p2, p0

    .line 369
    return-void

    .line 365
    .restart local v1       #c:Ljava/lang/Object;
    .restart local v2       #child:I
    .restart local v5       #right:I
    :cond_2a
    aput-object v1, p2, p0

    .line 366
    move p0, v2

    .line 367
    goto :goto_6
.end method

.method private static siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V
    .registers 10
    .parameter "k"
    .parameter
    .parameter "array"
    .parameter "n"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, x:Ljava/lang/Object;,"TT;"
    .local p4, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    ushr-int/lit8 v2, p3, 0x1

    .line 375
    .local v2, half:I
    :goto_2
    if-ge p0, v2, :cond_1f

    .line 376
    shl-int/lit8 v4, p0, 0x1

    add-int/lit8 v1, v4, 0x1

    .line 377
    .local v1, child:I
    aget-object v0, p2, v1

    .line 378
    .local v0, c:Ljava/lang/Object;
    add-int/lit8 v3, v1, 0x1

    .line 379
    .local v3, right:I
    if-ge v3, p3, :cond_19

    aget-object v4, p2, v3

    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_19

    .line 380
    move v1, v3

    aget-object v0, p2, v3

    .line 381
    :cond_19
    invoke-interface {p4, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_22

    .line 386
    .end local v0           #c:Ljava/lang/Object;
    .end local v1           #child:I
    .end local v3           #right:I
    :cond_1f
    aput-object p1, p2, p0

    .line 387
    return-void

    .line 383
    .restart local v0       #c:Ljava/lang/Object;
    .restart local v1       #child:I
    .restart local v3       #right:I
    :cond_22
    aput-object v0, p2, p0

    .line 384
    move p0, v1

    .line 385
    goto :goto_2
.end method

.method private static siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V
    .registers 8
    .parameter "k"
    .parameter
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, x:Ljava/lang/Object;,"TT;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v2, v0

    .line 318
    .local v2, key:Ljava/lang/Comparable;,"Ljava/lang/Comparable<-TT;>;"
    :goto_4
    if-lez p0, :cond_13

    .line 319
    const/4 v4, 0x1

    sub-int v4, p0, v4

    ushr-int/lit8 v3, v4, 0x1

    .line 320
    .local v3, parent:I
    aget-object v1, p2, v3

    .line 321
    .local v1, e:Ljava/lang/Object;
    invoke-interface {v2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_16

    .line 326
    .end local v1           #e:Ljava/lang/Object;
    .end local v3           #parent:I
    :cond_13
    aput-object v2, p2, p0

    .line 327
    return-void

    .line 323
    .restart local v1       #e:Ljava/lang/Object;
    .restart local v3       #parent:I
    :cond_16
    aput-object v1, p2, p0

    .line 324
    move p0, v3

    .line 325
    goto :goto_4
.end method

.method private static siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 7
    .parameter "k"
    .parameter
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, x:Ljava/lang/Object;,"TT;"
    .local p3, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    :goto_0
    if-lez p0, :cond_f

    .line 332
    const/4 v2, 0x1

    sub-int v2, p0, v2

    ushr-int/lit8 v1, v2, 0x1

    .line 333
    .local v1, parent:I
    aget-object v0, p2, v1

    .line 334
    .local v0, e:Ljava/lang/Object;
    invoke-interface {p3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_12

    .line 339
    .end local v0           #e:Ljava/lang/Object;
    .end local v1           #parent:I
    :cond_f
    aput-object p1, p2, p0

    .line 340
    return-void

    .line 336
    .restart local v0       #e:Ljava/lang/Object;
    .restart local v1       #parent:I
    :cond_12
    aput-object v0, p2, p0

    .line 337
    move p0, v1

    .line 338
    goto :goto_0
.end method

.method private tryGrow([Ljava/lang/Object;I)V
    .registers 13
    .parameter "array"
    .parameter "oldCap"

    .prologue
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const v9, 0x7ffffff7

    const/4 v4, 0x0

    .line 248
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 249
    const/4 v7, 0x0

    .line 250
    .local v7, newArray:[Ljava/lang/Object;
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    if-nez v0, :cond_46

    sget-object v0, Ljava/util/concurrent/PriorityBlockingQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLockOffset:J

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 254
    const/16 v0, 0x40

    if-ge p2, v0, :cond_36

    add-int/lit8 v0, p2, 0x2

    :goto_20
    add-int v8, p2, v0

    .line 257
    .local v8, newCap:I
    sub-int v0, v8, v9

    if-lez v0, :cond_3c

    .line 258
    add-int/lit8 v6, p2, 0x1

    .line 259
    .local v6, minCap:I
    if-ltz v6, :cond_2c

    if-le v6, v9, :cond_39

    .line 260
    :cond_2c
    :try_start_2c
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_32

    .line 266
    .end local v6           #minCap:I
    :catchall_32
    move-exception v0

    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    throw v0

    .line 254
    .end local v8           #newCap:I
    :cond_36
    shr-int/lit8 v0, p2, 0x1

    goto :goto_20

    .line 261
    .restart local v6       #minCap:I
    .restart local v8       #newCap:I
    :cond_39
    const v8, 0x7ffffff7

    .line 263
    .end local v6           #minCap:I
    :cond_3c
    if-le v8, p2, :cond_44

    :try_start_3e
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    if-ne v0, p1, :cond_44

    .line 264
    new-array v7, v8, [Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_32

    .line 266
    :cond_44
    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    .line 269
    .end local v8           #newCap:I
    :cond_46
    if-nez v7, :cond_4b

    .line 270
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 271
    :cond_4b
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 272
    if-eqz v7, :cond_5b

    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    if-ne v0, p1, :cond_5b

    .line 273
    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 274
    invoke-static {p1, v4, v7, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    :cond_5b
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v4, 0x0

    .line 905
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 907
    :try_start_6
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 908
    .local v0, n:I
    new-instance v1, Ljava/util/PriorityQueue;

    if-nez v0, :cond_24

    const/4 v2, 0x1

    :goto_d
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 909
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 910
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_26

    .line 912
    iput-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 913
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 915
    return-void

    :cond_24
    move v2, v0

    .line 908
    goto :goto_d

    .line 912
    .end local v0           #n:I
    :catchall_26
    move-exception v1

    iput-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 913
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
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
    .line 419
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 6

    .prologue
    .line 781
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 782
    .local v2, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 784
    :try_start_5
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 785
    .local v0, array:[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 786
    .local v3, n:I
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 787
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v3, :cond_15

    .line 788
    const/4 v4, 0x0

    aput-object v4, v0, v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_19

    .line 787
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 790
    :cond_15
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 792
    return-void

    .line 790
    .end local v0           #array:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v3           #n:I
    :catchall_19
    move-exception v4

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 667
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 668
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 670
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->indexOf(Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_11

    move-result v0

    .line 672
    .local v0, index:I
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 674
    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    const/4 v2, 0x1

    :goto_10
    return v2

    .line 672
    .end local v0           #index:I
    :catchall_11
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 674
    .restart local v0       #index:I
    :cond_16
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 729
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 730
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 731
    :cond_8
    if-ne p1, p0, :cond_10

    .line 732
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 733
    :cond_10
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 734
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 736
    const/4 v2, 0x0

    .line 738
    .local v2, n:I
    :goto_16
    :try_start_16
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->extract()Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_22

    .line 739
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_26

    .line 740
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 744
    :cond_22
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :catchall_26
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 7
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
    .line 755
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 756
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 757
    :cond_8
    if-ne p1, p0, :cond_10

    .line 758
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 759
    :cond_10
    if-gtz p2, :cond_14

    .line 760
    const/4 v3, 0x0

    .line 772
    :goto_13
    return v3

    .line 761
    :cond_14
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 762
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 764
    const/4 v2, 0x0

    .line 766
    .local v2, n:I
    :goto_1a
    if-ge v2, p2, :cond_28

    :try_start_1c
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->extract()Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_28

    .line 767
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_2d

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 772
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :cond_28
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v2

    goto :goto_13

    :catchall_2d
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;

    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue$Itr;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    .line 435
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 436
    :cond_8
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 437
    .local v3, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 440
    :goto_d
    iget v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .local v4, n:I
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .local v0, array:[Ljava/lang/Object;
    array-length v1, v0

    .local v1, cap:I
    if-lt v4, v1, :cond_18

    .line 441
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->tryGrow([Ljava/lang/Object;I)V

    goto :goto_d

    .line 443
    :cond_18
    :try_start_18
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 444
    .local v2, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    if-nez v2, :cond_2d

    .line 445
    invoke-static {v4, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V

    .line 448
    :goto_1f
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 449
    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_31

    .line 451
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 453
    const/4 v5, 0x1

    return v5

    .line 447
    :cond_2d
    :try_start_2d
    invoke-static {v4, p1, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_1f

    .line 451
    .end local v2           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    :catchall_31
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
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

    .prologue
    .line 486
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 530
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 533
    :try_start_5
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    if-lez v2, :cond_13

    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    move-object v1, v2

    .line 535
    .local v1, result:Ljava/lang/Object;,"TE;"
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 537
    return-object v1

    .line 533
    .end local v1           #result:Ljava/lang/Object;,"TE;"
    :cond_13
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_f

    .line 535
    :catchall_16
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public poll()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 491
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 494
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->extract()Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-object v1

    .line 496
    .local v1, result:Ljava/lang/Object;,"TE;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 498
    return-object v1

    .line 496
    .end local v1           #result:Ljava/lang/Object;,"TE;"
    :catchall_d
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 10
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
    .line 515
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 516
    .local v1, nanos:J
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 517
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 520
    :goto_9
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->extract()Ljava/lang/Object;

    move-result-object v3

    .local v3, result:Ljava/lang/Object;,"TE;"
    if-nez v3, :cond_1c

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_1c

    .line 521
    iget-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_20

    move-result-wide v1

    goto :goto_9

    .line 523
    :cond_1c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 525
    return-object v3

    .line 523
    .end local v3           #result:Ljava/lang/Object;,"TE;"
    :catchall_20
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public put(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method public remainingCapacity()I
    .registers 2

    .prologue
    .line 569
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 621
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v2, 0x0

    .line 622
    .local v2, removed:Z
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 623
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 625
    :try_start_6
    invoke-direct {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 626
    .local v0, i:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_11

    .line 627
    invoke-direct {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAt(I)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_15

    .line 628
    const/4 v2, 0x1

    .line 631
    :cond_11
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 633
    return v2

    .line 631
    .end local v0           #i:I
    :catchall_15
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public size()I
    .registers 3

    .prologue
    .line 554
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 555
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 557
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 559
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public take()Ljava/lang/Object;
    .registers 4
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
    .line 502
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 503
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 506
    :goto_5
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->extract()Ljava/lang/Object;

    move-result-object v1

    .local v1, result:Ljava/lang/Object;,"TE;"
    if-nez v1, :cond_16

    .line 507
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 509
    .end local v1           #result:Ljava/lang/Object;,"TE;"
    :catchall_11
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #result:Ljava/lang/Object;,"TE;"
    :cond_16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 511
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 691
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 692
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 694
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_11

    move-result-object v1

    .line 696
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_11
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 832
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 833
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 835
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 836
    .local v1, n:I
    array-length v2, p1

    if-ge v2, v1, :cond_1d

    .line 838
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    check-cast p0, [Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_2f

    .line 844
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v2, p0

    :goto_1c
    return-object v2

    .line 839
    .restart local p0       #this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 840
    array-length v2, p1

    if-le v2, v1, :cond_2a

    .line 841
    const/4 v2, 0x0

    aput-object v2, p1, v1
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2f

    .line 844
    :cond_2a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v2, p1

    goto :goto_1c

    .end local v1           #n:I
    .end local p0           #this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    :catchall_2f
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 702
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 703
    .local v2, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 705
    :try_start_5
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 706
    .local v3, n:I
    if-nez v3, :cond_f

    .line 707
    const-string v5, "[]"
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_4a

    .line 718
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_e
    return-object v5

    .line 708
    :cond_f
    :try_start_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    .local v4, sb:Ljava/lang/StringBuilder;
    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    if-ge v1, v3, :cond_3c

    .line 711
    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v5, v1

    .line 712
    .local v0, e:Ljava/lang/Object;,"TE;"
    if-ne v0, p0, :cond_3a

    const-string v5, "(this Collection)"

    :goto_24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 713
    const/4 v5, 0x1

    sub-int v5, v3, v5

    if-eq v1, v5, :cond_37

    .line 714
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_3a
    move-object v5, v0

    .line 712
    goto :goto_24

    .line 716
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :cond_3c
    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_f .. :try_end_45} :catchall_4a

    move-result-object v5

    .line 718
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_e

    .end local v1           #i:I
    .end local v3           #n:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :catchall_4a
    move-exception v5

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method
