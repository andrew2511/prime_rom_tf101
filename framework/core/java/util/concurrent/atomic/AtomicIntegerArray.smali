.class public Ljava/util/concurrent/atomic/AtomicIntegerArray;
.super Ljava/lang/Object;
.source "AtomicIntegerArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final base:I = 0x0

.field private static final serialVersionUID:J = 0x27b857513300bd8bL

.field private static final shift:I

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final array:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 22
    sget-object v1, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    .line 23
    sget-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    const-class v2, [I

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->base:I

    .line 28
    sget-object v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    const-class v2, [I

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 29
    .local v0, scale:I
    const/4 v1, 0x1

    sub-int v1, v0, v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_24

    .line 30
    new-instance v1, Ljava/lang/Error;

    const-string v2, "data type scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_24
    const/16 v1, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    sub-int/2addr v1, v2

    sput v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->shift:I

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 53
    return-void
.end method

.method public constructor <init>([I)V
    .registers 3
    .parameter "array"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 65
    return-void
.end method

.method private static byteOffset(I)J
    .registers 5
    .parameter "i"

    .prologue
    .line 42
    int-to-long v0, p0

    sget v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;->shift:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;->base:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private checkedByteOffset(I)J
    .registers 5
    .parameter "i"

    .prologue
    .line 35
    if-ltz p1, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    if-lt p1, v0, :cond_20

    .line 36
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

    .line 38
    :cond_20
    invoke-static {p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->byteOffset(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private compareAndSetRaw(JII)Z
    .registers 11
    .parameter "offset"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 143
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private getRaw(J)I
    .registers 5
    .parameter "offset"

    .prologue
    .line 87
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final addAndGet(II)I
    .registers 8
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    .line 229
    .local v2, offset:J
    :cond_4
    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v0

    .line 230
    .local v0, current:I
    add-int v1, v0, p2

    .line 231
    .local v1, next:I
    invoke-direct {p0, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 232
    return v1
.end method

.method public final compareAndSet(III)Z
    .registers 6
    .parameter "i"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet(I)I
    .registers 3
    .parameter "i"

    .prologue
    .line 216
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->addAndGet(II)I

    move-result v0

    return v0
.end method

.method public final get(I)I
    .registers 4
    .parameter "i"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v0

    return v0
.end method

.method public final getAndAdd(II)I
    .registers 7
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v1

    .line 193
    .local v1, offset:J
    :cond_4
    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v0

    .line 194
    .local v0, current:I
    add-int v3, v0, p2

    invoke-direct {p0, v1, v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 195
    return v0
.end method

.method public final getAndDecrement(I)I
    .registers 3
    .parameter "i"

    .prologue
    .line 180
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v0

    return v0
.end method

.method public final getAndIncrement(I)I
    .registers 3
    .parameter "i"

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndAdd(II)I

    move-result v0

    return v0
.end method

.method public final getAndSet(II)I
    .registers 7
    .parameter "i"
    .parameter "newValue"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v1

    .line 122
    .local v1, offset:J
    :cond_4
    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v0

    .line 123
    .local v0, current:I
    invoke-direct {p0, v1, v2, v0, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSetRaw(JII)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 124
    return v0
.end method

.method public final incrementAndGet(I)I
    .registers 3
    .parameter "i"

    .prologue
    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->addAndGet(II)I

    move-result v0

    return v0
.end method

.method public final lazySet(II)V
    .registers 7
    .parameter "i"
    .parameter "newValue"

    .prologue
    .line 108
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 109
    return-void
.end method

.method public final length()I
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    return v0
.end method

.method public final set(II)V
    .registers 7
    .parameter "i"
    .parameter "newValue"

    .prologue
    .line 97
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->checkedByteOffset(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 241
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

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
    invoke-static {v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->byteOffset(I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getRaw(J)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

.method public final weakCompareAndSet(III)Z
    .registers 5
    .parameter "i"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v0

    return v0
.end method
