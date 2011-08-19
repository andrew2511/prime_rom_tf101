.class public Lorg/apache/xml/utils/StringBufferPool;
.super Ljava/lang/Object;
.source "StringBufferPool.java"


# static fields
.field private static m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lorg/apache/xml/utils/ObjectPool;

    const-class v1, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xml/utils/StringBufferPool;->m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized free(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 3
    .parameter "sb"

    .prologue
    .line 57
    const-class v0, Lorg/apache/xml/utils/StringBufferPool;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 58
    sget-object v1, Lorg/apache/xml/utils/StringBufferPool;->m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v1, p0}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    .line 59
    monitor-exit v0

    return-void

    .line 57
    :catchall_e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get()Lorg/apache/xml/utils/FastStringBuffer;
    .registers 2

    .prologue
    .line 44
    const-class v1, Lorg/apache/xml/utils/StringBufferPool;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/apache/xml/utils/StringBufferPool;->m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/FastStringBuffer;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
