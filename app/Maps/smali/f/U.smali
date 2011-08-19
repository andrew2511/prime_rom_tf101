.class public Lf/U;
.super Ljava/lang/Object;

# interfaces
.implements LA/f;


# instance fields
.field private final a:Lf/K;

.field private final b:Ljava/util/Hashtable;

.field private c:Lk/l;

.field private d:J

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Lf/K;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lf/U;->e:J

    iput-object p1, p0, Lf/U;->a:Lf/K;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lf/U;->b:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/U;->f:Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-virtual {p0}, Lf/U;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lf/U;->e:J

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)Ljava/util/Hashtable;
    .locals 2

    const-wide/high16 v0, -0x8000

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lf/U;->d:J

    :goto_0
    iget-object v0, p0, Lf/U;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    return-object p0

    :cond_0
    iput-wide p2, p0, Lf/U;->d:J

    goto :goto_0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lf/U;->d:J

    return-void
.end method

.method public declared-synchronized a([BJ)V
    .locals 3

    monitor-enter p0

    const-wide/high16 v0, -0x8000

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lf/U;->d:J

    :goto_0
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lf/U;->c:Lk/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-wide p2, p0, Lf/U;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->w()Lk/i;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lk/i;->a([BII)Lk/l;

    move-result-object v0

    iput-object v0, p0, Lf/U;->c:Lk/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public a([Lcom/google/googlenav/layer/n;J)V
    .locals 1

    iget-object v0, p0, Lf/U;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/U;->f:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lf/U;->b([Lcom/google/googlenav/layer/n;J)V

    goto :goto_0
.end method

.method public declared-synchronized ap()LA/c;
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lf/U;->c:Lk/l;

    if-eqz v0, :cond_0

    new-instance v0, LA/c;

    const-string v2, "image"

    iget-object v3, p0, Lf/U;->c:Lk/l;

    invoke-interface {v3}, Lk/l;->a()I

    move-result v3

    invoke-direct {v0, v2, v3}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lf/U;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    move v3, v4

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->ap()LA/c;

    move-result-object v0

    iget v0, v0, LA/c;->b:I

    add-int/2addr v0, v3

    move v3, v0

    goto :goto_0

    :cond_2
    new-instance v0, LA/c;

    const-string v2, "cache"

    invoke-direct {v0, v2, v3}, LA/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-instance v2, LA/c;

    const-string v3, "LayerTile"

    invoke-direct {v2, v3, v0, v1}, LA/c;-><init>(Ljava/lang/String;ILjava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lf/U;->d:J

    return-wide v0
.end method

.method public declared-synchronized b(J)Lk/l;
    .locals 2

    monitor-enter p0

    const-wide/high16 v0, -0x8000

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lf/U;->d:J

    :goto_0
    iget-object v0, p0, Lf/U;->c:Lk/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iput-wide p1, p0, Lf/U;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b([Lcom/google/googlenav/layer/n;J)V
    .locals 11

    const/4 v9, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/high16 v0, -0x8000

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lf/U;->d:J

    :goto_1
    array-length v0, p1

    sub-int/2addr v0, v9

    move v2, v0

    :goto_2
    if-ltz v2, :cond_5

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/google/googlenav/layer/n;->g()[Lcom/google/googlenav/layer/c;

    move-result-object v4

    array-length v0, v4

    sub-int/2addr v0, v9

    move v5, v0

    :goto_3
    if-ltz v5, :cond_4

    aget-object v6, v4, v5

    iget-object v0, p0, Lf/U;->b:Ljava/util/Hashtable;

    invoke-virtual {v6}, Lcom/google/googlenav/layer/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v7, p0, Lf/U;->b:Ljava/util/Hashtable;

    invoke-virtual {v6}, Lcom/google/googlenav/layer/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_4
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/googlenav/bF;

    invoke-direct {v0, v6, v3}, Lcom/google/googlenav/bF;-><init>(Lcom/google/googlenav/layer/c;Lcom/google/googlenav/layer/n;)V

    iget-object v7, p0, Lf/U;->a:Lf/K;

    invoke-virtual {v7}, Lf/K;->e()Lf/l;

    move-result-object v7

    invoke-virtual {v7}, Lf/l;->a()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/googlenav/bF;->n(I)V

    invoke-virtual {v6}, Lcom/google/googlenav/layer/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_3

    :cond_2
    iput-wide p2, p0, Lf/U;->d:J

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/google/googlenav/layer/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/bF;

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_5
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lf/U;->e:J

    iput-boolean v9, p0, Lf/U;->f:Z

    goto/16 :goto_0
.end method

.method public c()Lf/K;
    .locals 1

    iget-object v0, p0, Lf/U;->a:Lf/K;

    return-object v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/U;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/U;->c:Lk/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/U;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lf/U;->f:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lf/U;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lf/U;->c:Lk/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
