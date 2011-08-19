.class public Lorg/apache/harmony/dalvik/ddmc/DdmServer;
.super Ljava/lang/Object;
.source "DdmServer.java"


# static fields
.field public static final CLIENT_PROTOCOL_VERSION:I = 0x1

.field private static final CONNECTED:I = 0x1

.field private static final DISCONNECTED:I = 0x2

.field private static mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mRegistrationComplete:Z

.field private static mRegistrationTimedOut:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    .line 37
    sput-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    .line 38
    sput-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static broadcast(I)V
    .registers 6
    .parameter "event"

    .prologue
    .line 108
    sget-object v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 109
    :try_start_3
    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 110
    .local v2, values:Ljava/util/Collection;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 112
    .local v1, iter:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    .line 114
    .local v0, handler:Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    packed-switch p0, :pswitch_data_30

    .line 122
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 125
    .end local v0           #handler:Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v2           #values:Ljava/util/Collection;
    :catchall_22
    move-exception v4

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v4

    .line 116
    .restart local v0       #handler:Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    .restart local v1       #iter:Ljava/util/Iterator;
    .restart local v2       #values:Ljava/util/Collection;
    :pswitch_25
    :try_start_25
    invoke-virtual {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->connected()V

    goto :goto_d

    .line 119
    :pswitch_29
    invoke-virtual {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->disconnected()V

    goto :goto_d

    .line 125
    .end local v0           #handler:Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    :cond_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_22

    .line 126
    return-void

    .line 114
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
    .end packed-switch
.end method

.method private static dispatch(I[BII)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 11
    .parameter "type"
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 143
    sget-object v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 148
    :cond_3
    :goto_3
    :try_start_3
    sget-boolean v4, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    if-nez v4, :cond_20

    sget-boolean v4, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    if-nez v4, :cond_20

    .line 151
    :try_start_b
    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1a
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_12} :catch_1d

    .line 156
    :try_start_12
    sget-boolean v4, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    if-nez v4, :cond_3

    .line 158
    const/4 v4, 0x1

    sput-boolean v4, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z

    goto :goto_3

    .line 163
    :catchall_1a
    move-exception v4

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v4

    .line 152
    :catch_1d
    move-exception v4

    move-object v2, v4

    .line 153
    .local v2, ie:Ljava/lang/InterruptedException;
    goto :goto_3

    .line 162
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :cond_20
    :try_start_20
    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    .line 163
    .local v1, handler:Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_1a

    .line 166
    if-nez v1, :cond_31

    .line 167
    const/4 v3, 0x0

    .line 171
    :goto_30
    return-object v3

    .line 170
    :cond_31
    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 171
    .local v0, chunk:Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-virtual {v1, v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v3

    goto :goto_30
.end method

.method private static native nativeSendChunk(I[BII)V
.end method

.method public static registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V
    .registers 6
    .parameter "type"
    .parameter "handler"

    .prologue
    .line 53
    if-nez p1, :cond_8

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56
    :cond_8
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 57
    :try_start_b
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw v1

    .line 61
    :cond_3d
    :try_start_3d
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_3a

    .line 63
    return-void
.end method

.method public static registrationComplete()V
    .registers 2

    .prologue
    .line 83
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 84
    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    .line 85
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V
    .registers 5
    .parameter "chunk"

    .prologue
    .line 96
    iget v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    iget-object v1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    iget v2, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    iget v3, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->nativeSendChunk(I[BII)V

    .line 97
    return-void
.end method

.method public static unregisterHandler(I)Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    .registers 4
    .parameter "type"

    .prologue
    .line 71
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 72
    :try_start_3
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    monitor-exit v0

    return-object p0

    .line 73
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
