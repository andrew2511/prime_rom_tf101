.class public Ljava/util/concurrent/atomic/AtomicStampedReference;
.super Ljava/lang/Object;
.source "AtomicStampedReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final pairOffset:J


# instance fields
.field private volatile pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 165
    sget-object v0, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->UNSAFE:Lsun/misc/Unsafe;

    .line 166
    sget-object v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "pair"

    const-class v2, Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicStampedReference;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pairOffset:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 4
    .parameter
    .parameter "initialStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, initialRef:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 46
    return-void
.end method

.method private casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair",
            "<TV;>;",
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, cmp:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;,"Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    .local p2, val:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;,"Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicStampedReference;->pairOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 176
    .local p2, klazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v2

    return-wide v2

    .line 177
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 179
    .local v0, e:Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/NoSuchFieldError;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, error:Ljava/lang/NoSuchFieldError;
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchFieldError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 181
    throw v1
.end method


# virtual methods
.method public attemptStamp(Ljava/lang/Object;I)Z
    .registers 5
    .parameter
    .parameter "newStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)Z"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, expectedReference:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 157
    .local v0, current:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;,"Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_16

    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-eq p2, v1, :cond_14

    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .registers 7
    .parameter
    .parameter
    .parameter "expectedStamp"
    .parameter "newStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;II)Z"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, expectedReference:Ljava/lang/Object;,"TV;"
    .local p2, newReference:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 121
    .local v0, current:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;,"Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_1e

    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-ne p3, v1, :cond_1e

    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p2, v1, :cond_12

    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-eq p4, v1, :cond_1c

    :cond_12
    invoke-static {p2, p4}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public get([I)Ljava/lang/Object;
    .registers 5
    .parameter "stampHolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TV;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 76
    .local v0, pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;,"Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    const/4 v1, 0x0

    iget v2, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    aput v2, p1, v1

    .line 77
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    return-object v1
.end method

.method public getReference()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    iget-object v0, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public getStamp()I
    .registers 2

    .prologue
    .line 63
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    iget v0, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    return v0
.end method

.method public set(Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter "newStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, newReference:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 138
    .local v0, current:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;,"Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_a

    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-eq p2, v1, :cond_10

    .line 139
    :cond_a
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 140
    :cond_10
    return-void
.end method

.method public weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .registers 6
    .parameter
    .parameter
    .parameter "expectedStamp"
    .parameter "newStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;II)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, expectedReference:Ljava/lang/Object;,"TV;"
    .local p2, newReference:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method
