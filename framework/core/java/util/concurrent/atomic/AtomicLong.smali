.class public Ljava/util/concurrent/atomic/AtomicLong;
.super Ljava/lang/Number;
.source "AtomicLong.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field static final VM_SUPPORTS_LONG_CAS:Z = false

.field private static final serialVersionUID:J = 0x1ac0fab477001718L

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final valueOffset:J


# instance fields
.field private volatile value:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 27
    sget-object v1, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v1, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

    .line 36
    invoke-static {}, Ljava/util/concurrent/atomic/AtomicLong;->VMSupportsCS8()Z

    move-result v1

    sput-boolean v1, Ljava/util/concurrent/atomic/AtomicLong;->VM_SUPPORTS_LONG_CAS:Z

    .line 46
    :try_start_a
    sget-object v1, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/atomic/AtomicLong;->valueOffset:J
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1b

    .line 49
    return-void

    .line 48
    :catch_1b
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "initialValue"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 59
    iput-wide p1, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    .line 60
    return-void
.end method

.method private static native VMSupportsCS8()Z
.end method


# virtual methods
.method public final addAndGet(J)J
    .registers 8
    .parameter "delta"

    .prologue
    .line 218
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 219
    .local v0, current:J
    add-long v2, v0, p1

    .line 220
    .local v2, next:J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    return-wide v2
.end method

.method public final compareAndSet(JJ)Z
    .registers 13
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 120
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->valueOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet()J
    .registers 7

    .prologue
    .line 203
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 204
    .local v0, current:J
    const-wide/16 v4, 0x1

    sub-long v2, v0, v4

    .line 205
    .local v2, next:J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    return-wide v2
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 243
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public final get()J
    .registers 3

    .prologue
    .line 74
    iget-wide v0, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    return-wide v0
.end method

.method public final getAndAdd(J)J
    .registers 8
    .parameter "delta"

    .prologue
    .line 175
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 176
    .local v0, current:J
    add-long v2, v0, p1

    .line 177
    .local v2, next:J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    return-wide v0
.end method

.method public final getAndDecrement()J
    .registers 7

    .prologue
    .line 160
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 161
    .local v0, current:J
    const-wide/16 v4, 0x1

    sub-long v2, v0, v4

    .line 162
    .local v2, next:J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    return-wide v0
.end method

.method public final getAndIncrement()J
    .registers 7

    .prologue
    .line 146
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 147
    .local v0, current:J
    const-wide/16 v4, 0x1

    add-long v2, v0, v4

    .line 148
    .local v2, next:J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    return-wide v0
.end method

.method public final getAndSet(J)J
    .registers 6
    .parameter "newValue"

    .prologue
    .line 104
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 105
    .local v0, current:J
    invoke-virtual {p0, v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    return-wide v0
.end method

.method public final incrementAndGet()J
    .registers 7

    .prologue
    .line 189
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 190
    .local v0, current:J
    const-wide/16 v4, 0x1

    add-long v2, v0, v4

    .line 191
    .local v2, next:J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    return-wide v2
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final lazySet(J)V
    .registers 9
    .parameter "newValue"

    .prologue
    .line 93
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->valueOffset:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 94
    return-void
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final set(J)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 83
    iput-wide p1, p0, Ljava/util/concurrent/atomic/AtomicLong;->value:J

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 230
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final weakCompareAndSet(JJ)Z
    .registers 13
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 136
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLong;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicLong;->valueOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
