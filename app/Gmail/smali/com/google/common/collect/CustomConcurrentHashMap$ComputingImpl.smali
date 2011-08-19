.class Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;
.super Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComputingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CustomConcurrentHashMap$Impl",
        "<TK;TV;TE;>;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J


# instance fields
.field final computer:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field

.field final computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy",
            "<TK;TV;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;Lcom/google/common/base/Function;)V
    .locals 0
    .parameter
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy",
            "<TK;TV;TE;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Builder;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1990
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;,"Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl<TK;TV;TE;>;"
    .local p1, strategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy<TK;TV;TE;>;"
    .local p3, computer:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TK;+TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;)V

    .line 1991
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    .line 1992
    iput-object p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/google/common/base/Function;

    .line 1993
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .parameter "k"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2006
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;,"Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl<TK;TV;TE;>;"
    move-object/from16 v13, p1

    .line 2008
    .local v13, key:Ljava/lang/Object;,"TK;"
    if-nez v13, :cond_0

    .line 2009
    new-instance v18, Ljava/lang/NullPointerException;

    const-string v19, "key"

    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 2012
    :cond_0
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->hash(Ljava/lang/Object;)I

    move-result v10

    .line 2013
    .local v10, hash:I
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v14

    .line 2015
    .local v14, segment:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_1
    :goto_0
    invoke-virtual {v14, v13, v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 2016
    .local v8, entry:Ljava/lang/Object;,"TE;"
    if-nez v8, :cond_7

    .line 2017
    const/4 v6, 0x0

    .line 2018
    .local v6, created:Z
    invoke-virtual {v14}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 2021
    :try_start_0
    invoke-virtual {v14, v13, v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 2022
    if-nez v8, :cond_3

    .line 2024
    const/4 v6, 0x1

    .line 2025
    iget v4, v14, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 2026
    .local v4, count:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #count:I
    .local v5, count:I
    move-object v0, v14

    iget v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    move/from16 v18, v0

    move v0, v4

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 2027
    invoke-virtual {v14}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->expand()V

    .line 2029
    :cond_2
    move-object v0, v14

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v16, v0

    .line 2030
    .local v16, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v18

    const/16 v19, 0x1

    sub-int v18, v18, v19

    and-int v11, v10, v18

    .line 2031
    .local v11, index:I
    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 2032
    .local v9, first:Ljava/lang/Object;,"TE;"
    move-object v0, v14

    iget v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object v1, v14

    iput v0, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v13

    move v2, v10

    move-object v3, v9

    invoke-interface {v0, v1, v2, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 2034
    move-object/from16 v0, v16

    move v1, v11

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2035
    iput v5, v14, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2038
    .end local v5           #count:I
    .end local v9           #first:Ljava/lang/Object;,"TE;"
    .end local v11           #index:I
    .end local v16           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_3
    invoke-virtual {v14}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 2041
    if-eqz v6, :cond_7

    .line 2043
    const/4 v15, 0x0

    .line 2045
    .local v15, success:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/google/common/base/Function;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object v1, v13

    move-object v2, v8

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;->compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/base/Function;)Ljava/lang/Object;

    move-result-object v17

    .line 2046
    .local v17, value:Ljava/lang/Object;,"TV;"
    if-nez v17, :cond_5

    .line 2047
    new-instance v18, Ljava/lang/NullPointerException;

    const-string v19, "compute() returned null unexpectedly"

    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2053
    .end local v17           #value:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v18

    if-nez v15, :cond_4

    .line 2054
    invoke-virtual {v14, v8, v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    :cond_4
    throw v18

    .line 2038
    .end local v15           #success:Z
    :catchall_1
    move-exception v18

    invoke-virtual {v14}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v18

    .line 2050
    .restart local v15       #success:Z
    .restart local v17       #value:Ljava/lang/Object;,"TV;"
    :cond_5
    const/4 v15, 0x1

    .line 2053
    if-nez v15, :cond_6

    .line 2054
    invoke-virtual {v14, v8, v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    .line 2078
    .end local v6           #created:Z
    .end local v15           #success:Z
    :cond_6
    :goto_1
    return-object v17

    .line 2061
    .end local v17           #value:Ljava/lang/Object;,"TV;"
    :cond_7
    const/4 v12, 0x0

    .line 2065
    .local v12, interrupted:Z
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;->waitForValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 2066
    .restart local v17       #value:Ljava/lang/Object;,"TV;"
    if-nez v17, :cond_8

    .line 2068
    invoke-virtual {v14, v8, v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2077
    if-eqz v12, :cond_1

    .line 2078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 2077
    :cond_8
    if-eqz v12, :cond_6

    .line 2078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2072
    .end local v17           #value:Ljava/lang/Object;,"TV;"
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 2073
    .local v7, e:Ljava/lang/InterruptedException;
    const/4 v12, 0x1

    .line 2074
    goto :goto_2

    .line 2077
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v18

    if-eqz v12, :cond_9

    .line 2078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->interrupt()V

    :cond_9
    throw v18
.end method
