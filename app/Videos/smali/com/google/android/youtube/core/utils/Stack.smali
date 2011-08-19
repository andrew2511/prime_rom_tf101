.class public final Lcom/google/android/youtube/core/utils/Stack;
.super Ljava/lang/Object;
.source "Stack.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    .local p1, all:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 89
    .local v1, object:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 91
    .end local v1           #object:Ljava/lang/Object;,"TT;"
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 95
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 96
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 99
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 103
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    .local p1, all:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 107
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    .local p1, o:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lcom/google/android/youtube/core/utils/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public poll(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lcom/google/android/youtube/core/utils/Stack;->poll()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 115
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 119
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    .local p1, all:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 123
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    .local p1, all:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 127
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Stack;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">([TU;)[TU;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<TT;>;"
    .local p1, array:[Ljava/lang/Object;,"[TU;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
