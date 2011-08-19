.class public Lcom/google/android/apps/books/util/ObsoletingQueue;
.super Ljava/lang/Object;
.source "ObsoletingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    const/4 v1, 0x1

    .line 109
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    move v0, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only add one element at a time, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->addAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 86
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 87
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 126
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 1
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
    .line 94
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 147
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 152
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 134
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 48
    iget-object v1, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .parameter
    .parameter "timeout"
    .parameter "timeUnit"
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
    .line 39
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 41
    iget-object v1, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "timeout"
    .parameter "timeUnit"
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
    .line 57
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 2
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
    .line 32
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 34
    iget-object v1, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 28
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v0

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 69
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 24
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 1
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
    .line 53
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    .local p0, this:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/ObsoletingQueue;->mDelegate:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
