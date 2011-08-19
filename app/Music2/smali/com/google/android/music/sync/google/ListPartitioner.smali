.class public Lcom/google/android/music/sync/google/ListPartitioner;
.super Ljava/lang/Object;
.source "ListPartitioner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mPartitioningClasses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    .local p0, this:Lcom/google/android/music/sync/google/ListPartitioner;,"Lcom/google/android/music/sync/google/ListPartitioner<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/ListPartitioner;->mPartitioningClasses:Ljava/util/HashSet;

    return-void
.end method

.method private findFirstIndexOfUnlikeElement(Ljava/lang/Class;Ljava/util/List;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/music/sync/google/ListPartitioner;,"Lcom/google/android/music/sync/google/ListPartitioner<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    .local p2, inputList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 43
    .local v0, index:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 44
    .local v1, inputListSize:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 45
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    :cond_0
    return v0

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addPartitioningClass(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/google/android/music/sync/google/ListPartitioner;,"Lcom/google/android/music/sync/google/ListPartitioner<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    iget-object v0, p0, Lcom/google/android/music/sync/google/ListPartitioner;->mPartitioningClasses:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public partition(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/music/sync/google/ListPartitioner;,"Lcom/google/android/music/sync/google/ListPartitioner<TT;>;"
    .local p1, inputList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v8, 0x0

    .line 63
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 64
    .local v3, listOfLists:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<+TT;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 84
    :cond_0
    return-object v3

    .line 80
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/google/android/music/sync/google/ListPartitioner;->findFirstIndexOfUnlikeElement(Ljava/lang/Class;Ljava/util/List;)I

    move-result v1

    .line 81
    .local v1, endIndex:I
    invoke-interface {p1, v8, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 67
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    .end local v1           #endIndex:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 69
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    iget-object v5, p0, Lcom/google/android/music/sync/google/ListPartitioner;->mPartitioningClasses:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 70
    .local v4, partitioningClass:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 71
    move-object v0, v4

    .line 75
    .end local v4           #partitioningClass:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    :cond_4
    if-nez v0, :cond_1

    .line 76
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to partition a list with an unknown element type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
