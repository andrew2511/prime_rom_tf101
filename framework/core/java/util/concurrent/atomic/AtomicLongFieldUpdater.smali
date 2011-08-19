.class public abstract Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.super Ljava/lang/Object;
.source "AtomicLongFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;,
        Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 55
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .registers 3
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, tclass:Ljava/lang/Class;,"Ljava/lang/Class<TU;>;"
    sget-boolean v0, Ljava/util/concurrent/atomic/AtomicLong;->VM_SUPPORTS_LONG_CAS:Z

    if-eqz v0, :cond_a

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 49
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_9
.end method


# virtual methods
.method public addAndGet(Ljava/lang/Object;J)J
    .registers 10
    .parameter
    .parameter "delta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 231
    .local v2, current:J
    add-long v4, v2, p2

    .local v4, next:J
    move-object v0, p0

    move-object v1, p1

    .line 232
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    return-wide v4
.end method

.method public abstract compareAndSet(Ljava/lang/Object;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation
.end method

.method public decrementAndGet(Ljava/lang/Object;)J
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 214
    .local v2, current:J
    const-wide/16 v0, 0x1

    sub-long v4, v2, v0

    .local v4, next:J
    move-object v0, p0

    move-object v1, p1

    .line 215
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    return-wide v4
.end method

.method public abstract get(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public getAndAdd(Ljava/lang/Object;J)J
    .registers 10
    .parameter
    .parameter "delta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 182
    .local v2, current:J
    add-long v4, v2, p2

    .local v4, next:J
    move-object v0, p0

    move-object v1, p1

    .line 183
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    return-wide v2
.end method

.method public getAndDecrement(Ljava/lang/Object;)J
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 165
    .local v2, current:J
    const-wide/16 v0, 0x1

    sub-long v4, v2, v0

    .local v4, next:J
    move-object v0, p0

    move-object v1, p1

    .line 166
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    return-wide v2
.end method

.method public getAndIncrement(Ljava/lang/Object;)J
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 149
    .local v2, current:J
    const-wide/16 v0, 0x1

    add-long v4, v2, v0

    .local v4, next:J
    move-object v0, p0

    move-object v1, p1

    .line 150
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    return-wide v2
.end method

.method public getAndSet(Ljava/lang/Object;J)J
    .registers 10
    .parameter
    .parameter "newValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .local v2, current:J
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 134
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    return-wide v2
.end method

.method public incrementAndGet(Ljava/lang/Object;)J
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 198
    .local v2, current:J
    const-wide/16 v0, 0x1

    add-long v4, v2, v0

    .local v4, next:J
    move-object v0, p0

    move-object v1, p1

    .line 199
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    return-wide v4
.end method

.method public abstract lazySet(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation
.end method

.method public abstract weakCompareAndSet(Ljava/lang/Object;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation
.end method
