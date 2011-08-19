.class public final Lorg/apache/xpath/axes/IteratorPool;
.super Ljava/lang/Object;
.source "IteratorPool.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x6658af730705416L


# instance fields
.field private final m_freeStack:Ljava/util/ArrayList;

.field private final m_orig:Lorg/apache/xml/dtm/DTMIterator;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 3
    .parameter "original"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_orig:Lorg/apache/xml/dtm/DTMIterator;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    .line 55
    return-void
.end method


# virtual methods
.method public declared-synchronized freeInstance(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInstance()Lorg/apache/xml/dtm/DTMIterator;
    .registers 6

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1b

    move-result v2

    if-eqz v2, :cond_1e

    .line 94
    :try_start_9
    iget-object v2, p0, Lorg/apache/xpath/axes/IteratorPool;->m_orig:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_13

    .line 105
    :goto_11
    monitor-exit p0

    return-object v2

    .line 96
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 98
    .local v0, ex:Ljava/lang/Exception;
    :try_start_15
    new-instance v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v2, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1b

    .line 88
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 104
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_1b

    .local v1, result:Lorg/apache/xml/dtm/DTMIterator;
    move-object v2, v1

    .line 105
    goto :goto_11
.end method

.method public declared-synchronized getInstanceOrThrow()Lorg/apache/xml/dtm/DTMIterator;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 70
    iget-object v1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_orig:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_25

    .line 76
    :goto_11
    monitor-exit p0

    return-object v1

    .line 75
    :cond_13
    :try_start_13
    iget-object v1, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/xpath/axes/IteratorPool;->m_freeStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_25

    .local v0, result:Lorg/apache/xml/dtm/DTMIterator;
    move-object v1, v0

    .line 76
    goto :goto_11

    .line 66
    .end local v0           #result:Lorg/apache/xml/dtm/DTMIterator;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method
