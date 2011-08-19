.class final Ljava/util/Hashtable$KeySet;
.super Ljava/util/AbstractSet;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .registers 2
    .parameter

    .prologue
    .line 906
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iput-object p1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 906
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 924
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 925
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 914
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 937
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 938
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 939
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
    .line 942
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 943
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 944
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 947
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 948
    :try_start_3
    invoke-super {p0}, Ljava/util/AbstractSet;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 949
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 908
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/Hashtable$KeyIterator;

    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable$KeyIterator;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 917
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 918
    :try_start_3
    iget-object v2, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->size:I
    invoke-static {v2}, Ljava/util/Hashtable;->access$800(Ljava/util/Hashtable;)I

    move-result v0

    .line 919
    .local v0, oldSize:I
    iget-object v2, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    iget-object v2, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->size:I
    invoke-static {v2}, Ljava/util/Hashtable;->access$800(Ljava/util/Hashtable;)I

    move-result v2

    if-eq v2, v0, :cond_19

    const/4 v2, 0x1

    :goto_17
    monitor-exit v1

    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_17

    .line 921
    .end local v0           #oldSize:I
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v2
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
    .line 927
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 928
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 929
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
    .line 932
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 933
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 934
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
    .line 911
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 957
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 958
    :try_start_3
    invoke-super {p0}, Ljava/util/AbstractSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 959
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
    .line 962
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 963
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 964
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
    .line 952
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 953
    :try_start_3
    invoke-super {p0}, Ljava/util/AbstractSet;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 954
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method
