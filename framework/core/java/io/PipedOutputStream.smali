.class public Ljava/io/PipedOutputStream;
.super Ljava/io/OutputStream;
.source "PipedOutputStream.java"


# instance fields
.field private target:Ljava/io/PipedInputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedInputStream;)V
    .registers 2
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 62
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    .line 75
    .local v0, stream:Ljava/io/PipedInputStream;
    if-eqz v0, :cond_a

    .line 76
    invoke-virtual {v0}, Ljava/io/PipedInputStream;->done()V

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    .line 79
    :cond_a
    return-void
.end method

.method public connect(Ljava/io/PipedInputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    if-nez p1, :cond_8

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 94
    :cond_8
    monitor-enter p1

    .line 95
    :try_start_9
    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_18

    .line 96
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v0

    .line 98
    :cond_18
    :try_start_18
    iget-boolean v0, p1, Ljava/io/PipedInputStream;->isConnected:Z

    if-eqz v0, :cond_24

    .line 99
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_24
    invoke-virtual {p1}, Ljava/io/PipedInputStream;->establishConnection()V

    .line 102
    iput-object p1, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    .line 103
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_15

    .line 104
    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    .line 116
    .local v0, stream:Ljava/io/PipedInputStream;
    if-nez v0, :cond_5

    .line 123
    :goto_4
    return-void

    .line 120
    :cond_5
    monitor-enter v0

    .line 121
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit v0

    goto :goto_4

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public write(I)V
    .registers 5
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    .line 181
    .local v0, stream:Ljava/io/PipedInputStream;
    if-nez v0, :cond_c

    .line 182
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_c
    invoke-virtual {v0, p1}, Ljava/io/PipedInputStream;->receive(I)V

    .line 185
    return-void
.end method

.method public write([BII)V
    .registers 4
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 156
    return-void
.end method
