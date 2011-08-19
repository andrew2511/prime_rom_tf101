.class final Ljava/util/Hashtable$EntrySet;
.super Ljava/util/AbstractSet;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .registers 2
    .parameter

    .prologue
    .line 1003
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iput-object p1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1003
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1023
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1024
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .line 1008
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_6

    .line 1009
    const/4 v2, 0x0

    .line 1011
    :goto_5
    return v2

    .line 1010
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 1011
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    #calls: Ljava/util/Hashtable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v2, v3, v4}, Ljava/util/Hashtable;->access$1100(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1036
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1037
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1038
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 1041
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1042
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1043
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1046
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1005
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/Hashtable$EntryIterator;

    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable$EntryIterator;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .line 1014
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_6

    .line 1015
    const/4 v2, 0x0

    .line 1017
    :goto_5
    return v2

    .line 1016
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 1017
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    #calls: Ljava/util/Hashtable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v2, v3, v4}, Ljava/util/Hashtable;->access$1200(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1026
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1027
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1028
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1031
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1032
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1033
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1020
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1054
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1055
    :try_start_3
    invoke-super {p0}, Ljava/util/AbstractSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1056
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1059
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1060
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1061
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1049
    .local p0, this:Ljava/util/Hashtable$EntrySet;,"Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1050
    :try_start_3
    invoke-super {p0}, Ljava/util/AbstractSet;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1051
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method
