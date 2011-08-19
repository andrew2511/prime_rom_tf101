.class final Lcom/zinio/mobile/android/a/a/m;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1570
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1568
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/m;->a:Ljava/util/LinkedList;

    .line 1571
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/a/a/m;->setDaemon(Z)V

    .line 1572
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/m;->start()V

    .line 1573
    return-void
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 4
    .parameter

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/m;->a:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1622
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/m;->a:Ljava/util/LinkedList;

    new-instance v2, Lcom/zinio/mobile/android/a/a/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/zinio/mobile/android/a/a/a;-><init>(Lcom/zinio/mobile/android/a/a/m;Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1623
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1624
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/m;->a:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1629
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/m;->a:Ljava/util/LinkedList;

    new-instance v2, Lcom/zinio/mobile/android/a/a/a;

    invoke-direct {v2, p0, p1, p2}, Lcom/zinio/mobile/android/a/a/a;-><init>(Lcom/zinio/mobile/android/a/a/m;Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1630
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1631
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final run()V
    .locals 6

    .prologue
    .line 1578
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/m;->a:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1579
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1581
    :try_start_1
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1582
    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1586
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1588
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/m;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/a;

    .line 1590
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/a;->a()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    .line 1591
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/a;->b()Lcom/zinio/mobile/android/a/a/x;

    move-result-object v0

    .line 1593
    if-nez v0, :cond_2

    .line 1594
    invoke-static {v1}, Lcom/zinio/mobile/android/resources/a/a;->c(Lcom/zinio/mobile/android/a/a/j;)J

    move-result-wide v2

    .line 1596
    invoke-virtual {v1, v2, v3}, Lcom/zinio/mobile/android/a/a/j;->b(J)V

    goto :goto_0

    .line 1599
    :cond_2
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1600
    invoke-static {v1, v0}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v2

    .line 1604
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1608
    invoke-interface {v0}, Lcom/zinio/mobile/android/a/a/x;->b()Lcom/zinio/mobile/android/a/a/w;

    move-result-object v2

    sget-object v4, Lcom/zinio/mobile/android/a/a/w;->d:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v2, v4}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1609
    const-wide/16 v4, 0x2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    mul-long/2addr v2, v4

    .line 1614
    :goto_2
    invoke-static {v0}, Lcom/zinio/mobile/android/a/a/j;->b(Lcom/zinio/mobile/android/a/a/x;)Z

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/zinio/mobile/android/a/a/j;->a(JZ)V

    goto :goto_0

    .line 1611
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_2
.end method
