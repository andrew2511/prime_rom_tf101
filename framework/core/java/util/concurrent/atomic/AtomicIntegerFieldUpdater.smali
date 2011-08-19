.class public abstract Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
.super Ljava/lang/Object;
.source "AtomicIntegerFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;
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
    .line 52
    .local p0, this:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
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
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, tclass:Ljava/lang/Class;,"Ljava/lang/Class<TU;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addAndGet(Ljava/lang/Object;I)I
    .registers 6
    .parameter
    .parameter "delta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, this:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 229
    .local v0, current:I
    add-int v1, v0, p2

    .line 230
    .local v1, next:I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    return v1
.end method

.method public abstract compareAndSet(Ljava/lang/Object;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation
.end method

.method public decrementAndGet(Ljava/lang/Object;)I
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, this:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 212
    .local v0, current:I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .line 213
    .local v1, next:I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    return v1
.end method

.method public abstract get(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public getAndAdd(Ljava/lang/Object;I)I
    .registers 6
    .parameter
    .parameter "delta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, this:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 180
    .local v0, current:I
    add-int v1, v0, p2

    .line 181
    .local v1, next:I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    return v0
.end method

.method public getAndDecrement(Ljava/lang/Object;)I
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 163
    .local v0, current:I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .line 164
    .local v1, next:I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    return v0
.end method

.method public getAndIncrement(Ljava/lang/Object;)I
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 147
    .local v0, current:I
    add-int/lit8 v1, v0, 0x1

    .line 148
    .local v1, next:I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    return v0
.end method

.method public getAndSet(Ljava/lang/Object;I)I
    .registers 5
    .parameter
    .parameter "newValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 132
    .local v0, current:I
    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    return v0
.end method

.method public incrementAndGet(Ljava/lang/Object;)I
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, this:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 196
    .local v0, current:I
    add-int/lit8 v1, v0, 0x1

    .line 197
    .local v1, next:I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    return v1
.end method

.method public abstract lazySet(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract weakCompareAndSet(Ljava/lang/Object;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation
.end method
