.class public Ljava/net/InetSocketAddress;
.super Ljava/net/SocketAddress;
.source "InetSocketAddress.java"


# static fields
.field private static final serialVersionUID:J = 0x467194616ff9aa45L


# instance fields
.field private final addr:Ljava/net/InetAddress;

.field private final hostname:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "port"

    .prologue
    .line 45
    const/4 v0, 0x0

    check-cast v0, Ljava/net/InetAddress;

    invoke-direct {p0, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "host"
    .parameter "port"

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;IZ)V

    .line 85
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZ)V
    .registers 9
    .parameter "hostname"
    .parameter "port"
    .parameter "needResolved"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 92
    if-eqz p1, :cond_c

    if-ltz p2, :cond_c

    const v2, 0xffff

    if-le p2, v2, :cond_2f

    .line 93
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_2f
    const/4 v0, 0x0

    .line 97
    .local v0, addr:Ljava/net/InetAddress;
    if-eqz p3, :cond_40

    .line 98
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 99
    .local v1, smgr:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_3b

    .line 100
    invoke-virtual {v1, p1, p2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 103
    :cond_3b
    :try_start_3b
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3e
    .catch Ljava/net/UnknownHostException; {:try_start_3b .. :try_end_3e} :catch_47

    move-result-object v0

    .line 104
    const/4 p1, 0x0

    .line 108
    .end local v1           #smgr:Ljava/lang/SecurityManager;
    :cond_40
    :goto_40
    iput-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    .line 109
    iput-object p1, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    .line 110
    iput p2, p0, Ljava/net/InetSocketAddress;->port:I

    .line 111
    return-void

    .line 105
    .restart local v1       #smgr:Ljava/lang/SecurityManager;
    :catch_47
    move-exception v2

    goto :goto_40
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 6
    .parameter "address"
    .parameter "port"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 60
    if-ltz p2, :cond_a

    const v0, 0xffff

    if-le p2, v0, :cond_23

    .line 61
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_23
    if-nez p1, :cond_2f

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    :goto_27
    iput-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    .line 65
    iput p2, p0, Ljava/net/InetSocketAddress;->port:I

    .line 66
    return-void

    :cond_2f
    move-object v0, p1

    .line 63
    goto :goto_27
.end method

.method public static createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .registers 4
    .parameter "host"
    .parameter "port"

    .prologue
    .line 128
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 229
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "socketAddr"

    .prologue
    const/4 v4, 0x0

    .line 191
    if-ne p0, p1, :cond_5

    .line 192
    const/4 v2, 0x1

    .line 216
    :goto_4
    return v2

    .line 194
    :cond_5
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_b

    move v2, v4

    .line 195
    goto :goto_4

    .line 197
    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 200
    .local v1, iSockAddr:Ljava/net/InetSocketAddress;
    iget v2, p0, Ljava/net/InetSocketAddress;->port:I

    iget v3, v1, Ljava/net/InetSocketAddress;->port:I

    if-eq v2, v3, :cond_17

    move v2, v4

    .line 201
    goto :goto_4

    .line 206
    :cond_17
    iget-object v2, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v2, :cond_28

    iget-object v2, v1, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v2, :cond_28

    .line 207
    iget-object v2, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .line 211
    :cond_28
    iget-object v2, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v2, :cond_2e

    move v2, v4

    .line 214
    goto :goto_4

    .line 216
    :cond_2e
    iget-object v2, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    iget-object v3, v1, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getHostName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    goto :goto_a
.end method

.method public final getPort()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Ljava/net/InetSocketAddress;->port:I

    return v0
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v0, :cond_e

    .line 222
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    add-int/2addr v0, v1

    .line 224
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    add-int/2addr v0, v1

    goto :goto_d
.end method

.method public final isUnresolved()Z
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-eqz v1, :cond_24

    iget-object v1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    iget-object v1, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    goto :goto_f
.end method
