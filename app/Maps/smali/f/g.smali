.class Lf/g;
.super Lak/m;


# instance fields
.field final synthetic a:Lf/x;

.field private b:Z

.field private final c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lf/x;)V
    .locals 1

    iput-object p1, p0, Lf/g;->a:Lf/x;

    invoke-direct {p0}, Lak/m;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lf/g;->c:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/g;->b:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public a(Law/e;)V
    .locals 8

    const/16 v7, 0xd

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Law/e;->i(I)I

    move-result v0

    sub-int/2addr v0, v6

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v6, v0}, Law/e;->e(II)Law/e;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7}, Law/e;->i(I)I

    move-result v3

    new-array v4, v3, [Law/e;

    sub-int/2addr v3, v6

    :goto_1
    if-ltz v3, :cond_0

    invoke-virtual {v1, v7, v3}, Law/e;->e(II)Law/e;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lf/g;->a:Lf/x;

    invoke-virtual {v1, v2, v4}, Lf/x;->a(Ljava/lang/String;[Law/e;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Law/e;ZI)V
    .locals 8

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Law/e;->d(I)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v7}, Law/e;->d(I)I

    move-result v2

    invoke-virtual {v0, v6}, Law/e;->d(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Law/e;->d(I)I

    move-result v0

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lf/K;->a(BIILf/l;)Lf/K;

    move-result-object v1

    invoke-virtual {p1, v6}, Law/e;->i(I)I

    move-result v0

    new-array v2, v0, [Lcom/google/googlenav/layer/n;

    sub-int/2addr v0, v5

    :goto_0
    if-ltz v0, :cond_0

    new-instance v3, Lcom/google/googlenav/layer/n;

    invoke-virtual {p1, v6, v0}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/layer/n;-><init>(Law/e;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/g;->a:Lf/x;

    invoke-static {v0}, Lf/x;->b(Lf/x;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/U;

    if-nez v0, :cond_4

    new-instance v0, Lf/U;

    invoke-direct {v0, v1}, Lf/U;-><init>(Lf/K;)V

    :cond_1
    :goto_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    invoke-virtual {v3}, Lac/m;->p()Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->b()J

    move-result-wide v3

    int-to-long v5, p3

    add-long/2addr v3, v5

    invoke-virtual {v0}, Lf/U;->e()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_5

    :cond_2
    invoke-virtual {v0, v2, v3, v4}, Lf/U;->a([Lcom/google/googlenav/layer/n;J)V

    :goto_2
    invoke-virtual {p1, v7}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v7}, Law/e;->c(I)[B

    move-result-object v2

    invoke-virtual {v0, v2, v3, v4}, Lf/U;->a([BJ)V

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lf/g;->a:Lf/x;

    invoke-static {v2}, Lf/x;->c(Lf/x;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lf/g;->a:Lf/x;

    invoke-static {v0}, Lf/x;->b(Lf/x;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lf/g;->a:Lf/x;

    invoke-virtual {v0}, Lf/x;->c()V

    return-void

    :cond_4
    invoke-virtual {v0}, Lf/U;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Lf/U;

    invoke-direct {v0, v1}, Lf/U;-><init>(Lf/K;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v2, v3, v4}, Lf/U;->b([Lcom/google/googlenav/layer/n;J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Lf/U;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf/g;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Adding tiles to closed request!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/g;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lf/g;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 11

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lf/g;->b:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Law/e;

    sget-object v0, Ls/t;->i:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    const/16 v0, 0x100

    invoke-virtual {v1, v9, v0}, Law/e;->h(II)V

    const/4 v0, 0x0

    iget-object v2, p0, Lf/g;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move v3, v0

    move v4, v9

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v0, p0, Lf/g;->c:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/U;

    invoke-virtual {v0}, Lf/U;->c()Lf/K;

    move-result-object v0

    invoke-virtual {v0}, Lf/K;->e()Lf/l;

    move-result-object v4

    invoke-virtual {v4}, Lf/l;->a()I

    move-result v4

    new-instance v5, Law/e;

    sget-object v6, Ls/P;->i:Law/f;

    invoke-direct {v5, v6}, Law/e;-><init>(Law/f;)V

    const/16 v6, 0x8

    invoke-virtual {v5, v9, v6}, Law/e;->h(II)V

    invoke-virtual {v0}, Lf/K;->c()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Law/e;->h(II)V

    invoke-virtual {v0}, Lf/K;->d()I

    move-result v0

    invoke-virtual {v5, v7, v0}, Law/e;->h(II)V

    const/4 v0, 0x4

    invoke-virtual {v5, v0, v4}, Law/e;->h(II)V

    invoke-virtual {v1, v7, v5}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lf/g;->a:Lf/x;

    invoke-static {v0}, Lf/x;->a(Lf/x;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    iget-object v0, p0, Lf/g;->a:Lf/x;

    invoke-static {v0}, Lf/x;->a(Lf/x;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/T;

    invoke-interface {v0}, Lf/T;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    new-instance v3, Law/e;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Law/e;-><init>(Law/f;)V

    const/16 v5, 0x15

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->e()[Law/e;

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v6, v5

    sub-int/2addr v6, v9

    :goto_2
    if-ltz v6, :cond_1

    const/16 v7, 0x16

    aget-object v8, v5, v6

    invoke-virtual {v3, v7, v8}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v4}, Lcom/google/googlenav/layer/s;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v10, v3}, Law/e;->a(ILaw/e;)V

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_3
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-static {p1}, Law/b;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Law/e;

    invoke-direct {v1, v6}, Law/e;-><init>(Law/f;)V

    sget-object v2, Ls/t;->k:Law/f;

    invoke-static {v2, v0, v1}, Law/b;->a(Law/f;Ljava/io/InputStream;Law/e;)I

    invoke-virtual {p0, v1}, Lf/g;->a(Law/e;)V

    const/4 v1, 0x0

    :cond_0
    new-instance v2, Law/e;

    invoke-direct {v2, v6}, Law/e;-><init>(Law/f;)V

    sget-object v3, Ls/t;->k:Law/f;

    invoke-static {v3, v0, v2}, Law/b;->a(Law/f;Ljava/io/InputStream;Law/e;)I

    move-result v3

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, v2, v5, v1}, Lf/g;->a(Law/e;ZI)V

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return v5
.end method
