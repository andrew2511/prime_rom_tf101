.class public Lgov/nist/javax/sip/parser/Pipeline;
.super Ljava/io/InputStream;
.source "Pipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/parser/Pipeline$Buffer;,
        Lgov/nist/javax/sip/parser/Pipeline$MyTimer;
    }
.end annotation


# instance fields
.field private buffList:Ljava/util/LinkedList;

.field private currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

.field private isClosed:Z

.field private myTimerTask:Ljava/util/TimerTask;

.field private pipe:Ljava/io/InputStream;

.field private readTimeout:I

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/util/Timer;)V
    .registers 5
    .parameter "pipe"
    .parameter "readTimeout"
    .parameter "timer"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 125
    iput-object p3, p0, Lgov/nist/javax/sip/parser/Pipeline;->timer:Ljava/util/Timer;

    .line 126
    iput-object p1, p0, Lgov/nist/javax/sip/parser/Pipeline;->pipe:Ljava/io/InputStream;

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    .line 128
    iput p2, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    .line 129
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
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    .line 154
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 155
    :try_start_6
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    .line 159
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->pipe:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 160
    return-void

    .line 156
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 164
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v3

    .line 165
    :try_start_4
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v2, v2, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    iget-object v4, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v4, v4, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    if-ge v2, v4, :cond_28

    .line 167
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->getNextByte()I

    move-result v1

    .line 168
    .local v1, retval:I
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v2, v2, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    iget-object v4, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v4, v4, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    if-ne v2, v4, :cond_25

    .line 169
    const/4 v2, 0x0

    iput-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    .line 170
    :cond_25
    monitor-exit v3

    move v2, v1

    .line 186
    .end local v1           #retval:I
    :goto_27
    return v2

    .line 173
    :cond_28
    iget-boolean v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    if-eqz v2, :cond_37

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 174
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_77

    move v2, v5

    goto :goto_27

    .line 177
    :cond_37
    :try_start_37
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 178
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 179
    iget-boolean v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_77
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_46} :catch_6b
    .catch Ljava/util/NoSuchElementException; {:try_start_37 .. :try_end_46} :catch_7a

    if-eqz v2, :cond_37

    .line 180
    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_77

    move v2, v5

    goto :goto_27

    .line 182
    :cond_4b
    :try_start_4b
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iput-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    .line 183
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->getNextByte()I

    move-result v1

    .line 184
    .restart local v1       #retval:I
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v2, v2, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    iget-object v4, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    iget v4, v4, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    if-ne v2, v4, :cond_68

    .line 185
    const/4 v2, 0x0

    iput-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->currentBuffer:Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    :try_end_68
    .catchall {:try_start_4b .. :try_end_68} :catchall_77
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_68} :catch_6b
    .catch Ljava/util/NoSuchElementException; {:try_start_4b .. :try_end_68} :catch_7a

    .line 186
    :cond_68
    :try_start_68
    monitor-exit v3

    move v2, v1

    goto :goto_27

    .line 187
    .end local v1           #retval:I
    :catch_6b
    move-exception v2

    move-object v0, v2

    .line 188
    .local v0, ex:Ljava/lang/InterruptedException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_77
    move-exception v2

    monitor-exit v3
    :try_end_79
    .catchall {:try_start_68 .. :try_end_79} :catchall_77

    throw v2

    .line 189
    :catch_7a
    move-exception v2

    move-object v0, v2

    .line 190
    .local v0, ex:Ljava/util/NoSuchElementException;
    :try_start_7c
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    .line 191
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_89
    .catchall {:try_start_7c .. :try_end_89} :catchall_77
.end method

.method public startTimer()V
    .registers 5

    .prologue
    .line 107
    iget v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 113
    :goto_5
    return-void

    .line 111
    :cond_6
    new-instance v0, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;

    invoke-direct {v0, p0, p0}, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;-><init>(Lgov/nist/javax/sip/parser/Pipeline;Lgov/nist/javax/sip/parser/Pipeline;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    .line 112
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    iget v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_5
.end method

.method public stopTimer()V
    .registers 3

    .prologue
    .line 116
    iget v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->readTimeout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 120
    :cond_5
    :goto_5
    return-void

    .line 118
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline;->myTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    goto :goto_5
.end method

.method public write([B)V
    .registers 5
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-boolean v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    if-eqz v1, :cond_c

    .line 144
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Closed!!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_c
    new-instance v0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    array-length v1, p1

    invoke-direct {v0, p0, p1, v1}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;-><init>(Lgov/nist/javax/sip/parser/Pipeline;[BI)V

    .line 146
    .local v0, buff:Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 147
    :try_start_15
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 149
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public write([BII)V
    .registers 7
    .parameter "bytes"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-boolean v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->isClosed:Z

    if-eqz v1, :cond_c

    .line 133
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Closed!!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_c
    new-instance v0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;

    invoke-direct {v0, p0, p1, p3}, Lgov/nist/javax/sip/parser/Pipeline$Buffer;-><init>(Lgov/nist/javax/sip/parser/Pipeline;[BI)V

    .line 135
    .local v0, buff:Lgov/nist/javax/sip/parser/Pipeline$Buffer;
    iput p2, v0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    .line 136
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 137
    :try_start_16
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Pipeline;->buffList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v2
.end method
