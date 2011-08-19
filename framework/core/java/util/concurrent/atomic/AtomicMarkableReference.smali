.class public Ljava/util/concurrent/atomic/AtomicMarkableReference;
.super Ljava/lang/Object;
.source "AtomicMarkableReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;
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
.field private volatile pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 166
    sget-object v0, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->UNSAFE:Lsun/misc/Unsafe;

    .line 167
    sget-object v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "pair"

    const-class v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pairOffset:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .registers 4
    .parameter
    .parameter "initialMark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, initialRef:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    .line 48
    return-void
.end method

.method private casPair(Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair",
            "<TV;>;",
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, cmp:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;,"Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    .local p2, val:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;,"Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pairOffset:J

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
    .line 177
    .local p2, klazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v2

    return-wide v2

    .line 178
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 180
    .local v0, e:Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/NoSuchFieldError;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, error:Ljava/lang/NoSuchFieldError;
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchFieldError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 182
    throw v1
.end method


# virtual methods
.method public attemptMark(Ljava/lang/Object;Z)Z
    .registers 5
    .parameter
    .parameter "newMark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, expectedReference:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    .line 158
    .local v0, current:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;,"Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_16

    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    if-eq p2, v1, :cond_14

    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->casPair(Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;)Z

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

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z
    .registers 7
    .parameter
    .parameter
    .parameter "expectedMark"
    .parameter "newMark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, expectedReference:Ljava/lang/Object;,"TV;"
    .local p2, newReference:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    .line 123
    .local v0, current:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;,"Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_1e

    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    if-ne p3, v1, :cond_1e

    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    if-ne p2, v1, :cond_12

    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    if-eq p4, v1, :cond_1c

    :cond_12
    invoke-static {p2, p4}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->casPair(Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;)Z

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

.method public get([Z)Ljava/lang/Object;
    .registers 5
    .parameter "markHolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)TV;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    .line 78
    .local v0, pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;,"Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    const/4 v1, 0x0

    iget-boolean v2, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    aput-boolean v2, p1, v1

    .line 79
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

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
    .line 56
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    iget-object v0, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public isMarked()Z
    .registers 2

    .prologue
    .line 65
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    iget-boolean v0, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    return v0
.end method

.method public set(Ljava/lang/Object;Z)V
    .registers 5
    .parameter
    .parameter "newMark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, newReference:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    .line 139
    .local v0, current:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;,"Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_a

    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    if-eq p2, v1, :cond_10

    .line 140
    :cond_a
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    .line 141
    :cond_10
    return-void
.end method

.method public weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z
    .registers 6
    .parameter
    .parameter
    .parameter "expectedMark"
    .parameter "newMark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, expectedReference:Ljava/lang/Object;,"TV;"
    .local p2, newReference:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z

    move-result v0

    return v0
.end method
