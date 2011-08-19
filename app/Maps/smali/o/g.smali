.class public Lo/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/k;
.implements Ljava/lang/Runnable;
.implements Lo/bQ;


# instance fields
.field a:Ljava/util/Hashtable;

.field b:Ljava/util/Hashtable;

.field private final c:LT/a;

.field private d:Z

.field private volatile e:Z

.field private f:J

.field private g:Li/C;

.field private h:Z


# direct methods
.method public constructor <init>(LT/c;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lo/g;->d:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lo/g;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lo/g;->b:Ljava/util/Hashtable;

    new-instance v0, LT/a;

    invoke-direct {v0, p1, p0}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/g;->c:LT/a;

    iput-boolean v1, p0, Lo/g;->h:Z

    return-void
.end method

.method private b(J)V
    .locals 1

    iget-object v0, p0, Lo/g;->c:LT/a;

    invoke-virtual {v0}, LT/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/g;->c:LT/a;

    invoke-virtual {v0, p1, p2}, LT/a;->a(J)V

    iget-object v0, p0, Lo/g;->c:LT/a;

    invoke-virtual {v0, p1, p2}, LT/a;->c(J)V

    iget-object v0, p0, Lo/g;->c:LT/a;

    invoke-virtual {v0}, LT/a;->b()V

    :cond_0
    return-void
.end method

.method private c(J)V
    .locals 1

    invoke-direct {p0}, Lo/g;->j()V

    iget-boolean v0, p0, Lo/g;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/g;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lo/g;->b(J)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/g;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/g;->d:Z

    invoke-virtual {p0}, Lo/g;->a()V

    return-void
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v0

    iget-object v1, p0, Lo/g;->c:LT/a;

    invoke-virtual {v0, v1}, LT/c;->b(LT/b;)I

    return-void
.end method


# virtual methods
.method public R_()V
    .locals 0

    invoke-direct {p0}, Lo/g;->i()V

    return-void
.end method

.method public S_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/g;->d:Z

    invoke-direct {p0}, Lo/g;->j()V

    return-void
.end method

.method public a()V
    .locals 2

    iget-boolean v0, p0, Lo/g;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/g;->h:Z

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lo/K;

    invoke-direct {v1, p0}, Lo/K;-><init>(Lo/bQ;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lo/g;->f:J

    goto :goto_0
.end method

.method public declared-synchronized a(J)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/g;->a:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aI;

    iget-object v1, p0, Lo/g;->g:Li/C;

    invoke-virtual {v1}, Li/C;->B()Lo/aH;

    move-result-object v1

    invoke-virtual {v1}, Lo/aH;->d()Lo/U;

    move-result-object v1

    invoke-virtual {v1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/aI;->c()[J

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-wide v4, v0, v3

    cmp-long v4, v4, v1

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Long;

    aget-wide v5, v0, v3

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    iget-object v5, p0, Lo/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lo/g;->g:Li/C;

    invoke-virtual {v5}, Li/C;->B()Lo/aH;

    move-result-object v5

    invoke-virtual {v5, v4}, Lo/aH;->a(Ljava/lang/Long;)Lo/U;

    move-result-object v4

    if-eqz v4, :cond_0

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lo/U;->d(J)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/g;->a:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/g;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JLo/U;JJ)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/g;->g:Li/C;

    invoke-virtual {v0}, Li/C;->B()Lo/aH;

    move-result-object v0

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Lo/aI;

    invoke-direct {v2}, Lo/aI;-><init>()V

    invoke-virtual {v2, p1, p2}, Lo/aI;->a(J)V

    invoke-virtual {v2, v0, v1}, Lo/aI;->b(J)V

    const/4 v3, 0x2

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p3}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v0

    invoke-virtual {v2, v3}, Lo/aI;->a([J)V

    invoke-virtual {v2, p4, p5}, Lo/aI;->c(J)V

    invoke-virtual {v2, p6, p7}, Lo/aI;->d(J)V

    iget-object v0, p0, Lo/g;->b:Ljava/util/Hashtable;

    invoke-virtual {p3}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lo/g;->a:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p4, p5}, Lo/U;->d(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/g;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Li/C;)V
    .locals 0

    iput-object p1, p0, Lo/g;->g:Li/C;

    return-void
.end method

.method public declared-synchronized a([Lo/aI;)V
    .locals 11

    const-wide/16 v2, -0x1

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/g;->h:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Lo/g;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lo/g;->g:Li/C;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lo/g;->g:Li/C;

    invoke-virtual {v0}, Li/C;->B()Lo/aH;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Lo/g;->c(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const-wide/32 v2, 0x1b7740

    :try_start_2
    invoke-direct {p0, v2, v3}, Lo/g;->c(J)V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move v4, v10

    :goto_2
    array-length v5, p1

    if-ge v4, v5, :cond_5

    aget-object v5, p1, v4

    invoke-virtual {v5}, Lo/aI;->b()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lo/aI;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Lo/U;->e(J)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v10

    :goto_3
    invoke-virtual {v5}, Lo/aI;->c()[J

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_3

    new-instance v7, Ljava/lang/Long;

    invoke-virtual {v5}, Lo/aI;->c()[J

    move-result-object v8

    aget-wide v8, v8, v6

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    new-instance v6, Ljava/lang/Long;

    invoke-virtual {v5}, Lo/aI;->a()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    iput-object v3, p0, Lo/g;->b:Ljava/util/Hashtable;

    iput-object v2, p0, Lo/g;->a:Ljava/util/Hashtable;

    iget-object v0, p0, Lo/g;->g:Li/C;

    invoke-virtual {v0}, Li/C;->B()Lo/aH;

    move-result-object v1

    move v2, v10

    :goto_4
    invoke-virtual {v1}, Lo/aH;->b()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Lo/aH;->a(I)Lo/U;

    move-result-object v3

    iget-object v0, p0, Lo/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aI;

    invoke-virtual {v0}, Lo/aI;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lo/U;->d(J)V

    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_6
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lo/U;->d(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :cond_7
    move-wide v0, v2

    goto/16 :goto_1
.end method

.method public declared-synchronized a(Ljava/lang/Long;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public an_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/g;->e:Z

    invoke-direct {p0}, Lo/g;->j()V

    return-void
.end method

.method public ao_()V
    .locals 0

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/Long;)Lo/aI;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Lo/g;->c(J)V

    return-void
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/g;->d:Z

    invoke-static {}, Lo/aF;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/g;->e:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Lo/g;->b(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lo/g;->i()V

    goto :goto_0
.end method

.method public declared-synchronized h()Lac/s;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v1, Lac/s;

    iget-object v0, p0, Lo/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lac/s;-><init>(I)V

    iget-object v0, p0, Lo/g;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lac/s;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-object v1
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lo/g;->j()V

    invoke-virtual {p0}, Lo/g;->a()V

    return-void
.end method
