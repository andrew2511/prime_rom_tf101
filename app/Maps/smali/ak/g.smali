.class public Lak/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected volatile a:Ljava/lang/String;

.field protected final b:Ljava/util/Vector;

.field protected final c:B

.field protected d:Ljava/util/Vector;

.field final synthetic e:Lak/h;

.field private f:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lak/h;Ljava/lang/String;Ljava/util/Vector;B)V
    .locals 1

    iput-object p1, p0, Lak/g;->e:Lak/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lak/g;->d:Ljava/util/Vector;

    iput-object p2, p0, Lak/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lak/g;->b:Ljava/util/Vector;

    iput-byte p4, p0, Lak/g;->c:B

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "REQUEST"

    invoke-static {v0, p1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lak/g;->e:Lak/h;

    invoke-virtual {v0}, Lak/h;->s()V

    iget-object v0, p0, Lak/g;->e:Lak/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lak/h;->a(I)V

    return-void
.end method

.method private e()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lak/g;->e:Lak/h;

    invoke-virtual {v0}, Lak/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    move v1, v2

    :goto_1
    :try_start_0
    iget-object v0, p0, Lak/g;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lak/g;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lak/d;

    invoke-interface {v0}, Lak/d;->e_()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto :goto_0
.end method

.method private f()J
    .locals 6

    iget-object v0, p0, Lak/g;->e:Lak/h;

    invoke-static {v0}, Lak/h;->j(Lak/h;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lak/g;->e:Lak/h;

    invoke-static {v0}, Lak/h;->k(Lak/h;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :pswitch_0
    iget-object v0, p0, Lak/g;->e:Lak/h;

    invoke-static {v0}, Lak/h;->k(Lak/h;)J

    move-result-wide v0

    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iget-object v2, p0, Lak/g;->e:Lak/h;

    invoke-static {v2}, Lak/h;->l(Lak/h;)Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iget-object v4, p0, Lak/g;->e:Lak/h;

    invoke-static {v4}, Lak/h;->k(Lak/h;)J

    move-result-wide v4

    rem-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected a()Ljava/util/Vector;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lak/g;->d:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lak/g;->d:Ljava/util/Vector;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lak/d;)V
    .locals 1

    iget-object v0, p0, Lak/g;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface {p1}, Lak/d;->e_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lak/g;->e:Lak/h;

    invoke-virtual {v0}, Lak/h;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lak/g;->b()V

    :cond_0
    return-void
.end method

.method protected a(I)Z
    .locals 2

    iget-object v0, p0, Lak/g;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lak/g;->b:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lak/g;->e:Lak/h;

    invoke-virtual {v0}, Lak/h;->l()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lak/g;->e:Lak/h;

    invoke-static {v0}, Lak/h;->a(Lak/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lak/g;->a()Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lak/g;->f:Ljava/util/Vector;

    iget-object v1, p0, Lak/g;->f:Ljava/util/Vector;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lak/g;->e:Lak/h;

    invoke-static {v1}, Lak/h;->b(Lak/h;)I

    iget-object v1, p0, Lak/g;->f:Ljava/util/Vector;

    invoke-static {v1}, Lak/h;->a(Ljava/util/Vector;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lak/g;->e:Lak/h;

    invoke-static {v1}, Lak/h;->c(Lak/h;)I

    :cond_1
    iget-object v1, p0, Lak/g;->f:Ljava/util/Vector;

    invoke-static {v1}, Lak/h;->b(Ljava/util/Vector;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lak/g;->e:Lak/h;

    invoke-static {v1}, Lak/h;->d(Lak/h;)I

    :cond_2
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "DataRequestDispatcher"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_1
    iget-object v1, p0, Lak/g;->f:Ljava/util/Vector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    :try_start_3
    iget-object v1, p0, Lak/g;->e:Lak/h;

    invoke-static {v1}, Lak/h;->a(Lak/h;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_3
    :try_start_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()V
    .locals 1

    invoke-direct {p0}, Lak/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lak/g;->b()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lak/g;->c()V

    return-void
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lak/g;->e:Lak/h;

    invoke-static {v0}, Lak/h;->a(Lak/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lak/g;->f:Ljava/util/Vector;

    const/4 v2, 0x0

    iput-object v2, p0, Lak/g;->f:Ljava/util/Vector;

    iget-object v2, p0, Lak/g;->e:Lak/h;

    iget-object v3, p0, Lak/g;->e:Lak/h;

    invoke-static {v3}, Lak/h;->e(Lak/h;)Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->b()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lak/h;->a(Lak/h;J)J

    iget-object v2, p0, Lak/g;->e:Lak/h;

    invoke-static {v2}, Lak/h;->a(Lak/h;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v1}, Lak/h;->a(Ljava/util/Vector;)Z

    move-result v0

    invoke-static {v1}, Lak/h;->b(Ljava/util/Vector;)Z

    move-result v2

    :goto_0
    :try_start_1
    iget-object v3, p0, Lak/g;->e:Lak/h;

    iget-boolean v3, v3, Lak/h;->m:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_3

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lak/g;->f()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    :try_start_3
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_0
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v3, p0, Lak/g;->e:Lak/h;

    invoke-virtual {v3, v1, p0}, Lak/h;->a(Ljava/util/Vector;Lak/g;)V

    iget-object v3, p0, Lak/g;->e:Lak/h;

    iget-object v3, v3, Lak/h;->o:Ln/b;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ln/b;->a(Z)Z

    iget-object v3, p0, Lak/g;->e:Lak/h;

    invoke-static {v3}, Lak/h;->f(Lak/h;)V

    iget-object v3, p0, Lak/g;->e:Lak/h;

    iget-object v4, p0, Lak/g;->e:Lak/h;

    invoke-static {v4}, Lak/h;->e(Lak/h;)Lac/p;

    move-result-object v4

    invoke-interface {v4}, Lac/p;->b()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lak/h;->b(Lak/h;J)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lak/q; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_6
    invoke-direct {p0, v3}, Lak/g;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lak/g;->e:Lak/h;

    invoke-static {v3}, Lak/h;->a(Lak/h;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v4, p0, Lak/g;->e:Lak/h;

    invoke-static {v4}, Lak/h;->g(Lak/h;)I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lak/g;->e:Lak/h;

    invoke-static {v0}, Lak/h;->h(Lak/h;)I

    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lak/g;->e:Lak/h;

    invoke-static {v0}, Lak/h;->i(Lak/h;)I

    :cond_2
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-virtual {p0}, Lak/g;->c()V

    throw v1

    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1

    :catch_1
    move-exception v3

    iget-object v4, p0, Lak/g;->e:Lak/h;

    const/4 v5, 0x4

    invoke-static {v4, v5, v3}, Lak/h;->a(Lak/h;ILjava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v3

    iget-object v4, p0, Lak/g;->e:Lak/h;

    const/4 v5, 0x3

    invoke-static {v4, v5, v3}, Lak/h;->a(Lak/h;ILjava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v3

    iget-object v4, p0, Lak/g;->e:Lak/h;

    const/4 v5, 0x5

    invoke-static {v4, v5, v3}, Lak/h;->a(Lak/h;ILjava/lang/Throwable;)V

    const-string v4, "REQUEST"

    invoke-static {v4, v3}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_4
    move-exception v3

    invoke-static {}, Lac/i;->b()V

    iget-object v4, p0, Lak/g;->e:Lak/h;

    const/4 v5, 0x5

    invoke-static {v4, v5, v3}, Lak/h;->a(Lak/h;ILjava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lak/g;->e:Lak/h;

    invoke-static {v1}, Lak/h;->a(Lak/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_b
    iget-object v3, p0, Lak/g;->e:Lak/h;

    invoke-static {v3}, Lak/h;->g(Lak/h;)I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lak/g;->e:Lak/h;

    invoke-static {v0}, Lak/h;->h(Lak/h;)I

    :cond_4
    if-eqz v2, :cond_5

    iget-object v0, p0, Lak/g;->e:Lak/h;

    invoke-static {v0}, Lak/h;->i(Lak/h;)I

    :cond_5
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    invoke-virtual {p0}, Lak/g;->c()V

    return-void

    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    :catch_5
    move-exception v3

    goto/16 :goto_1
.end method
