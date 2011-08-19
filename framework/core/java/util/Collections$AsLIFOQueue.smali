.class Ljava/util/Collections$AsLIFOQueue;
.super Ljava/util/AbstractQueue;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsLIFOQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x19020d92eca0694cL


# instance fields
.field private final q:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Deque;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 2812
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, deque:Ljava/util/Deque;,"Ljava/util/Deque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 2813
    iput-object p1, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    .line 2814
    return-void
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
    .line 2840
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 2841
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 2846
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 2847
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 2861
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2866
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2851
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 2871
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2818
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 2827
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2831
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2835
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2856
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 2876
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2881
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2886
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 2823
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2891
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 2896
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, contents:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2901
    .local p0, this:Ljava/util/Collections$AsLIFOQueue;,"Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
