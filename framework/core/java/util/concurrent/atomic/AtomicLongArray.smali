.class public Ljava/util/concurrent/atomic/AtomicLongArray;
.super Ljava/lang/Object;
.source "AtomicLongArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final base:I = 0x0

.field private static final serialVersionUID:J = -0x200931f59d1d4008L

.field private static final shift:I

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final array:[J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    sget-object v1, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    .line 22
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    const-class v2, [J

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljava/util/concurrent/atomic/AtomicLongArray;->base:I

    .line 27
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    const-class v2, [J

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 28
    .local v0, scale:I
    const/4 v1, 0x1

    sub-int v1, v0, v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_24

    .line 29
    new-instance v1, Ljava/lang/Error;

    const-string v2, "data type scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_24
    const/16 v1, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    sub-int/2addr v1, v2

    sput v1, Ljava/util/concurrent/atomic/AtomicLongArray;->shift:I

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-array v0, p1, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 52
    return-void
.end method

.method public constructor <init>([J)V
    .registers 3
    .parameter "array"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 64
    return-void
.end method

.method private static byteOffset(I)J
    .registers 5
    .parameter "i"

    .prologue
    .line 41
    int-to-long v0, p0

    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->shift:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/atomic/AtomicLongArray;->base:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private checkedByteOffset(I)J
    .registers 5
    .parameter "i"

    .prologue
    .line 34
    if-ltz p1, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    if-lt p1, v0, :cond_20

    .line 35
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_20
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->byteOffset(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private compareAndSetRaw(JJJ)Z
    .registers 15
    .parameter "offset"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 143
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method private getRaw(J)J
    .registers 5
    .parameter "offset"

    .prologue
    .line 86
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public addAndGet(IJ)J
    .registers 11
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v1

    .line 229
    .local v1, offset:J
    :cond_4
    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v3

    .line 230
    .local v3, current:J
    add-long v5, v3, p2

    .local v5, next:J
    move-object v0, p0

    .line 231
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    return-wide v5
.end method

.method public final compareAndSet(IJJ)Z
    .registers 13
    .parameter "i"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v1

    move-object v0, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet(I)J
    .registers 4
    .parameter "i"

    .prologue
    .line 216
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->addAndGet(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final get(I)J
    .registers 4
    .parameter "i"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndAdd(IJ)J
    .registers 11
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v1

    .line 193
    .local v1, offset:J
    :cond_4
    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v3

    .line 194
    .local v3, current:J
    add-long v5, v3, p2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    return-wide v3
.end method

.method public final getAndDecrement(I)J
    .registers 4
    .parameter "i"

    .prologue
    .line 180
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndIncrement(I)J
    .registers 4
    .parameter "i"

    .prologue
    .line 170
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->getAndAdd(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndSet(IJ)J
    .registers 11
    .parameter "i"
    .parameter "newValue"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v1

    .line 122
    .local v1, offset:J
    :cond_4
    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v3

    .local v3, current:J
    move-object v0, p0

    move-wide v5, p2

    .line 123
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSetRaw(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    return-wide v3
.end method

.method public final incrementAndGet(I)J
    .registers 4
    .parameter "i"

    .prologue
    .line 206
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->addAndGet(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final lazySet(IJ)V
    .registers 10
    .parameter "i"
    .parameter "newValue"

    .prologue
    .line 107
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 108
    return-void
.end method

.method public final length()I
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    return v0
.end method

.method public final set(IJ)V
    .registers 10
    .parameter "i"
    .parameter "newValue"

    .prologue
    .line 96
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->checkedByteOffset(I)J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 241
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v3, v3

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .line 242
    .local v2, iMax:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    .line 243
    const-string v3, "[]"

    .line 250
    :goto_b
    return-object v3

    .line 245
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v0, b:Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, i:I
    :goto_17
    invoke-static {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->byteOffset(I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongArray;->getRaw(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 249
    if-ne v1, v2, :cond_2f

    .line 250
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 251
    :cond_2f
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public final weakCompareAndSet(IJJ)Z
    .registers 7
    .parameter "i"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 160
    invoke-virtual/range {p0 .. p5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    return v0
.end method
