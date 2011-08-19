.class public Ljava/io/PipedWriter;
.super Ljava/io/Writer;
.source "PipedWriter.java"


# instance fields
.field private destination:Ljava/io/PipedReader;

.field private isClosed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedReader;)V
    .registers 2
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0, p1}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    .line 57
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
    .line 69
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 70
    .local v0, reader:Ljava/io/PipedReader;
    if-eqz v0, :cond_d

    .line 71
    invoke-virtual {v0}, Ljava/io/PipedReader;->done()V

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PipedWriter;->isClosed:Z

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 75
    :cond_d
    return-void
.end method

.method public connect(Ljava/io/PipedReader;)V
    .registers 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_8

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 91
    :cond_8
    monitor-enter p1

    .line 92
    :try_start_9
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    if-eqz v0, :cond_18

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v0

    .line 95
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Ljava/io/PipedReader;->establishConnection()V

    .line 96
    iput-object p1, p0, Ljava/io/PipedWriter;->lock:Ljava/lang/Object;

    .line 97
    iput-object p1, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 98
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_15

    .line 99
    return-void
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 111
    .local v0, reader:Ljava/io/PipedReader;
    iget-boolean v1, p0, Ljava/io/PipedWriter;->isClosed:Z

    if-eqz v1, :cond_e

    .line 112
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_e
    if-nez v0, :cond_11

    .line 121
    :goto_10
    return-void

    .line 118
    :cond_11
    monitor-enter v0

    .line 119
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 120
    monitor-exit v0

    goto :goto_10

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public write(I)V
    .registers 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 186
    .local v0, reader:Ljava/io/PipedReader;
    if-nez v0, :cond_c

    .line 187
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_c
    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PipedReader;->receive(C)V

    .line 190
    return-void
.end method

.method public write([CII)V
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 157
    .local v0, reader:Ljava/io/PipedReader;
    if-nez v0, :cond_c

    .line 158
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_c
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedReader;->receive([CII)V

    .line 161
    return-void
.end method
