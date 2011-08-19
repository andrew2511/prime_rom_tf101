.class public Lcom/asus/vibe/api/IconCacheMgr;
.super Ljava/lang/Thread;
.source "IconCacheMgr.java"


# static fields
.field private static mInstance:Lcom/asus/vibe/api/IconCacheMgr;


# instance fields
.field private queuedCacher:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/api/IconCacher;",
            ">;"
        }
    .end annotation
.end field

.field private runningCacher:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/api/IconCacher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 55
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/vibe/api/IconCacher;

    invoke-virtual {v2}, Lcom/asus/vibe/api/IconCacher;->setCancelled()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 64
    :cond_0
    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 66
    :try_start_1
    iget-object v2, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/vibe/api/IconCacher;

    invoke-virtual {v2}, Lcom/asus/vibe/api/IconCacher;->setCancelled()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 60
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 61
    .local v0, e:Ljava/lang/NullPointerException;
    goto :goto_1

    .line 67
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 73
    :cond_1
    :goto_3
    return-void

    .line 69
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 70
    .restart local v0       #e:Ljava/lang/NullPointerException;
    goto :goto_3
.end method

.method public static clearCacher()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/asus/vibe/api/IconCacheMgr;->getInstance()Lcom/asus/vibe/api/IconCacheMgr;

    move-result-object v0

    invoke-direct {v0}, Lcom/asus/vibe/api/IconCacheMgr;->clear()V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/asus/vibe/api/IconCacheMgr;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/asus/vibe/api/IconCacheMgr;->mInstance:Lcom/asus/vibe/api/IconCacheMgr;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/asus/vibe/api/IconCacheMgr;

    invoke-direct {v0}, Lcom/asus/vibe/api/IconCacheMgr;-><init>()V

    sput-object v0, Lcom/asus/vibe/api/IconCacheMgr;->mInstance:Lcom/asus/vibe/api/IconCacheMgr;

    .line 31
    sget-object v0, Lcom/asus/vibe/api/IconCacheMgr;->mInstance:Lcom/asus/vibe/api/IconCacheMgr;

    const-string v1, "IconCacheMgr"

    invoke-virtual {v0, v1}, Lcom/asus/vibe/api/IconCacheMgr;->setName(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/asus/vibe/api/IconCacheMgr;->mInstance:Lcom/asus/vibe/api/IconCacheMgr;

    invoke-virtual {v0}, Lcom/asus/vibe/api/IconCacheMgr;->start()V

    .line 34
    :cond_0
    sget-object v0, Lcom/asus/vibe/api/IconCacheMgr;->mInstance:Lcom/asus/vibe/api/IconCacheMgr;

    return-object v0
.end method

.method public static newCacher(ILcom/asus/vibe/item/VibeItem_Cont;Landroid/os/Handler;)V
    .locals 2
    .parameter "itemId"
    .parameter "cont"
    .parameter "handler"

    .prologue
    .line 21
    invoke-static {}, Lcom/asus/vibe/api/IconCacheMgr;->getInstance()Lcom/asus/vibe/api/IconCacheMgr;

    move-result-object v0

    new-instance v1, Lcom/asus/vibe/api/IconCacher;

    invoke-direct {v1, p0, p1, p2}, Lcom/asus/vibe/api/IconCacher;-><init>(ILcom/asus/vibe/item/VibeItem_Cont;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/asus/vibe/api/IconCacheMgr;->push(Lcom/asus/vibe/api/IconCacher;)V

    .line 22
    return-void
.end method

.method private push(Lcom/asus/vibe/api/IconCacher;)V
    .locals 2
    .parameter "cacher"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 40
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 79
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v8, :cond_1

    .line 82
    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Lcom/asus/vibe/api/IconCacheMgr;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 150
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v5, "ASUS@Vibe"

    const-string v6, "IconCacherMgr: interrupted!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 88
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 90
    iget-object v6, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/vibe/api/IconCacher;

    .line 91
    .local v0, cacher:Lcom/asus/vibe/api/IconCacher;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/asus/vibe/api/IconCacher;->isCancelledOrDone()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    iget-object v6, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    .end local v0           #cacher:Lcom/asus/vibe/api/IconCacher;
    :cond_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :try_start_3
    iget-object v6, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 97
    const/4 v2, 0x0

    :goto_2
    :try_start_4
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 98
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/vibe/api/IconCacher;

    invoke-virtual {v5}, Lcom/asus/vibe/api/IconCacher;->isCancelledOrDone()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 99
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/asus/vibe/api/IconCacher;

    invoke-virtual {v5}, Lcom/asus/vibe/api/IconCacher;->remove()V

    .line 100
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 95
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 103
    :cond_5
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 104
    :try_start_8
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v8, :cond_0

    .line 107
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/vibe/api/IconCacher;

    .line 108
    .local v3, newCacher:Lcom/asus/vibe/api/IconCacher;
    if-eqz v3, :cond_0

    .line 109
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 110
    const/4 v2, 0x0

    :goto_3
    :try_start_9
    iget-object v6, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 111
    iget-object v6, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/vibe/api/IconCacher;

    .line 112
    .restart local v0       #cacher:Lcom/asus/vibe/api/IconCacher;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/asus/vibe/api/IconCacher;->getId()I

    move-result v6

    invoke-virtual {v3}, Lcom/asus/vibe/api/IconCacher;->getId()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 113
    iget-object v6, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 110
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 103
    .end local v0           #cacher:Lcom/asus/vibe/api/IconCacher;
    .end local v3           #newCacher:Lcom/asus/vibe/api/IconCacher;
    :catchall_1
    move-exception v5

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v5
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    .line 116
    .restart local v3       #newCacher:Lcom/asus/vibe/api/IconCacher;
    :cond_7
    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 119
    :try_start_d
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0

    .line 120
    const/4 v2, 0x0

    :goto_4
    :try_start_e
    iget-object v6, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 121
    iget-object v6, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/vibe/api/IconCacher;

    .line 122
    .restart local v0       #cacher:Lcom/asus/vibe/api/IconCacher;
    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/asus/vibe/api/IconCacher;->getId()I

    move-result v6

    invoke-virtual {v3}, Lcom/asus/vibe/api/IconCacher;->getId()I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-result v7

    if-ne v6, v7, :cond_8

    .line 123
    const/4 v3, 0x0

    .line 120
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 116
    .end local v0           #cacher:Lcom/asus/vibe/api/IconCacher;
    :catchall_2
    move-exception v6

    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v6
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0

    .line 126
    :cond_9
    :try_start_11
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 129
    if-eqz v3, :cond_a

    .line 130
    :try_start_12
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_b

    .line 131
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0

    .line 132
    :try_start_13
    iget-object v6, p0, Lcom/asus/vibe/api/IconCacheMgr;->runningCacher:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cacher No."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/asus/vibe/api/IconCacher;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 134
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 135
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 144
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_a
    :goto_5
    :try_start_14
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_0

    .line 145
    :goto_6
    :try_start_15
    iget-object v6, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0xf

    if-le v6, v7, :cond_c

    .line 146
    iget-object v6, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 148
    :catchall_3
    move-exception v6

    monitor-exit v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    throw v6
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_0

    .line 126
    :catchall_4
    move-exception v6

    :try_start_17
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    throw v6
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_0

    .line 135
    :catchall_5
    move-exception v6

    :try_start_19
    monitor-exit v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    throw v6

    .line 138
    :cond_b
    iget-object v5, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_0

    .line 139
    :try_start_1b
    iget-object v6, p0, Lcom/asus/vibe/api/IconCacheMgr;->queuedCacher:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 140
    monitor-exit v5

    goto :goto_5

    :catchall_6
    move-exception v6

    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :try_start_1c
    throw v6
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_0

    .line 148
    :cond_c
    :try_start_1d
    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    goto/16 :goto_0
.end method
