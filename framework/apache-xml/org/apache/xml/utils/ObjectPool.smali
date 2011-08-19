.class public Lorg/apache/xml/utils/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x76399dd12023a5c3L


# instance fields
.field private final freeStack:Ljava/util/ArrayList;

.field private final objectType:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 4
    .parameter "type"
    .parameter "size"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    :try_start_3
    invoke-static {}, Lorg/apache/xml/utils/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lorg/apache/xml/utils/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_e} :catch_16

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    .line 73
    return-void

    .line 68
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 70
    .local v0, cnfe:Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized freeInstance(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 173
    monitor-exit p0

    return-void

    .line 167
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInstance()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1f

    move-result v1

    if-eqz v1, :cond_22

    .line 136
    :try_start_9
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_1f
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_e} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_e} :catch_11

    move-result-object v1

    .line 150
    :goto_f
    monitor-exit p0

    return-object v1

    .line 139
    :catch_11
    move-exception v1

    .line 142
    :goto_12
    :try_start_12
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_EXCEPTION_CREATING_POOL"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1f

    .line 130
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 148
    :cond_22
    :try_start_22
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_1f

    move-result-object v0

    .local v0, result:Ljava/lang/Object;
    move-object v1, v0

    .line 150
    goto :goto_f

    .line 138
    .end local v0           #result:Ljava/lang/Object;
    :catch_32
    move-exception v1

    goto :goto_12
.end method

.method public declared-synchronized getInstanceIfFree()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 113
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1c

    move-result-object v0

    .local v0, result:Ljava/lang/Object;
    move-object v1, v0

    .line 117
    .end local v0           #result:Ljava/lang/Object;
    :goto_18
    monitor-exit p0

    return-object v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_18

    .line 109
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method
