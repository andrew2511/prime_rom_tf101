.class public final LW;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/util/Vector;

.field private c:Ljava/lang/Object;

.field private d:La;

.field private e:LS;

.field private f:[Ljava/lang/Thread;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(LS;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LW;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LW;->b:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LW;->c:Ljava/lang/Object;

    const/16 v0, 0x7f

    iput v0, p0, LW;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LW;->i:Z

    iput-object p1, p0, LW;->e:LS;

    iput-object p2, p0, LW;->g:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, LW;->f:[Ljava/lang/Thread;

    invoke-static {}, Lb;->a()Lb;

    move-result-object v0

    invoke-virtual {v0}, Lb;->h()La;

    move-result-object v0

    iput-object v0, p0, LW;->d:La;

    return-void
.end method

.method private d()Z
    .locals 4

    iget-object v0, p0, LW;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, LW;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LW;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, LW;->i:Z

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, LW;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX;

    invoke-virtual {v0}, LX;->i()J

    move-result-wide v0

    iget-object v2, p0, LW;->d:La;

    invoke-interface {v2}, La;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, LW;->c:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e()LV;
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, LW;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LW;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX;

    invoke-virtual {v0}, LX;->i()J

    move-result-wide v2

    iget-object v4, p0, LW;->d:La;

    invoke-interface {v4}, La;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, LW;->b:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p0, v0}, LW;->a(LV;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LW;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LW;->a:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LV;->a(I)V

    iget-object v1, p0, LW;->a:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, LW;->h:I

    return v0
.end method

.method final a(LU;)V
    .locals 2

    iget-object v0, p0, LW;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, LU;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit v0

    return-void

    :pswitch_1
    invoke-virtual {p1}, LU;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :pswitch_2
    const/4 v1, 0x4

    :try_start_1
    invoke-virtual {p1, v1}, LU;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method final a(LV;)V
    .locals 6

    iget-object v1, p0, LW;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, LV;->h()I

    move-result v2

    const/4 v0, 0x0

    iget-object v3, p0, LW;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    add-int v0, v4, v3

    div-int/lit8 v5, v0, 0x2

    iget-object v0, p0, LW;->a:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV;

    invoke-virtual {v0}, LV;->h()I

    move-result v0

    if-gt v2, v0, :cond_0

    add-int/lit8 v0, v5, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, LW;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LV;->a(I)V

    iget-object v0, p0, LW;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final a(LX;)V
    .locals 9

    iget-object v1, p0, LW;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, LX;->i()J

    move-result-wide v2

    const/4 v0, 0x0

    iget-object v4, p0, LW;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_1

    add-int v0, v5, v4

    div-int/lit8 v6, v0, 0x2

    iget-object v0, p0, LW;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX;

    invoke-virtual {v0}, LX;->i()J

    move-result-wide v7

    cmp-long v0, v2, v7

    if-ltz v0, :cond_0

    add-int/lit8 v0, v6, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    iget-object v0, p0, LW;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LX;->a(I)V

    iget-object v0, p0, LW;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(LU;)I
    .locals 2

    iget-object v0, p0, LW;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, LU;->c()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, LW;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LW;->i:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, LW;->i:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LW;->f:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LW;->f:[Ljava/lang/Thread;

    iget-object v3, p0, LW;->e:LS;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, LW;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, LS;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, LW;->f:[Ljava/lang/Thread;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final c()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, LW;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LW;->i:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, LW;->i:Z

    move v1, v3

    :goto_0
    iget-object v2, p0, LW;->f:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LW;->f:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LW;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method final c(LU;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LW;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, LU;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    monitor-exit v0

    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    :try_start_1
    iget-object v1, p0, LW;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LU;->a(I)V

    iget-object v1, p0, LW;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    move v0, v3

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, LW;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LU;->a(I)V

    iget-object v1, p0, LW;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    move v0, v3

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LU;->a(I)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, LW;->c:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, LV;->d()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, LV;->f()V

    :cond_1
    :goto_1
    invoke-direct {p0}, LW;->d()Z

    move-result v0

    if-nez v0, :cond_3

    monitor-exit v1

    return-void

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LV;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    invoke-direct {p0}, LW;->e()LV;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, LV;->g()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runtime exception thrown by task ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lac;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
