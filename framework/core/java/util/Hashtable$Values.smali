.class final Ljava/util/Hashtable$Values;
.super Ljava/util/AbstractCollection;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .registers 2
    .parameter

    .prologue
    .line 968
    .local p0, this:Ljava/util/Hashtable$Values;,"Ljava/util/Hashtable<TK;TV;>.Values;"
    iput-object p1, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 968
    .local p0, this:Ljava/util/Hashtable$Values;,"Ljava/util/Hashtable<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$Values;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 979
    .local p0, this:Ljava/util/Hashtable$Values;,"Ljava/util/Hashtable<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 980
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 976
    .local p0, this:Ljava/util/Hashtable$Values;,"Ljava/util/Hashtable<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

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
    .line 982
    .local p0, this:Ljava/util/Hashtable$Values;,"Ljava/util/Hashtable<TK;TV;>.Values;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 983
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 984
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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 970
    .local p0, this:Ljava/util/Hashtable$Values;,"Ljava/util/Hashtable<TK;TV;>.Values;"
    new-instance v0, Ljava/util/Hashtable$ValueIterator;

    iget-object v1, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable$ValueIterator;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 973
    .local p0, this:Ljava/util/Hashtable$Values;,"Ljava/util/Hashtable<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 992
    .local p0, this:Ljava/util/Hashtable$Values;,"Ljava/util/Hashtable<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 993
    :try_start_3
    invoke-super {p0}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 994
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
    .line 997
    .local p0, this:Ljava/util/Hashtable$Values;,"Ljava/util/Hashtable<TK;TV;>.Values;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 998
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 999
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
    .line 987
    .local p0, this:Ljava/util/Hashtable$Values;,"Ljava/util/Hashtable<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/Hashtable$Values;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 988
    :try_start_3
    invoke-super {p0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 989
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method
