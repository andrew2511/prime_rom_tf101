.class final Ljava/util/Timer$TimerImpl;
.super Ljava/lang/Thread;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Timer$TimerImpl$TimerHeap;
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private finished:Z

.field private tasks:Ljava/util/Timer$TimerImpl$TimerHeap;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .parameter "name"
    .parameter "isDaemon"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 181
    new-instance v0, Ljava/util/Timer$TimerImpl$TimerHeap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer$TimerImpl$TimerHeap;-><init>(Ljava/util/Timer$1;)V

    iput-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    .line 190
    invoke-virtual {p0, p1}, Ljava/util/Timer$TimerImpl;->setName(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, p2}, Ljava/util/Timer$TimerImpl;->setDaemon(Z)V

    .line 192
    invoke-virtual {p0}, Ljava/util/Timer$TimerImpl;->start()V

    .line 193
    return-void
.end method

.method static synthetic access$302(Ljava/util/Timer$TimerImpl;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Ljava/util/Timer$TimerImpl;->finished:Z

    return p1
.end method

.method static synthetic access$400(Ljava/util/Timer$TimerImpl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    return v0
.end method

.method static synthetic access$500(Ljava/util/Timer$TimerImpl;Ljava/util/TimerTask;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/util/Timer$TimerImpl;->insertTask(Ljava/util/TimerTask;)V

    return-void
.end method

.method private insertTask(Ljava/util/TimerTask;)V
    .registers 3
    .parameter "newTask"

    .prologue
    .line 298
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v0, p1}, Ljava/util/Timer$TimerImpl$TimerHeap;->insert(Ljava/util/TimerTask;)V

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 300
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 306
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    .line 307
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->reset()V

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 309
    monitor-exit p0

    return-void

    .line 306
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public purge()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 318
    :goto_a
    return v0

    .line 316
    :cond_b
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #setter for: Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I
    invoke-static {v0, v1}, Ljava/util/Timer$TimerImpl$TimerHeap;->access$202(Ljava/util/Timer$TimerImpl$TimerHeap;I)I

    .line 317
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->deleteIfCancelled()V

    .line 318
    iget-object v0, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #getter for: Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I
    invoke-static {v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->access$200(Ljava/util/Timer$TimerImpl$TimerHeap;)I

    move-result v0

    goto :goto_a
.end method

.method public run()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    .line 203
    :cond_2
    :goto_2
    monitor-enter p0

    .line 205
    :try_start_3
    iget-boolean v7, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    if-eqz v7, :cond_9

    .line 206
    monitor-exit p0

    .line 210
    :goto_8
    return-void

    .line 208
    :cond_9
    iget-object v7, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v7}, Ljava/util/Timer$TimerImpl$TimerHeap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 209
    iget-boolean v7, p0, Ljava/util/Timer$TimerImpl;->finished:Z

    if-eqz v7, :cond_1a

    .line 210
    monitor-exit p0

    goto :goto_8

    .line 280
    :catchall_17
    move-exception v7

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v7

    .line 214
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_c3

    .line 217
    :goto_1d
    :try_start_1d
    monitor-exit p0

    goto :goto_2

    .line 220
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 222
    .local v0, currentTime:J
    iget-object v7, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v7}, Ljava/util/Timer$TimerImpl$TimerHeap;->minimum()Ljava/util/TimerTask;

    move-result-object v3

    .line 225
    .local v3, task:Ljava/util/TimerTask;
    iget-object v7, v3, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_17

    .line 226
    :try_start_2c
    iget-boolean v8, v3, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v8, :cond_39

    .line 227
    iget-object v8, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V

    .line 228
    monitor-exit v7
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_47

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_17

    goto :goto_2

    .line 232
    :cond_39
    :try_start_39
    iget-wide v8, v3, Ljava/util/TimerTask;->when:J

    sub-long v5, v8, v0

    .line 233
    .local v5, timeToSleep:J
    monitor-exit v7
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_47

    .line 235
    cmp-long v7, v5, v12

    if-lez v7, :cond_4a

    .line 238
    :try_start_42
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_c6

    .line 241
    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_17

    goto :goto_2

    .line 233
    .end local v5           #timeToSleep:J
    :catchall_47
    move-exception v8

    :try_start_48
    monitor-exit v7
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw v8

    .line 246
    .restart local v5       #timeToSleep:J
    :cond_4a
    iget-object v7, v3, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_17

    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, pos:I
    :try_start_4e
    iget-object v8, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v8}, Ljava/util/Timer$TimerImpl$TimerHeap;->minimum()Ljava/util/TimerTask;

    move-result-object v8

    iget-wide v8, v8, Ljava/util/TimerTask;->when:J

    iget-wide v10, v3, Ljava/util/TimerTask;->when:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_62

    .line 249
    iget-object v8, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #calls: Ljava/util/Timer$TimerImpl$TimerHeap;->getTask(Ljava/util/TimerTask;)I
    invoke-static {v8, v3}, Ljava/util/Timer$TimerImpl$TimerHeap;->access$100(Ljava/util/Timer$TimerImpl$TimerHeap;Ljava/util/TimerTask;)I

    move-result v2

    .line 251
    :cond_62
    iget-boolean v8, v3, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v8, :cond_74

    .line 252
    iget-object v8, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    iget-object v9, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    #calls: Ljava/util/Timer$TimerImpl$TimerHeap;->getTask(Ljava/util/TimerTask;)I
    invoke-static {v9, v3}, Ljava/util/Timer$TimerImpl$TimerHeap;->access$100(Ljava/util/Timer$TimerImpl$TimerHeap;Ljava/util/TimerTask;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V

    .line 253
    monitor-exit v7
    :try_end_72
    .catchall {:try_start_4e .. :try_end_72} :catchall_af

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_17

    goto :goto_2

    .line 257
    :cond_74
    :try_start_74
    iget-wide v8, v3, Ljava/util/TimerTask;->when:J

    invoke-virtual {v3, v8, v9}, Ljava/util/TimerTask;->setScheduledTime(J)V

    .line 260
    iget-object v8, p0, Ljava/util/Timer$TimerImpl;->tasks:Ljava/util/Timer$TimerImpl$TimerHeap;

    invoke-virtual {v8, v2}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V

    .line 263
    iget-wide v8, v3, Ljava/util/TimerTask;->period:J

    cmp-long v8, v8, v12

    if-ltz v8, :cond_b2

    .line 265
    iget-boolean v8, v3, Ljava/util/TimerTask;->fixedRate:Z

    if-eqz v8, :cond_a5

    .line 267
    iget-wide v8, v3, Ljava/util/TimerTask;->when:J

    iget-wide v10, v3, Ljava/util/TimerTask;->period:J

    add-long/2addr v8, v10

    iput-wide v8, v3, Ljava/util/TimerTask;->when:J

    .line 275
    :goto_8f
    invoke-direct {p0, v3}, Ljava/util/Timer$TimerImpl;->insertTask(Ljava/util/TimerTask;)V

    .line 279
    :goto_92
    monitor-exit v7
    :try_end_93
    .catchall {:try_start_74 .. :try_end_93} :catchall_af

    .line 280
    :try_start_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_17

    .line 282
    const/4 v4, 0x0

    .line 284
    .local v4, taskCompletedNormally:Z
    :try_start_95
    invoke-virtual {v3}, Ljava/util/TimerTask;->run()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_b7

    .line 285
    const/4 v4, 0x1

    .line 287
    if-nez v4, :cond_2

    .line 288
    monitor-enter p0

    .line 289
    const/4 v7, 0x1

    :try_start_9d
    iput-boolean v7, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    .line 290
    monitor-exit p0

    goto/16 :goto_2

    :catchall_a2
    move-exception v7

    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_a2

    throw v7

    .line 270
    .end local v4           #taskCompletedNormally:Z
    :cond_a5
    :try_start_a5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v3, Ljava/util/TimerTask;->period:J

    add-long/2addr v8, v10

    iput-wide v8, v3, Ljava/util/TimerTask;->when:J

    goto :goto_8f

    .line 279
    :catchall_af
    move-exception v8

    monitor-exit v7
    :try_end_b1
    .catchall {:try_start_a5 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v8
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_17

    .line 277
    :cond_b2
    const-wide/16 v8, 0x0

    :try_start_b4
    iput-wide v8, v3, Ljava/util/TimerTask;->when:J
    :try_end_b6
    .catchall {:try_start_b4 .. :try_end_b6} :catchall_af

    goto :goto_92

    .line 287
    .restart local v4       #taskCompletedNormally:Z
    :catchall_b7
    move-exception v7

    if-nez v4, :cond_bf

    .line 288
    monitor-enter p0

    .line 289
    const/4 v8, 0x1

    :try_start_bc
    iput-boolean v8, p0, Ljava/util/Timer$TimerImpl;->cancelled:Z

    .line 290
    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0

    :cond_bf
    throw v7

    :catchall_c0
    move-exception v7

    :try_start_c1
    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v7

    .line 215
    .end local v0           #currentTime:J
    .end local v2           #pos:I
    .end local v3           #task:Ljava/util/TimerTask;
    .end local v4           #taskCompletedNormally:Z
    .end local v5           #timeToSleep:J
    :catch_c3
    move-exception v7

    goto/16 :goto_1d

    .line 239
    .restart local v0       #currentTime:J
    .restart local v3       #task:Ljava/util/TimerTask;
    .restart local v5       #timeToSleep:J
    :catch_c6
    move-exception v7

    goto/16 :goto_45
.end method
