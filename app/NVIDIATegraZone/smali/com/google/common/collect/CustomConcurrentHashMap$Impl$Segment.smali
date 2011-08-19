.class final Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Segment"
.end annotation


# instance fields
.field volatile count:I

.field modCount:I

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

.field threshold:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V
    .locals 1
    .parameter
    .parameter "initialCapacity"

    .prologue
    .line 783
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 784
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 785
    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 1226
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v2, :cond_1

    .line 1227
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1229
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1230
    .local v1, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1231
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1233
    :cond_0
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1234
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1239
    .end local v0           #i:I
    .end local v1           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_1
    return-void

    .line 1236
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v2
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 5
    .parameter "key"
    .parameter "hash"

    .prologue
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    const/4 v4, 0x0

    .line 842
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v3, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 843
    .local v2, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v3, :cond_3

    .line 844
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v0, :cond_3

    .line 845
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 844
    :cond_0
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 849
    :cond_1
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 850
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    if-eqz v1, :cond_0

    .line 854
    invoke-interface {v2, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 856
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 861
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :goto_1
    return v3

    .restart local v0       #e:Ljava/lang/Object;,"TE;"
    .restart local v1       #entryKey:Ljava/lang/Object;,"TK;"
    :cond_2
    move v3, v4

    .line 856
    goto :goto_1

    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_3
    move v3, v4

    .line 861
    goto :goto_1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 7
    .parameter "value"

    .prologue
    .line 865
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v4, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 866
    .local v4, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    iget v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v6, :cond_3

    .line 867
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 868
    .local v5, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    .line 869
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 870
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    :goto_1
    if-eqz v0, :cond_2

    .line 871
    invoke-interface {v4, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 876
    .local v1, entryValue:Ljava/lang/Object;,"TV;"
    if-nez v1, :cond_1

    .line 870
    :cond_0
    invoke-interface {v4, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 880
    :cond_1
    invoke-interface {v4, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 881
    const/4 v6, 0x1

    .line 887
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v1           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :goto_2
    return v6

    .line 869
    .restart local v0       #e:Ljava/lang/Object;,"TE;"
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v5       #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 887
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method expand()V
    .locals 22

    .prologue
    .line 993
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v16, v0

    .line 994
    .local v16, oldTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v14

    .line 995
    .local v14, oldCapacity:I
    const/high16 v20, 0x4000

    move v0, v14

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1012
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    move-object/from16 v17, v0

    .line 1013
    .local v17, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    shl-int/lit8 v20, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v12

    .line 1014
    .local v12, newTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v20

    mul-int/lit8 v20, v20, 0x3

    div-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    .line 1015
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v20

    const/16 v21, 0x1

    sub-int v10, v20, v21

    .line 1016
    .local v10, newMask:I
    const/4 v15, 0x0

    .local v15, oldIndex:I
    :goto_1
    if-ge v15, v14, :cond_6

    .line 1020
    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1022
    .local v5, head:Ljava/lang/Object;,"TE;"
    if-eqz v5, :cond_1

    .line 1023
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1024
    .local v13, next:Ljava/lang/Object;,"TE;"
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v20

    and-int v6, v20, v10

    .line 1027
    .local v6, headIndex:I
    if-nez v13, :cond_2

    .line 1028
    invoke-virtual {v12, v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1016
    .end local v6           #headIndex:I
    .end local v13           #next:Ljava/lang/Object;,"TE;"
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1035
    .restart local v6       #headIndex:I
    .restart local v13       #next:Ljava/lang/Object;,"TE;"
    :cond_2
    move-object/from16 v18, v5

    .line 1036
    .local v18, tail:Ljava/lang/Object;,"TE;"
    move/from16 v19, v6

    .line 1037
    .local v19, tailIndex:I
    move-object v8, v13

    .local v8, last:Ljava/lang/Object;,"TE;"
    :goto_2
    if-eqz v8, :cond_4

    .line 1038
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v20

    and-int v9, v20, v10

    .line 1039
    .local v9, newIndex:I
    move v0, v9

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 1042
    move/from16 v19, v9

    .line 1043
    move-object/from16 v18, v8

    .line 1037
    :cond_3
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    .line 1046
    .end local v9           #newIndex:I
    :cond_4
    move-object v0, v12

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1049
    move-object v4, v5

    .local v4, e:Ljava/lang/Object;,"TE;"
    :goto_3
    move-object v0, v4

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 1050
    move-object/from16 v0, v17

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1051
    .local v7, key:Ljava/lang/Object;,"TK;"
    if-eqz v7, :cond_5

    .line 1052
    move-object/from16 v0, v17

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v20

    and-int v9, v20, v10

    .line 1053
    .restart local v9       #newIndex:I
    invoke-virtual {v12, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1054
    .local v11, newNext:Ljava/lang/Object;,"TE;"
    move-object/from16 v0, v17

    move-object v1, v7

    move-object v2, v4

    move-object v3, v11

    invoke-interface {v0, v1, v2, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object v0, v12

    move v1, v9

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1049
    .end local v9           #newIndex:I
    .end local v11           #newNext:Ljava/lang/Object;,"TE;"
    :cond_5
    move-object/from16 v0, v17

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    .line 1062
    .end local v4           #e:Ljava/lang/Object;,"TE;"
    .end local v5           #head:Ljava/lang/Object;,"TE;"
    .end local v6           #headIndex:I
    .end local v7           #key:Ljava/lang/Object;,"TK;"
    .end local v8           #last:Ljava/lang/Object;,"TE;"
    .end local v13           #next:Ljava/lang/Object;,"TE;"
    .end local v18           #tail:Ljava/lang/Object;,"TE;"
    .end local v19           #tailIndex:I
    :cond_6
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto/16 :goto_0
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 833
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 834
    .local v0, entry:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_0

    .line 835
    const/4 v1, 0x0

    .line 838
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getEntry(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .prologue
    .line 811
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v3, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 812
    .local v2, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v3, :cond_2

    .line 813
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v0, :cond_2

    .line 814
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 813
    :cond_0
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 818
    :cond_1
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 819
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    if-eqz v1, :cond_0

    .line 823
    invoke-interface {v2, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 829
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getFirst(I)Ljava/lang/Object;
    .locals 3
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 804
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 805
    .local v0, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 788
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 12
    .parameter
    .parameter "hash"
    .parameter
    .parameter "onlyIfAbsent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 945
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v8, v10, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 946
    .local v8, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 948
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 949
    .local v0, count:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v0, v10, :cond_0

    .line 950
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->expand()V

    .line 953
    :cond_0
    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 954
    .local v9, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    and-int v6, p2, v10

    .line 956
    .local v6, index:I
    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 959
    .local v5, first:Ljava/lang/Object;,"TE;"
    move-object v2, v5

    .local v2, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v2, :cond_3

    .line 960
    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 961
    .local v3, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v10

    if-ne v10, p2, :cond_2

    if-eqz v3, :cond_2

    invoke-interface {v8, p1, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 967
    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 968
    .local v4, entryValue:Ljava/lang/Object;,"TV;"
    if-eqz p4, :cond_1

    if-eqz v4, :cond_1

    .line 985
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v10, v4

    .end local v3           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v4           #entryValue:Ljava/lang/Object;,"TV;"
    :goto_1
    return-object v10

    .line 972
    .restart local v3       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v4       #entryValue:Ljava/lang/Object;,"TV;"
    :cond_1
    :try_start_1
    invoke-interface {v8, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v10, v4

    goto :goto_1

    .line 959
    .end local v4           #entryValue:Ljava/lang/Object;,"TV;"
    :cond_2
    :try_start_2
    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 978
    .end local v3           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_3
    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 979
    invoke-interface {v8, p1, p2, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 980
    .local v7, newEntry:Ljava/lang/Object;,"TE;"
    invoke-interface {v8, v7, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 981
    invoke-virtual {v9, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 982
    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 983
    const/4 v10, 0x0

    .line 985
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    .end local v1           #count:I
    .end local v2           #e:Ljava/lang/Object;,"TE;"
    .end local v5           #first:Ljava/lang/Object;,"TE;"
    .end local v6           #index:I
    .end local v7           #newEntry:Ljava/lang/Object;,"TE;"
    .end local v9           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v10
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 13
    .parameter "key"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    const/4 v12, 0x1

    .line 1066
    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v9, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1067
    .local v9, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1069
    :try_start_0
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    sub-int v0, v11, v12

    .line 1070
    .local v0, count:I
    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1071
    .local v10, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    sub-int/2addr v11, v12

    and-int v5, p2, v11

    .line 1072
    .local v5, index:I
    invoke-virtual {v10, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1074
    .local v4, first:Ljava/lang/Object;,"TE;"
    move-object v1, v4

    .local v1, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v1, :cond_3

    .line 1075
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1076
    .local v2, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, p2, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v9, v2, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1077
    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v11, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v11, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1081
    .local v3, entryValue:Ljava/lang/Object;,"TV;"
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1082
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1083
    .local v6, newFirst:Ljava/lang/Object;,"TE;"
    move-object v7, v4

    .local v7, p:Ljava/lang/Object;,"TE;"
    :goto_1
    if-eq v7, v1, :cond_1

    .line 1084
    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1085
    .local v8, pKey:Ljava/lang/Object;,"TK;"
    if-eqz v8, :cond_0

    .line 1086
    invoke-interface {v9, v8, v7, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1083
    :cond_0
    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 1091
    .end local v8           #pKey:Ljava/lang/Object;,"TK;"
    :cond_1
    invoke-virtual {v10, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1092
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v11, v3

    .end local v2           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v3           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v6           #newFirst:Ljava/lang/Object;,"TE;"
    .end local v7           #p:Ljava/lang/Object;,"TE;"
    :goto_2
    return-object v11

    .line 1074
    .restart local v2       #entryKey:Ljava/lang/Object;,"TK;"
    :cond_2
    :try_start_1
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1097
    .end local v2           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_3
    const/4 v11, 0x0

    .line 1099
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v4           #first:Ljava/lang/Object;,"TE;"
    .end local v5           #index:I
    .end local v10           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v11

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v11
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 16
    .parameter "key"
    .parameter "hash"
    .parameter "value"

    .prologue
    .line 1104
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    move-object v14, v0

    iget-object v12, v14, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1105
    .local v12, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1107
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    move v14, v0

    const/4 v15, 0x1

    sub-int v3, v14, v15

    .line 1108
    .local v3, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object v13, v0

    .line 1109
    .local v13, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    and-int v8, p2, v14

    .line 1110
    .local v8, index:I
    invoke-virtual {v13, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1112
    .local v7, first:Ljava/lang/Object;,"TE;"
    move-object v4, v7

    .local v4, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v4, :cond_5

    .line 1113
    invoke-interface {v12, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1114
    .local v5, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v12, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v14

    move v0, v14

    move/from16 v1, p2

    if-ne v0, v1, :cond_4

    if-eqz v5, :cond_4

    move-object v0, v12

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    move-object v14, v0

    iget-object v14, v14, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v14, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1116
    .local v6, entryValue:Ljava/lang/Object;,"TV;"
    move-object/from16 v0, p3

    move-object v1, v6

    if-eq v0, v1, :cond_0

    if-eqz p3, :cond_3

    if-eqz v6, :cond_3

    move-object v0, v12

    move-object v1, v6

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1122
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1123
    invoke-interface {v12, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1124
    .local v9, newFirst:Ljava/lang/Object;,"TE;"
    move-object v10, v7

    .local v10, p:Ljava/lang/Object;,"TE;"
    :goto_1
    if-eq v10, v4, :cond_2

    .line 1125
    invoke-interface {v12, v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1126
    .local v11, pKey:Ljava/lang/Object;,"TK;"
    if-eqz v11, :cond_1

    .line 1127
    invoke-interface {v12, v11, v10, v9}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1124
    :cond_1
    invoke-interface {v12, v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_1

    .line 1132
    .end local v11           #pKey:Ljava/lang/Object;,"TK;"
    :cond_2
    invoke-virtual {v13, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1133
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    const/4 v14, 0x1

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .end local v5           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v6           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v9           #newFirst:Ljava/lang/Object;,"TE;"
    .end local v10           #p:Ljava/lang/Object;,"TE;"
    :goto_2
    return v14

    .line 1136
    .restart local v5       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v6       #entryValue:Ljava/lang/Object;,"TV;"
    :cond_3
    const/4 v14, 0x0

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .line 1112
    .end local v6           #entryValue:Ljava/lang/Object;,"TV;"
    :cond_4
    :try_start_1
    invoke-interface {v12, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 1141
    .end local v5           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_5
    const/4 v14, 0x0

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .end local v3           #count:I
    .end local v4           #e:Ljava/lang/Object;,"TE;"
    .end local v7           #first:Ljava/lang/Object;,"TE;"
    .end local v8           #index:I
    .end local v13           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v14
.end method

.method public removeEntry(Ljava/lang/Object;I)Z
    .locals 11
    .parameter
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .local p1, entry:Ljava/lang/Object;,"TE;"
    const/4 v10, 0x1

    .line 1190
    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v7, v9, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1191
    .local v7, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1193
    :try_start_0
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    sub-int v0, v9, v10

    .line 1194
    .local v0, count:I
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1195
    .local v8, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    sub-int/2addr v9, v10

    and-int v3, p2, v9

    .line 1196
    .local v3, index:I
    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1198
    .local v2, first:Ljava/lang/Object;,"TE;"
    move-object v1, v2

    .local v1, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v1, :cond_3

    .line 1199
    invoke-interface {v7, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, p2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1203
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1204
    invoke-interface {v7, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1205
    .local v4, newFirst:Ljava/lang/Object;,"TE;"
    move-object v5, v2

    .local v5, p:Ljava/lang/Object;,"TE;"
    :goto_1
    if-eq v5, v1, :cond_1

    .line 1206
    invoke-interface {v7, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1207
    .local v6, pKey:Ljava/lang/Object;,"TK;"
    if-eqz v6, :cond_0

    .line 1208
    invoke-interface {v7, v6, v5, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1205
    :cond_0
    invoke-interface {v7, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 1213
    .end local v6           #pKey:Ljava/lang/Object;,"TK;"
    :cond_1
    invoke-virtual {v8, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1214
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move v9, v10

    .end local v4           #newFirst:Ljava/lang/Object;,"TE;"
    .end local v5           #p:Ljava/lang/Object;,"TE;"
    :goto_2
    return v9

    .line 1198
    :cond_2
    :try_start_1
    invoke-interface {v7, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1219
    :cond_3
    const/4 v9, 0x0

    .line 1221
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v2           #first:Ljava/lang/Object;,"TE;"
    .end local v3           #index:I
    .end local v8           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v9
.end method

.method public removeEntry(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 12
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ITV;)Z"
        }
    .end annotation

    .prologue
    .line 1148
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .local p1, entry:Ljava/lang/Object;,"TE;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v8, v10, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 1149
    .local v8, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1151
    :try_start_0
    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    const/4 v11, 0x1

    sub-int v0, v10, v11

    .line 1152
    .local v0, count:I
    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1153
    .local v9, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    and-int v4, p2, v10

    .line 1154
    .local v4, index:I
    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1156
    .local v3, first:Ljava/lang/Object;,"TE;"
    move-object v1, v3

    .local v1, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v1, :cond_5

    .line 1157
    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v10

    if-ne v10, p2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1158
    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1159
    .local v2, entryValue:Ljava/lang/Object;,"TV;"
    if-eq v2, p3, :cond_0

    if-eqz p3, :cond_3

    invoke-interface {v8, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1164
    :cond_0
    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1165
    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1166
    .local v5, newFirst:Ljava/lang/Object;,"TE;"
    move-object v6, v3

    .local v6, p:Ljava/lang/Object;,"TE;"
    :goto_1
    if-eq v6, v1, :cond_2

    .line 1167
    invoke-interface {v8, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1168
    .local v7, pKey:Ljava/lang/Object;,"TK;"
    if-eqz v7, :cond_1

    .line 1169
    invoke-interface {v8, v7, v6, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1166
    :cond_1
    invoke-interface {v8, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 1174
    .end local v7           #pKey:Ljava/lang/Object;,"TK;"
    :cond_2
    invoke-virtual {v9, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1175
    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    const/4 v10, 0x1

    .line 1185
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v5           #newFirst:Ljava/lang/Object;,"TE;"
    .end local v6           #p:Ljava/lang/Object;,"TE;"
    :goto_2
    return v10

    .line 1178
    .restart local v2       #entryValue:Ljava/lang/Object;,"TV;"
    :cond_3
    const/4 v10, 0x0

    .line 1185
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .line 1156
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    :cond_4
    :try_start_1
    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1183
    :cond_5
    const/4 v10, 0x0

    .line 1185
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v3           #first:Ljava/lang/Object;,"TE;"
    .end local v4           #index:I
    .end local v9           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v10
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    const/4 v5, 0x0

    .line 919
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 920
    .local v3, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 922
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v0, :cond_2

    .line 923
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 924
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v3, p1, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 928
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 929
    .local v2, entryValue:Ljava/lang/Object;,"TV;"
    if-nez v2, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v4, v5

    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    :goto_1
    return-object v4

    .line 933
    .restart local v1       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v2       #entryValue:Ljava/lang/Object;,"TV;"
    :cond_0
    :try_start_1
    invoke-interface {v3, v0, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v4, v2

    goto :goto_1

    .line 922
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    :cond_1
    :try_start_2
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 940
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v4, v5

    goto :goto_1

    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v4
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter "hash"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, oldValue:Ljava/lang/Object;,"TV;"
    .local p4, newValue:Ljava/lang/Object;,"TV;"
    const/4 v5, 0x0

    .line 891
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    .line 892
    .local v3, s:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,"Lcom/google/common/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 894
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, e:Ljava/lang/Object;,"TE;"
    :goto_0
    if-eqz v0, :cond_2

    .line 895
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 896
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v3, p1, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 900
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 901
    .local v2, entryValue:Ljava/lang/Object;,"TV;"
    if-nez v2, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move v4, v5

    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    :goto_1
    return v4

    .line 905
    .restart local v1       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v2       #entryValue:Ljava/lang/Object;,"TV;"
    :cond_0
    :try_start_1
    invoke-interface {v3, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 906
    invoke-interface {v3, v0, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 907
    const/4 v4, 0x1

    .line 914
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    .line 894
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    :cond_1
    :try_start_2
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 914
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move v4, v5

    goto :goto_1

    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v4
.end method

.method setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 796
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/google/common/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .local p1, newTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    .line 797
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 798
    return-void
.end method
