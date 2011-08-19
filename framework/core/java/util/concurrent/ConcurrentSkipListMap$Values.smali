.class final Ljava/util/concurrent/ConcurrentSkipListMap$Values;
.super Ljava/util/AbstractCollection;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<",
            "Ljava/lang/Object;",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<",
            "Ljava/lang/Object;",
            "TE;>;)V"
        }
    .end annotation

    .prologue
    .line 2332
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TE;>;"
    .local p1, map:Ljava/util/concurrent/ConcurrentNavigableMap;,"Ljava/util/concurrent/ConcurrentNavigableMap<Ljava/lang/Object;TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2333
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 2334
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 2351
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    .line 2352
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 2348
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 2342
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

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
    .line 2336
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_f

    .line 2337
    iget-object p0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .end local p0           #this:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TE;>;"
    check-cast p0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->valueIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2339
    :goto_e
    return-object v0

    .restart local p0       #this:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TE;>;"
    :cond_f
    iget-object p0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .end local p0           #this:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TE;>;"
    check-cast p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->valueIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_e
.end method

.method public size()I
    .registers 2

    .prologue
    .line 2345
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2353
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

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
    .line 2354
    .local p0, this:Ljava/util/concurrent/ConcurrentSkipListMap$Values;,"Ljava/util/concurrent/ConcurrentSkipListMap$Values<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
