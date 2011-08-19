.class public final Ljava/net/DatagramPacket;
.super Ljava/lang/Object;
.source "DatagramPacket.java"


# instance fields
.field address:Ljava/net/InetAddress;

.field capacity:I

.field data:[B

.field length:I

.field offset:I

.field port:I


# direct methods
.method public constructor <init>([BI)V
    .registers 4
    .parameter "data"
    .parameter "length"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 61
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramPacket;->port:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramPacket;->offset:I

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 77
    return-void
.end method

.method public constructor <init>([BIILjava/net/InetAddress;I)V
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "host"
    .parameter "aPort"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 99
    invoke-virtual {p0, p5}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 100
    iput-object p4, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;

    .line 101
    return-void
.end method

.method public constructor <init>([BIILjava/net/SocketAddress;)V
    .registers 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "sockAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-direct {p0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 294
    invoke-virtual {p0, p4}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 295
    return-void
.end method

.method public constructor <init>([BILjava/net/InetAddress;I)V
    .registers 11
    .parameter "data"
    .parameter "length"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 119
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 120
    return-void
.end method

.method public constructor <init>([BILjava/net/SocketAddress;)V
    .registers 5
    .parameter "data"
    .parameter "length"
    .parameter "sockAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 271
    invoke-virtual {p0, p3}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 272
    return-void
.end method


# virtual methods
.method public declared-synchronized getAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCapacity()I
    .registers 2

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->capacity:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getData()[B
    .registers 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramPacket;->data:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLength()I
    .registers 2

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->length:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOffset()I
    .registers 2

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPort()I
    .registers 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 304
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAddress(Ljava/net/InetAddress;)V
    .registers 3
    .parameter "addr"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 177
    monitor-exit p0

    return-void

    .line 176
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData([B)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    array-length v0, p1

    iput v0, p0, Ljava/net/DatagramPacket;->length:I

    .line 201
    array-length v0, p1

    iput v0, p0, Ljava/net/DatagramPacket;->capacity:I

    .line 202
    iput-object p1, p0, Ljava/net/DatagramPacket;->data:[B

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 204
    monitor-exit p0

    return-void

    .line 200
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData([BII)V
    .registers 5
    .parameter "data"
    .parameter "offset"
    .parameter "byteCount"

    .prologue
    .line 183
    monitor-enter p0

    or-int v0, p2, p3

    if-ltz v0, :cond_c

    :try_start_5
    array-length v0, p1

    if-gt p2, v0, :cond_c

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_15

    .line 184
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_12

    .line 183
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 186
    :cond_15
    :try_start_15
    iput-object p1, p0, Ljava/net/DatagramPacket;->data:[B

    .line 187
    iput p2, p0, Ljava/net/DatagramPacket;->offset:I

    .line 188
    iput p3, p0, Ljava/net/DatagramPacket;->length:I

    .line 189
    iput p3, p0, Ljava/net/DatagramPacket;->capacity:I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_12

    .line 190
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setLength(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 223
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/net/DatagramPacket;->setLengthOnly(I)V

    .line 224
    iput p1, p0, Ljava/net/DatagramPacket;->capacity:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 225
    monitor-exit p0

    return-void

    .line 223
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLengthOnly(I)V
    .registers 5
    .parameter "length"

    .prologue
    .line 234
    monitor-enter p0

    if-ltz p1, :cond_b

    :try_start_3
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I

    add-int/2addr v0, p1

    iget-object v1, p0, Ljava/net/DatagramPacket;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_40

    .line 235
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/DatagramPacket;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buffer size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/DatagramPacket;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3d

    .line 234
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 238
    :cond_40
    :try_start_40
    iput p1, p0, Ljava/net/DatagramPacket;->length:I
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_3d

    .line 239
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setPort(I)V
    .registers 5
    .parameter "aPort"

    .prologue
    .line 248
    monitor-enter p0

    if-ltz p1, :cond_8

    const v0, 0xffff

    if-le p1, v0, :cond_24

    .line 249
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_21

    .line 248
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 251
    :cond_24
    :try_start_24
    iput p1, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_21

    .line 252
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSocketAddress(Ljava/net/SocketAddress;)V
    .registers 7
    .parameter "sockAddr"

    .prologue
    .line 314
    monitor-enter p0

    :try_start_1
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_29

    .line 315
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket address not an InetSocketAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_24

    const/4 v4, 0x0

    :goto_15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_21

    .line 314
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2

    .line 315
    :cond_24
    :try_start_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_15

    .line 318
    :cond_29
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 319
    .local v1, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 320
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket address unresolved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :cond_4c
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Ljava/net/DatagramPacket;->port:I

    .line 323
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_58
    .catchall {:try_start_24 .. :try_end_58} :catchall_21

    .line 324
    monitor-exit p0

    return-void
.end method
