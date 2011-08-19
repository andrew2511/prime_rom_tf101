.class Lcom/android/server/vpn/DaemonProxy;
.super Ljava/lang/Object;
.source "DaemonProxy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DBG:Z = true

.field private static final END_OF_ARGUMENTS:I = 0xff

.field private static final SVC_START_CMD:Ljava/lang/String; = "ctl.start"

.field private static final SVC_STATE_CMD_PREFIX:Ljava/lang/String; = "init.svc."

.field private static final SVC_STATE_RUNNING:Ljava/lang/String; = "running"

.field private static final SVC_STATE_STOPPED:Ljava/lang/String; = "stopped"

.field private static final SVC_STOP_CMD:Ljava/lang/String; = "ctl.stop"

.field private static final WAITING_TIME:I = 0xf

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient mControlSocket:Landroid/net/LocalSocket;

.field private mName:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "daemonName"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/vpn/DaemonProxy;->mName:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SProxy_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/DaemonProxy;->mTag:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private blockUntil(Ljava/lang/String;I)Z
    .registers 10
    .parameter "expectedState"
    .parameter "waitTime"

    .prologue
    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init.svc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/vpn/DaemonProxy;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, cmd:Ljava/lang/String;
    const/16 v3, 0xc8

    .line 171
    .local v3, sleepTime:I
    mul-int/lit16 v4, p2, 0x3e8

    div-int v2, v4, v3

    .line 172
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    if-ge v1, v2, :cond_58

    .line 173
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 175
    iget-object v4, p0, Lcom/android/server/vpn/DaemonProxy;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/vpn/DaemonProxy;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msec"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_58
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 180
    :cond_61
    invoke-direct {p0, v3}, Lcom/android/server/vpn/DaemonProxy;->sleep(I)V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method private createServiceSocket()Landroid/net/LocalSocket;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    .line 137
    .local v4, s:Landroid/net/LocalSocket;
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v5, p0, Lcom/android/server/vpn/DaemonProxy;->mName:Ljava/lang/String;

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 141
    .local v0, a:Landroid/net/LocalSocketAddress;
    const/4 v2, 0x0

    .line 142
    .local v2, excp:Ljava/io/IOException;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    const/16 v5, 0xa

    if-ge v3, v5, :cond_2a

    .line 144
    :try_start_14
    invoke-virtual {v4, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    .line 145
    return-object v4

    .line 146
    :catch_18
    move-exception v1

    .line 147
    .local v1, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/server/vpn/DaemonProxy;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "service not yet listen()ing; try again"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move-object v2, v1

    .line 149
    const/16 v5, 0x1f4

    invoke-direct {p0, v5}, Lcom/android/server/vpn/DaemonProxy;->sleep(I)V

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 152
    .end local v1           #e:Ljava/io/IOException;
    :cond_2a
    throw v2
.end method

.method private getControlSocketOutput()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/vpn/DaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_b

    .line 157
    iget-object v0, p0, Lcom/android/server/vpn/DaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 159
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no control socket available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getResultFromSocket(Z)I
    .registers 8
    .parameter "blocking"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v2, p0, Lcom/android/server/vpn/DaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    .line 125
    .local v2, s:Landroid/net/LocalSocket;
    if-nez v2, :cond_7

    move v3, v4

    .line 132
    :goto_6
    return v3

    .line 126
    :cond_7
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 127
    .local v1, in:Ljava/io/InputStream;
    if-nez p1, :cond_15

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_15

    move v3, v4

    goto :goto_6

    .line 129
    :cond_15
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 130
    .local v0, data:I
    iget-object v3, p0, Lcom/android/server/vpn/DaemonProxy;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got data from control socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    .line 132
    goto :goto_6
.end method

.method private outputString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .parameter "out"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 187
    .local v0, bytes:[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 188
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 189
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 190
    return-void
.end method

.method private sleep(I)V
    .registers 5
    .parameter "msec"

    .prologue
    .line 194
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_8

    .line 198
    return-void

    .line 195
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 196
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method closeControlSocket()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v1, p0, Lcom/android/server/vpn/DaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_6

    .line 108
    :goto_5
    return-void

    .line 102
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/vpn/DaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_e

    .line 106
    iput-object v3, p0, Lcom/android/server/vpn/DaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    goto :goto_5

    .line 103
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 104
    .local v0, e:Ljava/io/IOException;
    :try_start_10
    iget-object v1, p0, Lcom/android/server/vpn/DaemonProxy;->mTag:Ljava/lang/String;

    const-string v2, "close control socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1a

    .line 106
    iput-object v3, p0, Lcom/android/server/vpn/DaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    goto :goto_5

    .end local v0           #e:Ljava/io/IOException;
    :catchall_1a
    move-exception v1

    iput-object v3, p0, Lcom/android/server/vpn/DaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    throw v1
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/vpn/DaemonProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getResultFromSocket()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/vpn/DaemonProxy;->getResultFromSocket(Z)I

    move-result v0

    return v0
.end method

.method isStopped()Z
    .registers 4

    .prologue
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init.svc."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vpn/DaemonProxy;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, cmd:Ljava/lang/String;
    const-string/jumbo v1, "stopped"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method varargs sendCommand([Ljava/lang/String;)V
    .registers 11
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/server/vpn/DaemonProxy;->getControlSocketOutput()Ljava/io/OutputStream;

    move-result-object v4

    .line 83
    .local v4, out:Ljava/io/OutputStream;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_7
    if-ge v2, v3, :cond_11

    aget-object v0, v1, v2

    .local v0, arg:Ljava/lang/String;
    invoke-direct {p0, v4, v0}, Lcom/android/server/vpn/DaemonProxy;->outputString(Ljava/io/OutputStream;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 84
    .end local v0           #arg:Ljava/lang/String;
    :cond_11
    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 85
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 87
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/vpn/DaemonProxy;->getResultFromSocket(Z)I

    move-result v5

    .line 88
    .local v5, result:I
    array-length v6, p1

    if-eq v5, v6, :cond_3b

    .line 89
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "socket error, result from service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 92
    :cond_3b
    return-void
.end method

.method start()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/vpn/DaemonProxy;->mName:Ljava/lang/String;

    .line 71
    .local v0, svc:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/vpn/DaemonProxy;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start VPN daemon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v1, "ctl.start"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "running"

    const/16 v2, 0xf

    invoke-direct {p0, v1, v2}, Lcom/android/server/vpn/DaemonProxy;->blockUntil(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_43

    .line 75
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot start service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_43
    invoke-direct {p0}, Lcom/android/server/vpn/DaemonProxy;->createServiceSocket()Landroid/net/LocalSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vpn/DaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    .line 79
    return-void
.end method

.method stop()V
    .registers 6

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/server/vpn/DaemonProxy;->mName:Ljava/lang/String;

    .line 112
    .local v1, svc:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/vpn/DaemonProxy;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop VPN daemon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v2, "ctl.stop"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v2, "stopped"

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lcom/android/server/vpn/DaemonProxy;->blockUntil(Ljava/lang/String;I)Z

    move-result v0

    .line 115
    .local v0, success:Z
    iget-object v2, p0, Lcom/android/server/vpn/DaemonProxy;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", success? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method
